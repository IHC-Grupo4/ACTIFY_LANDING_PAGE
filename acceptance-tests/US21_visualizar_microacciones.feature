Feature: Visualización de microacciones

Scenario: Consultar lista de microacciones

Given que existe un plan de microacciones
When el usuario accede a la lista
Then el sistema muestra todas las microacciones

Scenario: Visualizar detalles de una microacción

Given que existen microacciones registradas
When el usuario selecciona una microacción
Then el sistema muestra su información
