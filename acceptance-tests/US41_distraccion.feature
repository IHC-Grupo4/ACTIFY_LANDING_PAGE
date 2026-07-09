Feature: Registro de distracciones

Scenario: Registrar una distracción

Given que existe una sesión activa
When el usuario registra una distracción
Then el sistema guarda la información

Scenario: Consultar distracciones

Given que existen distracciones registradas
When el usuario consulta el historial
Then el sistema muestra el listado
