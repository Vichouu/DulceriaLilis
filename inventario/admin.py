from django.contrib import admin
from .models import Categoria, Producto, Lote

@admin.register(Categoria)
class CategoriaAdmin(admin.ModelAdmin):
    list_display = ['id', 'nombre']
    search_fields = ['nombre']
    ordering = ['nombre']

@admin.register(Producto)
class ProductoAdmin(admin.ModelAdmin):
    list_display = ['id', 'nombre', 'categoria', 'unidad', 'precio', 'stock_minimo', 'creado']
    search_fields = ['nombre', 'categoria__nombre']
    list_filter = ['categoria', 'unidad']
    ordering = ['nombre']

@admin.register(Lote)
class LoteAdmin(admin.ModelAdmin):
    list_display = ['id', 'codigo', 'producto', 'cantidad', 'fecha_vencimiento', 'ubicacion', 'creado']
    search_fields = ['codigo', 'producto__nombre', 'ubicacion']
    list_filter = ['fecha_vencimiento', 'producto']
    date_hierarchy = 'fecha_vencimiento'
    ordering = ['fecha_vencimiento', 'codigo']

admin.site.site_header = "Administrador Dulcería Lilis"
admin.site.site_title = "Dulcería Lilis"
admin.site.index_title = "Panel de Control"
