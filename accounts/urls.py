from django.urls import path
from django.contrib.auth.views import LoginView, LogoutView

urlpatterns = [
    # Login
    path('login/', LoginView.as_view(
        template_name='Sitio/login.html',
        redirect_authenticated_user=True  # Si ya está autenticado, redirige al dashboard
    ), name='login'),
    
    # Logout
    path('logout/', LogoutView.as_view(), name='logout'),
]