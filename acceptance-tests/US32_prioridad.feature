Feature: Prioridad de tareas

Scenario: Asignar prioridad

Given que existe una tarea registrada
When el usuario selecciona una prioridad
Then el sistema guarda la prioridad

Scenario: Visualizar prioridad

Given que la tarea tiene una prioridad
When el usuario consulta la información
Then el sistema muestra el nivel de prioridad
