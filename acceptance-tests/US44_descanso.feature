Feature: Recomendación de descanso

Scenario: Sugerir un descanso

Given que el usuario finalizó una sesión
When el sistema analiza la actividad
Then muestra una recomendación de descanso

Scenario: Registrar descanso

Given que el usuario acepta la recomendación
When inicia el descanso
Then el sistema registra el tiempo
