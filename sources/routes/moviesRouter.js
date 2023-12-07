//importamos el router de express (libreria)
import {Router} from "express";
//importamos el controlador CON LA EXTENSION .js SIEMPRE IMPORTAR
import {MovieController} from "../controllers/moviesController.js";
//exportamos el "archivo de router" con el nombre de moviesRouter para posteriormente poder llamarlo en el index.js
import {isAuth} from "../../middlewares/session.js";
//importamos la funcion que nos va a permitir subir una foto a nuestro backend a la carpeta public
import { uploadFile } from "../utils/handleStorage.js";
export const moviesRouter = Router();

//LE DECIMOS AL ROUTER que cuando haya una petición GET en la ruta raíz /movies "/", la maneje el MovieController.getAll (CLASE.OBJETO)
moviesRouter.get("/", MovieController.getAll);

moviesRouter.get("/:id", MovieController.getById);

//auth_midleware, va entre la request y el controlador
moviesRouter.delete("/:id", isAuth, MovieController.deleteRowById);

moviesRouter.post("/", isAuth, uploadFile.single("posterName"), MovieController.addRow); //"posterName" ES EL VALOR DEL ATRIBUTO NAME DEL INPUT

moviesRouter.put("/:id", isAuth, MovieController.updateRow);