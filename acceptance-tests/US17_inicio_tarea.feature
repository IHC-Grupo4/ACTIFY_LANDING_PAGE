Feature: Inicio de tarea

Scenario: Iniciar tarea

Given que existe una tarea seleccionada
When el usuario decide comenzar
Then el sistema cambia el estado a En progreso

Scenario: Registrar inicio

Given que el usuario inició la tarea
When el sistema guarda la información
Then registra la fecha y hora de inicio
