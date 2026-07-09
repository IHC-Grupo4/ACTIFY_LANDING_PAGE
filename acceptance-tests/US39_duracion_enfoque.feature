Feature: Duración de la sesión de enfoque

Scenario: Seleccionar duración

Given que el usuario inicia una sesión de enfoque
When selecciona una duración
Then el sistema configura el temporizador

Scenario: Visualizar tiempo seleccionado

Given que existe una duración configurada
When inicia la sesión
Then el sistema muestra el tiempo restante
