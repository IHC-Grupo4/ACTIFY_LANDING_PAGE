Feature: Regeneración del plan

Scenario: Solicitar un nuevo plan

Given que existe un plan generado
When el usuario solicita uno nuevo
Then el sistema crea un nuevo plan

Scenario: Visualizar plan actualizado

Given que el plan fue regenerado
When el usuario consulta las microacciones
Then el sistema muestra el nuevo contenido
