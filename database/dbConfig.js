import mysql from "mysql2/promise"; //importamos la libreria para hacer la conn a la BD

//creamos una const con los datos que se esperan recibir para poder realizar una conexion exitosa a la DB
const dbConfig = {
    host: 'localhost',
    user: 'root',
    password: '',
    port: 3306,
    database: 'movies'
};

//establecemos los datos de conexion pasandoselos como parametro en una variable, ASIGNANDOLE EL PREFIJO await para indicarle que es una promesa que no se va a resolver en el momento, sino que debe esperar a ser consultada
//export const connection = await mysql.createConnection(dbConfig);
//lo exporto para importarlo donde lo necesite, en los modelos comunmente, importo = import {connection} from "./database/dbConfig.js"

//CREAMOS UN POOL de conexiones, son sesiones para querys que estan siempre abiertas, entonces se pueden hacer varias consultas a la BD en simultaneo desde varios lugares y el servidor no se va a caer
export const connection = mysql.createPool(dbConfig);

//realizamos la consulta
//const [movies, _info] = await connection.query('SELECT title, director FROM movie');
