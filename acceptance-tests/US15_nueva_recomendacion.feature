Feature: Nuevas recomendaciones

Scenario: Solicitar otra recomendación

Given que el usuario recibió una recomendación
When solicita una nueva opción
Then el sistema genera otra recomendación

Scenario: Visualizar nueva recomendación

Given que existe una nueva recomendación
When el usuario la consulta
Then el sistema muestra la información correspondiente
