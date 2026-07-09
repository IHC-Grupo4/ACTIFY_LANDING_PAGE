Feature: Detalle de tareas

Scenario: Consultar información de una tarea

Given que existe una tarea registrada
When el usuario la selecciona
Then el sistema muestra toda su información

Scenario: Visualizar descripción

Given que la tarea contiene una descripción
When el usuario consulta el detalle
Then el sistema muestra la descripción completa
