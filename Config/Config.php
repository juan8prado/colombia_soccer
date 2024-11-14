<?php
session_name('colombia_soccer');
const BASE_URL = "http://localhost/colombia_soccer";
//const BASE_URL = "https://abelosh.com/tiendavirtual";

//Zona horaria
date_default_timezone_set('America/Bogota');

//Datos de conexión a Base de Datos
const DB_HOST = "localhost";
const DB_NAME = "db_colombia_soccer";
const DB_USER = "root";
const DB_PASSWORD = "";
const DB_CHARSET = "utf8";

//Para envío de correo
const ENVIRONMENT = 1; // Local: 0, Produccón: 1;

//Deliminadores decimal y millar Ej. 24.1989,00
const SPD = ",";
const SPM = ".";

//Simbolo de moneda
const SMONEY = "COP";
const CURRENCY = "COP";

//Api PayPal
//SANDBOX PAYPAL
const URLPAYPAL = "https://api-m.sandbox.paypal.com";
const IDCLIENTE = "";
const SECRET = "";
//LIVE PAYPAL
//const URLPAYPAL = "https://api-m.paypal.com";
//const IDCLIENTE = "";
//const SECRET = "";

//Datos envio de correo
const NOMBRE_REMITENTE = "Colombia Soccer";
const EMAIL_REMITENTE = "no-reply@abelosh.com";
const NOMBRE_EMPESA = "Colombia Soccer";
const WEB_EMPRESA = "www.abelosh.com";

const DESCRIPCION = "La mejor tienda en línea con artículos de moda.";
const SHAREDHASH = "TiendaVirtual";

//Datos Empresa
const DIRECCION = "Avenida las Américas Zona 13, Guatemala";
const TELEMPRESA = "+(502)78787845";
const WHATSAPP = "+50278787845";
const EMAIL_EMPRESA = "info@abelosh.com";
const EMAIL_PEDIDOS = "info@abelosh.com";
const EMAIL_SUSCRIPCION = "info@abelosh.com";
const EMAIL_CONTACTO = "info@abelosh.com";

// Simulación de conexión a la base de datos para obtener las categorías
$categorias = range(1, 100); // Aquí podrías obtenerlas desde una base de datos

// Definir las constantes dinámicamente
define('CAT_SLIDER', implode(',', array_slice($categorias, 0, 100)));   // Solo la primera categoría
define('CAT_BANNER', implode(',', array_slice($categorias, 0, 100)));  // Las primeras 6 categorías
define('CAT_FOOTER', implode(',', array_slice($categorias, 0, 100)));  // Las primeras 5 categorías


//Datos para Encriptar / Desencriptar
const KEY = 'abelosh';
const METHODENCRIPT = "AES-128-ECB";

//Envío
const COSTOENVIO = 0;

//Módulos
const MDASHBOARD = 1;
const MUSUARIOS = 2;
const MCLIENTES = 3;
const MPRODUCTOS = 4;
const MPEDIDOS = 5;
const MCATEGORIAS = 6;
const MSUSCRIPTORES = 7;
const MDCONTACTOS = 8;
const MDPAGINAS = 9;

//Páginas
const PINICIO = 1;
const PTIENDA = 2;
const PCARRITO = 3;
const PNOSOTROS = 4;
const PCONTACTO = 5;
const PPREGUNTAS = 6;
const PTERMINOS = 7;
const PSUCURSALES = 8;
const PERROR = 9;

//Roles
const RADMINISTRADOR = 1;
const RSUPERVISOR = 2;
const RCLIENTES = 3;

const STATUS = array('Completo', 'Aprobado', 'Cancelado', 'Reembolsado', 'Pendiente', 'Entregado');

//Productos por página
const CANTPORDHOME = 8;
const PROPORPAGINA = 4;
const PROCATEGORIA = 4;
const PROBUSCAR = 4;

//REDES SOCIALES
const FACEBOOK = "https://www.facebook.com/abelosh";
const INSTAGRAM = "https://www.instagram.com/febel24/";
