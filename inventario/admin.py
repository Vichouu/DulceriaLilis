from django.contrib import admin
from .models import Producto, Lote

@admin.register(Producto)
class ProductoAdmin(admin.ModelAdmin):
    # columnas visibles
    list_display = ['id', 'nombre', 'unidad', 'precio', 'stock_minimo', 'creado']
    # búsqueda por texto
    search_fields = ['nombre']
    # filtros laterales
    list_filter = ['unidad']
    # orden de la tabla en admin
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