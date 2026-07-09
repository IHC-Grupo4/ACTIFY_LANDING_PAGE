Feature: Reflexión del usuario

Scenario: Registrar una reflexión

Given que el usuario finalizó una tarea
When escribe una reflexión
Then el sistema guarda la información

Scenario: Consultar reflexiones

Given que existen reflexiones registradas
When el usuario consulta el historial
Then el sistema muestra las reflexiones
