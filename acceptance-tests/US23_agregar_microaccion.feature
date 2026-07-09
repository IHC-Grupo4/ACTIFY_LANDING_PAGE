Feature: Agregar microacciones

Scenario: Crear una microacción

Given que el usuario tiene un plan activo
When agrega una nueva microacción
Then el sistema la registra correctamente

Scenario: Visualizar nueva microacción

Given que la microacción fue creada
When el usuario consulta la lista
Then el sistema muestra la nueva microacción
