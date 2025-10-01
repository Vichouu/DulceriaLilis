from django.urls import path
from . import views

urlpatterns = [
    path('', views.home, name='home'),
    path('catalogo/<str:categoria>/', views.categoria_view, name='categoria'),
    path('catalogo/<str:categoria>/<slug:slug>/', views.producto_view, name='producto'),
    path('empresa/', views.empresa_view, name='empresa'),
]
