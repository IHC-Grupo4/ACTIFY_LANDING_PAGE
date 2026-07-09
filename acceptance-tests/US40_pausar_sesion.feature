Feature: Pausar sesión de enfoque

Scenario: Pausar una sesión

Given que existe una sesión en progreso
When el usuario presiona pausar
Then el sistema detiene el temporizador

Scenario: Reanudar sesión

Given que la sesión está pausada
When el usuario selecciona continuar
Then el sistema reanuda el temporizador
