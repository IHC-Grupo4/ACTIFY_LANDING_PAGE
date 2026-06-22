Feature: Generación de microacciones

Scenario: Recibir una microacción para iniciar una tarea

Given que el usuario selecciona una tarea compleja
When solicita ayuda para comenzar
Then el sistema propone una acción simple y rápida

Scenario: Generar varias microacciones

Given que el usuario tiene una tarea extensa
When solicita alternativas para empezar
Then el sistema muestra diferentes microacciones
