Feature: Tiempo disponible

Scenario: Registrar tiempo disponible

Given que el usuario desea iniciar una actividad
When indica el tiempo disponible
Then el sistema guarda la información

Scenario: Adaptar recomendaciones

Given que existe un tiempo registrado
When el sistema genera recomendaciones
Then adapta las sugerencias al tiempo disponible
