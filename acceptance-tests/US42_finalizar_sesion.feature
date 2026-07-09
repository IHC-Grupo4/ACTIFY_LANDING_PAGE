Feature: Finalizar sesión de enfoque

Scenario: Finalizar sesión

Given que existe una sesión activa
When el usuario selecciona finalizar
Then el sistema registra el tiempo trabajado

Scenario: Mostrar resumen

Given que la sesión finalizó
When el usuario consulta el resultado
Then el sistema muestra el resumen de la sesión
