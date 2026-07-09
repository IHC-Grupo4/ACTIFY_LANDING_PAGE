Feature: Registro de tareas

Scenario: Crear una nueva tarea

Given que el usuario accede al módulo de tareas
When registra una nueva tarea
Then el sistema la almacena correctamente

Scenario: Visualizar tarea registrada

Given que la tarea fue creada
When el usuario consulta la lista
Then el sistema muestra la nueva tarea
