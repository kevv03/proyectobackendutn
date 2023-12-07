import express from "express";
import cors from "cors";
import {moviesRouter} from "./sources/routes/moviesRouter.js";
import {usersRouter} from "./sources/users/usersRouter.js";

const PORT = process.env.PORT;
const app = express();
//middlewares
app.use(cors("*"));
app.use(express.json());
app.use(express.urlencoded({extended: false}));
app.disable("x-powered-by");
app.use(express.static("public"));

//utilizamos la ruta /movies y le asignamos el controlador importado "moviesRouter"
app.use("/movies", moviesRouter);
app.use("/users", usersRouter);

app.listen(PORT, err =>{
    err?
        console.error(`Ocurrió un error mientras se creaba el servidor -> ${err}`)
    :
        console.log(`Servidor corriendo en http://localhost:${PORT}`);
}); 