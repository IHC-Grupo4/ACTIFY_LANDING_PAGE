Feature: Nivel de energía

Scenario: Registrar nivel de energía

Given que el usuario inicia una sesión
When selecciona su nivel de energía
Then el sistema guarda la información

Scenario: Adaptar microacciones

Given que existe un nivel de energía registrado
When el sistema genera un plan
Then adapta las microacciones al nivel indicado
