models.py
```python
from django.contrib.contenttypes.models import ContentType
from django.db import models
from ordered_model.models import OrderedModel, OrderedModelQuerySet, OrderedModelBase
from tree_queries.models import TreeNode
from tree_queries.query import TreeQuerySet


class OrderedTreeNodeModelQuerySet(OrderedModelQuerySet, TreeQuerySet):
    pass


class OrderedTreeNodeModel(TreeNode, OrderedModelBase):
    id = models.AutoField(primary_key=True)
    position = models.PositiveIntegerField(editable=False, db_index=True)
    name = models.CharField(max_length=100)
    description = models.TextField(blank=True, verbose_name='描述')

    order_field_name = "position"

    objects = OrderedTreeNodeModelQuerySet.as_manager(with_tree_fields=True)

    class Meta:
        abstract = True
        ordering = ("position",)

    def __str__(self):
        depth = getattr(self, "tree_depth", 0)
        return "{}{} {}".format("".join(["--- "] * depth), '📁', self.name)


class Folder(OrderedTreeNodeModel):
    pass
```

admin.py
```python
from django.contrib import admin
from ordered_model.admin import OrderedModelAdmin

from rootfs.models import Folder


@admin.register(Folder)
class FolderAdmin(OrderedModelAdmin):
    list_display = ("__str__", "move_up_down_links", "position")
    search_fields = ('name',)
    actions = ['move_selected2last_below', 'move_selected2last_above', 'move_selected2first_below',
               'move_selected2first_above']

    @admin.action(description='Move Selected to Last Below')
    def move_selected2last_below(self, request, queryset):
        ids = list(queryset.values_list('id', flat=True))
        print(ids)
        # for i in ids:
        #     BzFolder.objects.get(id=i).to(11)  # position
        # m2o
        target_obj = Folder.objects.get(id=ids[-1])
        for i in ids[:-1]:
            Folder.objects.get(id=i).below(target_obj)

    @admin.action(description='Move Selected to Last Above')
    def move_selected2last_above(self, request, queryset):
        ids = list(queryset.values_list('id', flat=True))
        print(ids)
        target_obj = Folder.objects.get(id=ids[-1])
        for i in ids[:-1]:
            Folder.objects.get(id=i).above(target_obj)

    @admin.action(description='Move Selected to First Below')
    def move_selected2first_below(self, request, queryset):
        ids = list(queryset.values_list('id', flat=True))
        print(ids)
        target_obj = Folder.objects.get(id=ids[0])
        for i in [ele for ele in reversed(ids[1:])]:
            Folder.objects.get(id=i).below(target_obj)

    @admin.action(description='Move Selected to First Above')
    def move_selected2first_above(self, request, queryset):
        ids = list(queryset.values_list('id', flat=True))
        print(ids)
        target_obj = Folder.objects.get(id=ids[0])
        for i in [ele for ele in reversed(ids[1:])]:
            Folder.objects.get(id=i).above(target_obj)
```
