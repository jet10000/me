# django.contrib.postgres.search

因为对中文分词不好，暂时无法有效使用。

```python
from functools import reduce

from django.contrib.postgres.search import SearchVector, SearchQuery, SearchRank, SearchHeadline, TrigramSimilarity
from django.core.management.base import BaseCommand
from django.db.models import Q
from django.db.models.sql import AND

from ml.models import Tw, Jf


class Command(BaseCommand):
    help = 'test search'

    def handle(self, *args, **options):
        tws0 = Tw.objects.filter(content__search='脉浮 or 汗出')
        # tws1 = Tw.objects.annotate(search=SearchVector('content', 'footnote')).filter(search='脉浮 -汗出')

        # query = SearchQuery("脉浮 汗出", search_type='websearch')
        # tws2 = Tw.objects.annotate(search2=SearchVector('content', 'footnote'),
        #                            headline1=SearchHeadline('content', query, start_sel='<span>',
        #                                                     stop_sel='</span>')).filter(search2=query)
        # vector = SearchVector('content')
        # query = SearchQuery('脉浮')
        # tws3 = Tw.objects.annotate(rank=SearchRank(vector, query)).order_by('-rank')
        print(len(tws0), tws0)
        # print(len(tws1), tws1)
        # print(len(tws2), tws2)
        # print(len(tws3), tws3)

        # for tw2 in tws2:
        #     print(tw2.headline1)

        # jfs0 = Jf.objects.filter(prescription__search='桂枝')
        # jfs1 = Jf.objects.filter(prescription__icontains='桂枝')
        # jfs2 = Jf.objects.annotate(search=SearchVector('prescription', 'usage')).filter(search='桂枝')
        #
        # query2 = SearchQuery('甘草', search_type='websearch')
        # jfs = Jf.objects.annotate(search2=SearchVector('name', config='english'),
        #                           h_prescription=SearchHeadline('name', query2, start_sel='<span>',
        #                                                         stop_sel='</span>')).filter(search2=query2)
        # print(len(jfs0), jfs0)
        # print(len(jfs1), jfs1)
        # print(len(jfs2), jfs2)
        # print(len(jfs), jfs)
        # for jf in jfs:
        #     print(jf.h_prescription)

        # test_query = '桂枝'
        # test_jfs = Jf.objects.annotate(
        #     similarity=TrigramSimilarity('name', test_query),
        # ).filter(similarity__gt=0.3).order_by('-similarity')
        #
        # print(len(test_jfs), test_jfs)

        # query11 = SearchQuery('少阴病 手足寒', search_type='websearch')
        # test_tws = Tw.objects.annotate(headline1=SearchHeadline('content', query11, start_sel='<span>',
        #                                                         stop_sel='</span>')).filter(content__icontains='少阴病')
        # print(len(test_tws), test_tws)
        # for tw in test_tws:
        #     print(tw.headline1)
        # print(query11)
        
        # 全文检索最大的问题是`SELECT to_tsvector('桂枝汤'); `，也就是django的SearchVector无法分词。
        # 就算分词，又无法精确匹配。作为伤寒论这种古文，精确更重要。

        q = '汗 '
        q_list = filter(None, q.split(' '))
        print(q_list)
        s = reduce(lambda q1, q2: q1 & q2, [Q(content__contains=t) for t in q_list])
        print(s)
        tw_list = Tw.objects.filter(s)
        print(len(tw_list), tw_list)

        # 以下是通过手动拆分用户输入的字符串进行contains形式的检索。正则匹配拆分搜索词比较麻烦。
        
        # 从postgreql的websearch_to_tsquery学习而来。也就是django的searchQuery('少阴病 手足寒', search_type='websearch')
        
        # websearch_to_tsquery使用另一种语法创建一个tsquery值querytext，其中简单的无格式文本是有效的查询。与plainto_tsqueryand不同phraseto_tsquery，它还可以识别某些运算符。此外，此函数永远不会引发语法错误，这使得使用原始用户提供的输入进行搜索成为可能。支持以下语法：
        # unquoted
        # text: 不在引号内的文本将被转换为由 & 运算符分隔的术语，就像由.处理一样plainto_tsquery。
        # "quoted text": 引号内的文本将被转换为由 <->运算符分隔的术语，就像由.处理一样phraseto_tsquery。
        # OR：单词“或”将被转换为 | 运算符。
        # -：破折号将转换为!运算符。
        # https://www.postgresql.org/docs/current/textsearch-controls.html

        ss = '汗 or 渴 or 咳 桂枝 -热'
        # 1,提取or，先把or连起来，空格区分and和exclude。2，提取and。3，提取exclude。
        ll = ss.replace(' or ', '_or_').split(' ')
        print(ll)
        or_and_or_list = list(filter(lambda k: '_or_' in k, ll))
        print(or_and_or_list)
        q_or_list = []
        for x in or_and_or_list:
            or_list = x.split('_or_')
            print(or_list, 'or')
            s = reduce(lambda q1, q2: q1 | q2, [Q(content__contains=k) for k in or_list])
            print(s)
            q_or_list.append(s)
            qs = Tw.objects.filter(s)
            print(len(qs), qs)
        print(q_or_list)
        sx = reduce(lambda q1, q2: q1 & q2, q_or_list)
        print(sx)
        qs0 = Tw.objects.filter(sx)
        print(len(qs0), qs0)

        and_list = list(filter(lambda k: '_or_' not in k and not k.startswith('-'), ll))
        print(and_list)
        s1 = reduce(lambda q1, q2: q1 & q2, [Q(content__contains=k) for k in and_list])
        print(s1)
        qs1 = Tw.objects.filter(sx).filter(s1)
        print(len(qs1), qs1)

        exclude_list = list(filter(lambda k: k.startswith('-'), ll))
        print(exclude_list)
        s2 = reduce(lambda q1, q2: q1 & q2, [Q(content__contains=k.replace('-', '')) for k in exclude_list])
        print(s2)
        qs2 = Tw.objects.filter(sx).filter(s1).exclude(s2)
        print(len(qs2), qs2)

        self.stdout.write(self.style.SUCCESS('Successfully'))

```
