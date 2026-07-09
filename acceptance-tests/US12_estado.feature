Feature: Estado emocional

Scenario: Registrar estado emocional

Given que el usuario inicia una sesión
When selecciona su estado emocional
Then el sistema registra la información

Scenario: Consultar estado emocional

Given que existe un estado registrado
When el usuario consulta su perfil
Then el sistema muestra el último estado registrado
