Feature: Aceptar o rechazar recomendaciones

Scenario: Aceptar recomendación

Given que el sistema muestra una recomendación
When el usuario la acepta
Then el sistema registra la acción

Scenario: Rechazar recomendación

Given que el sistema muestra una recomendación
When el usuario la rechaza
Then el sistema genera una alternativa
