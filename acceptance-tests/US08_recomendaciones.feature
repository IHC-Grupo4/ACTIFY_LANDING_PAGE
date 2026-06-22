Feature: Recomendaciones personalizadas

Scenario: Generar recomendaciones según hábitos

Given que el sistema dispone de información sobre hábitos del usuario
When el usuario solicita ayuda para iniciar una tarea
Then el sistema genera recomendaciones personalizadas

Scenario: Actualización de recomendaciones

Given que los hábitos del usuario han cambiado
When el sistema analiza nueva información
Then adapta las recomendaciones mostradas
