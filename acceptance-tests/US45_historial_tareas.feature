Feature: Historial de tareas

Scenario: Consultar historial

Given que existen tareas finalizadas
When el usuario abre el historial
Then el sistema muestra las tareas registradas

Scenario: Filtrar historial

Given que existe un historial de tareas
When el usuario aplica un filtro
Then el sistema muestra los resultados correspondientes
