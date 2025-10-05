from django.contrib import admin
from .models import Cargo, Departamento, Empleado


# --- Inlines (empleados dentro de Departamento / Cargo) ---
class EmpleadoInlinePorDepartamento(admin.TabularInline):
    model = Empleado
    extra = 0
    # Ojo: como el padre es Departamento, NO incluimos 'departamento' en fields
    fields = ('run', 'nombre', 'paterno', 'materno', 'sexo',
              'codigoEmpleado', 'sueldo', 'cargo', 'fechNac', 'creado')
    readonly_fields = ('creado',)

class EmpleadoInlinePorCargo(admin.TabularInline):
    model = Empleado
    extra = 0
    # Ojo: como el padre es Cargo, NO incluimos 'cargo' en fields
    fields = ('run', 'nombre', 'paterno', 'materno', 'sexo',
              'codigoEmpleado', 'sueldo', 'departamento', 'fechNac', 'creado')
    readonly_fields = ('creado',)


@admin.register(Departamento)
class DepartamentoAdmin(admin.ModelAdmin):
    list_display = ('codigo', 'nombre', 'creado')
    search_fields = ('nombre',)
    date_hierarchy = 'creado'
    readonly_fields = ('creado',)
    inlines = [EmpleadoInlinePorDepartamento]
    list_per_page = 25


@admin.register(Cargo)
class CargoAdmin(admin.ModelAdmin):
    list_display = ('id', 'nombre', 'creado')
    search_fields = ('nombre',)
    date_hierarchy = 'creado'
    readonly_fields = ('creado',)
    inlines = [EmpleadoInlinePorCargo]
    list_per_page = 25


@admin.register(Empleado)
class EmpleadoAdmin(admin.ModelAdmin):
    # Lo que ves en la tabla
    list_display = (
        'run', 'nombre', 'paterno', 'materno', 'sexo',
        'codigoEmpleado', 'sueldo', 'cargo', 'departamento', 'fechNac', 'creado'
    )
    # Filtros y búsqueda
    list_filter = ('sexo', 'cargo', 'departamento')
    search_fields = ('run', 'nombre', 'paterno', 'materno', 'codigoEmpleado')
    # Orden y navegación temporal
    ordering = ('nombre', 'paterno', 'materno')
    date_hierarchy = 'creado'
    # Campos de solo lectura
    readonly_fields = ('creado',)
    list_per_page = 25

    # Formulario de edición, usando TUS nombres EXACTOS (fechNac, codigoEmpleado, etc.)
    fieldsets = (
        ('Identificación', {
            'fields': ('run', 'nombre', 'paterno', 'materno', 'sexo')
        }),
        ('Datos laborales', {
            'fields': ('codigoEmpleado', 'sueldo', 'cargo', 'departamento')
        }),
        ('Fechas y sistema', {
            'fields': ('fechNac', 'creado')
        }),
    )
