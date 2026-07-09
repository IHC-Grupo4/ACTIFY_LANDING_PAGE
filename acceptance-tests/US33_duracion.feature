Feature: Duración estimada

Scenario: Registrar duración

Given que existe una tarea
When el usuario registra una duración estimada
Then el sistema almacena la información

Scenario: Consultar duración

Given que la tarea tiene una duración registrada
When el usuario consulta la información
Then el sistema muestra la duración estimada
