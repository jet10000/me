models.py
```python
class FoldedItem(OrderedModel):
    description = models.TextField(blank=True)
    folder = models.ForeignKey(Folder, on_delete=models.CASCADE)
    # Content-object field
    content_type = models.ForeignKey(ContentType,
                                     verbose_name='content type',
                                     related_name="content_type_set_for_%(class)s",
                                     on_delete=models.CASCADE)
    object_pk = models.CharField('object ID', db_index=True, max_length=64)  # 可能有uuid等
    content_object = GenericForeignKey(ct_field="content_type", fk_field="object_pk")

    def __str__(self):
        return self.description
```

admin.py
```python
@admin.register(ContentType)
class ContentTypeAdmin(admin.ModelAdmin):
    """注册后可以使用raw_id_fields进行检索查询"""
    pass


@admin.register(FoldedItem)
class FoldedItemAdmin(admin.ModelAdmin):
    fieldsets = (
        (
            _('Content Object'),
            {'fields': ('content_type', 'object_pk',)}
        ),
        (
            _('Folded'),
            {'fields': ('description', 'folder',)}
        ),
    )

    list_display = ('content_type', 'object_pk', 'description')
    raw_id_fields = ('folder', 'content_type',)
    search_fields = ('description',)
```
