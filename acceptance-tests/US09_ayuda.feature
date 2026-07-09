Feature: Solicitud de ayuda

Scenario: Solicitar ayuda inmediata

Given que el usuario necesita apoyo
When selecciona la opción de ayuda
Then el sistema inicia la asistencia personalizada

Scenario: Mostrar sugerencias

Given que el usuario solicitó ayuda
When el sistema analiza la información
Then muestra recomendaciones para continuar
