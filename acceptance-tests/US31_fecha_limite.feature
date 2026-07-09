Feature: Fecha límite

Scenario: Asignar fecha límite

Given que existe una tarea
When el usuario registra una fecha límite
Then el sistema guarda la información

Scenario: Consultar fecha límite

Given que la tarea tiene una fecha registrada
When el usuario consulta la tarea
Then el sistema muestra la fecha límite
