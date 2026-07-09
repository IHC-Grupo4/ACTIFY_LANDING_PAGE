Feature: Búsqueda de tareas

Scenario: Buscar una tarea

Given que existen tareas registradas
When el usuario realiza una búsqueda
Then el sistema muestra los resultados encontrados

Scenario: Filtrar tareas

Given que existen varias tareas
When el usuario aplica un filtro
Then el sistema muestra las tareas correspondientes
