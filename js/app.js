// Tarea
const nombreTarea = document.getElementById('nombreTarea');
const fechaTarea = document.getElementById('fechaTarea');
const resumenTarea = document.getElementById('resumenTarea');
const mensajeTarea = document.getElementById('mensajeTarea');
const tareasCompletadas = document.getElementById('tareasCompletadas');

let tareaGuardada = localStorage.getItem('actifyTarea') || '';
let tareaCompletada = localStorage.getItem('tareaCompletada') === 'si';

document.getElementById('guardarTarea').addEventListener('click', function () {
    if (nombreTarea.value.trim() === '') {
        mensajeTarea.textContent = 'Escribe el nombre de la tarea.';
        return;
    }

    const prioridad = document.querySelector('input[name="prioridad"]:checked').value;
    tareaGuardada = nombreTarea.value.trim();
    tareaCompletada = false;

    localStorage.setItem('actifyTarea', tareaGuardada);
    localStorage.setItem('fechaTarea', fechaTarea.value);
    localStorage.setItem('prioridadTarea', prioridad);
    localStorage.setItem('tareaCompletada', 'no');

    resumenTarea.textContent = tareaGuardada + ' - Prioridad ' + prioridad;
    mensajeTarea.textContent = 'Tarea guardada correctamente.';
    actualizarEstadisticas();
});

document.getElementById('completarTarea').addEventListener('click', function () {
    if (tareaGuardada === '') {
        mensajeTarea.textContent = 'Primero guarda una tarea.';
        return;
    }

    tareaCompletada = true;
    localStorage.setItem('tareaCompletada', 'si');
    mensajeTarea.textContent = 'Tarea completada. Buen trabajo.';
    actualizarEstadisticas();
});

// Asistente
const respuestaAsistente = document.getElementById('respuestaAsistente');

document.getElementById('pedirAyuda').addEventListener('click', function () {
    if (tareaGuardada === '') {
        respuestaAsistente.textContent = 'Primero registra una tarea.';
        return;
    }

    const energia = document.querySelector('input[name="energia"]:checked').value;
    const tiempoDisponible = document.getElementById('tiempoDisponible').value;
    const bloqueo = document.getElementById('bloqueo').value.trim();

    respuestaAsistente.textContent = 'Para comenzar "' + tareaGuardada + '", trabaja durante ' + tiempoDisponible +
        ' minutos en un paso pequeño. Tu energía es ' + energia +
        (bloqueo ? ' y tendremos en cuenta que ' + bloqueo + '.' : '.');
});

document.getElementById('otraRecomendacion').addEventListener('click', function () {
    respuestaAsistente.textContent = tareaGuardada === ''
        ? 'Primero registra una tarea.'
        : 'Otra opción es preparar únicamente los materiales de "' + tareaGuardada + '".';
});

document.getElementById('aceptarRecomendacion').addEventListener('click', function () {
    respuestaAsistente.textContent = tareaGuardada === ''
        ? 'Primero registra una tarea.'
        : 'Recomendación aceptada. Ahora puedes generar tus microacciones.';
});

// Microacciones
const paso1 = document.getElementById('paso1');
const paso2 = document.getElementById('paso2');
const paso3 = document.getElementById('paso3');
const paso1Completado = document.getElementById('paso1Completado');
const paso2Completado = document.getElementById('paso2Completado');
const paso3Completado = document.getElementById('paso3Completado');
const barraProgreso = document.getElementById('barraProgreso');
const textoProgreso = document.getElementById('textoProgreso');
const pasosCompletados = document.getElementById('pasosCompletados');

document.getElementById('generarPasos').addEventListener('click', function () {
    if (tareaGuardada === '') {
        textoProgreso.textContent = 'Primero registra una tarea.';
        return;
    }

    paso1.value = 'Abrir los materiales de ' + tareaGuardada;
    paso2.value = 'Trabajar cinco minutos en la primera parte';
    paso3.value = 'Guardar el avance y anotar el siguiente paso';
    textoProgreso.textContent = 'Microacciones generadas. Puedes editarlas directamente.';
});

paso1Completado.addEventListener('change', actualizarProgreso);
paso2Completado.addEventListener('change', actualizarProgreso);
paso3Completado.addEventListener('change', actualizarProgreso);

function actualizarProgreso() {
    let completados = 0;

    if (paso1Completado.checked) completados++;
    if (paso2Completado.checked) completados++;
    if (paso3Completado.checked) completados++;

    barraProgreso.value = completados;
    textoProgreso.textContent = completados + ' de 3 microacciones completadas.';

    if (completados === 3) {
        textoProgreso.textContent = '3 de 3 microacciones completadas. Terminaste tu plan.';
    }

    localStorage.setItem('pasosCompletados', completados);
    actualizarEstadisticas();
}

// Temporizador
const duracionEnfoque = document.getElementById('duracionEnfoque');
const temporizador = document.getElementById('temporizador');
const mensajeEnfoque = document.getElementById('mensajeEnfoque');
const minutosEnfoque = document.getElementById('minutosEnfoque');

let segundosRestantes = 60;
let intervaloTemporizador = null;
let minutosGuardados = Number(localStorage.getItem('minutosEnfoque')) || 0;

duracionEnfoque.addEventListener('change', reiniciarTemporizador);

document.getElementById('iniciarEnfoque').addEventListener('click', function () {
    if (intervaloTemporizador !== null) return;

    mensajeEnfoque.textContent = 'Sesión iniciada.';
    intervaloTemporizador = setInterval(function () {
        segundosRestantes--;
        mostrarTiempo();

        if (segundosRestantes <= 0) {
            finalizarSesion('Sesión completada. Toma un descanso.');
        }
    }, 1000);
});

document.getElementById('pausarEnfoque').addEventListener('click', function () {
    clearInterval(intervaloTemporizador);
    intervaloTemporizador = null;
    mensajeEnfoque.textContent = 'Sesión pausada.';
});

document.getElementById('finalizarEnfoque').addEventListener('click', function () {
    finalizarSesion('Sesión finalizada y registrada.');
});

function finalizarSesion(mensaje) {
    clearInterval(intervaloTemporizador);
    intervaloTemporizador = null;
    minutosGuardados += Number(duracionEnfoque.value);
    localStorage.setItem('minutosEnfoque', minutosGuardados);
    mensajeEnfoque.textContent = mensaje;
    reiniciarTemporizador();
    actualizarEstadisticas();
}

function reiniciarTemporizador() {
    clearInterval(intervaloTemporizador);
    intervaloTemporizador = null;
    segundosRestantes = Number(duracionEnfoque.value) * 60;
    mostrarTiempo();
}

function mostrarTiempo() {
    const minutos = Math.floor(segundosRestantes / 60);
    const segundos = segundosRestantes % 60;
    temporizador.textContent = String(minutos).padStart(2, '0') + ':' + String(segundos).padStart(2, '0');
}

// Notificaciones
const mensajePreferencias = document.getElementById('mensajePreferencias');

document.getElementById('guardarPreferencias').addEventListener('click', function () {
    const estado = document.getElementById('notificacionesActivas').checked ? 'activadas' : 'desactivadas';
    const hora = document.getElementById('horaNotificacion').value;
    const frecuencia = document.querySelector('input[name="frecuencia"]:checked').value;

    localStorage.setItem('notificacionesActivas', estado);
    localStorage.setItem('horaNotificacion', hora);
    localStorage.setItem('frecuenciaNotificacion', frecuencia);

    mensajePreferencias.textContent = 'Preferencias guardadas: ' + estado + ', ' + frecuencia.toLowerCase() + ' a las ' + hora + '.';
});

// Recuperación de contraseña
const mensajeRecuperacion = document.getElementById('mensajeRecuperacion');

document.getElementById('recuperarContrasena').addEventListener('click', function () {
    const correo = document.getElementById('correoRecuperacion').value.trim();

    mensajeRecuperacion.textContent = correo === ''
        ? 'Ingresa tu correo electrónico.'
        : 'Se enviaron instrucciones de recuperación a ' + correo + '.';
});

// Datos guardados en el navegador
function cargarDatos() {
    if (tareaGuardada !== '') {
        nombreTarea.value = tareaGuardada;
        fechaTarea.value = localStorage.getItem('fechaTarea') || '';
        resumenTarea.textContent = tareaGuardada + ' - Prioridad ' + (localStorage.getItem('prioridadTarea') || 'Media');
    }

    actualizarEstadisticas();
    reiniciarTemporizador();
}

function actualizarEstadisticas() {
    let completados = 0;

    if (paso1Completado.checked) completados++;
    if (paso2Completado.checked) completados++;
    if (paso3Completado.checked) completados++;

    tareasCompletadas.textContent = tareaCompletada ? '1' : '0';
    pasosCompletados.textContent = completados;
    minutosEnfoque.textContent = minutosGuardados;

    document.getElementById('mensajeMotivacion').textContent = tareaCompletada || completados > 0
        ? 'Ya avanzaste. Continúa con el siguiente paso pequeño.'
        : 'Cada pequeño avance cuenta.';
}

cargarDatos();
