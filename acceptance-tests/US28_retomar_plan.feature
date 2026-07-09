Feature: Reanudar plan

Scenario: Retomar plan guardado

Given que existe un plan guardado
When el usuario vuelve a ingresar
Then el sistema recupera el progreso

Scenario: Continuar actividad

Given que el progreso fue restaurado
When el usuario continúa el plan
Then el sistema mantiene la información registrada
