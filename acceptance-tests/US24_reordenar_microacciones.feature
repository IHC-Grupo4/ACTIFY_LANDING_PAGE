Feature: Organización de microacciones

Scenario: Reordenar microacciones

Given que existen varias microacciones
When el usuario cambia el orden
Then el sistema actualiza la lista

Scenario: Guardar nuevo orden

Given que el usuario reorganizó las microacciones
When confirma los cambios
Then el sistema almacena el nuevo orden
