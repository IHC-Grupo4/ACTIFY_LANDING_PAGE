Feature: Sesiones de enfoque

Scenario: Activar sesión de enfoque

Given que el usuario desea concentrarse
When presiona el botón "Iniciar sesión de enfoque"
Then el sistema inicia el temporizador de concentración

Scenario: Finalizar sesión de enfoque

Given que existe una sesión de enfoque activa
When el tiempo programado finaliza
Then el sistema notifica la culminación de la sesión
