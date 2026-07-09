Feature: Configuración de recordatorios

Scenario: Configurar recordatorios

Given que el usuario accede a la configuración
When define un horario para los recordatorios
Then el sistema guarda la configuración

Scenario: Enviar recordatorio

Given que existe un recordatorio configurado
When llega la hora programada
Then el sistema envía una notificación
