Feature: Siguiente paso

Scenario: Mostrar siguiente microacción

Given que el usuario completó una microacción
When consulta el plan
Then el sistema resalta el siguiente paso

Scenario: Continuar con el plan

Given que existe una siguiente microacción
When el usuario continúa
Then el sistema muestra la actividad correspondiente
