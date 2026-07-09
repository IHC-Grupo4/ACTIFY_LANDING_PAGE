Feature: Historial de sesiones

Scenario: Consultar sesiones realizadas

Given que existen sesiones registradas
When el usuario consulta el historial
Then el sistema muestra las sesiones realizadas

Scenario: Visualizar detalles

Given que existe una sesión registrada
When el usuario la selecciona
Then el sistema muestra su información
