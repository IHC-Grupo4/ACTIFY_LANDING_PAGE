Feature: Registro del motivo del bloqueo

Scenario: Registrar bloqueo

Given que el usuario presenta dificultades
When escribe el motivo del bloqueo
Then el sistema guarda la información

Scenario: Consultar bloqueo registrado

Given que existe un bloqueo registrado
When el usuario revisa el historial
Then el sistema muestra el motivo almacenado
