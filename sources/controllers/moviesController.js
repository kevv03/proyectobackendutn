//importamos el modelo, donde se almacena el resultado de la QUERY
import {MovieModel} from "../models/moviesModel.js";
import { deleteImage } from "../utils/handleDeleteFile.js";
//importamos el validador
import {validateMovie} from "../utils/moviesValidator.js";
//importamos el path que es el "reparador de rutas" de node, por ej. en linux las rutas se escriben de otra manera
import path from "node:path";

const URL = process.env.PUBLIC_URL;

//CREAMOS una clase que se pueda exportar, llamada MovieController. Dentro creamos un objeto estatico(para poder llamarlo en otro lado o archivo) y asincronico(que espere a la anterior secuencia para ejecutarse) llamado getAll que espere a que se realice la QUERY en el MODEL y se almacene en la constante movies. Este controlador luego retornará un 200 OK que mostrará la variable movies en un JSON.
export class MovieController{

    //OBTENER TODOS LOS REGISTROS Y BUSCAR POR DIRECTOR

    static async getAll(req, res){
        const {director, title} = req.query; //recibimos el parametro director en la url y lo guardamos en esta constante
        const movies = await MovieModel.getAll(director, title)//le pasamos el parametro director al MODELO

        //el RESULTADO de la QUERY que se almacena en movies, tiene longitud?
        movies.length?  
            res.status(200).json(movies)
        :
            res.status(404).json({message: "Movie Not Found", code: 404});
    }

    //OBTENER REGISTRO POR ID

    static async getById(req, res){
        const {id} = req.params;

        const movie = await MovieModel.getById(id);

        movie.length?
            res.status(200).json(movie)
        :
            res.status(404).json({message: "Movie Not Found", code: 404});
    }

    //BORRAR REGISTRO POR ID

    static async deleteRowById(req, res){
        const {id} = req.params;

        const [row] = await MovieModel.getById(id);
        if(!row){
            return res.status(404).json({message: "Movie Not Found", code: 404});
        }
        
        const fileName = row.poster.split("http://localhost:3000/").pop()

        const movie = await MovieModel.deleteRowById(id);

        if(movie){
            await deleteImage(path.resolve(`./public/${fileName}`));
            return res.status(200).json({message: "Movie Deleted", code: 200})
        }else{
            return res.status(404).json({message: "Movie Not Found", code: 404});
        }
    }

    //AÑADIR UN NUEVO REGISTRO

    static async addRow(req, res){
        const {title, release_date, director, length, overview, rate, language, genre} = req.body;
        const poster = `${URL}/${req.file.filename}`;
        const validationResult = validateMovie({
            title,
            release_date,
            director,
            length,
            overview,
            rate,
            language,
            genre: genre.split(", "),
            poster
        });

        if(!validationResult.success){
            return res.status(422).json({field: validationResult.error.issues[0].path[0], error: validationResult.error.issues[0].message});
        }

        if(!req.body) return res.status(400).json({message: "No Empty Fields Allowed", code: 400});
        
        const movieCreated = await MovieModel.addRow({
            ...validationResult.data,
            poster
        });

        movieCreated?
            res.status(201).json({message: "Movie Created", code: 201})
        :
            res.status(500).json({message: "Internal Server Error", code: 500});
        
    }

    //ACTUALIZAR UN REGISTRO

    static async updateRow(req, res){
        const {id} = req.params;

        const [movie] = await MovieModel.getById(id);

        if(!movie) return res.status(404).json({message: "Movie Not Found", code: 404});

        const {title, release_date, director, length, overview, rate, language, genre} = req.body;

        const updatedMovie = await MovieModel.updateRow(id, req.body);

        updatedMovie?
            res.status(201).json({message: "Movie Updated", code: 200})
        :
            res.status(500).json({message: "Bad Request", code: 400});
    }
}

/*import movies from "../data/movies.json" assert {type: "json"};

export function getAll(req, res){
    /*const {director} = req.query; //ATRAPAMOS LA REQUIRE localhost:3000/movies**?director=chris** ESTA ES LA PETICION PARA BUSCAR POR DIRECTOR y la almaceno en la variable director
    if(!director){ //SI LA VARIABLE ES FALSA (!), O ES NULL O UNDEFINED (QUE TAMBIEN SE TOMAN COMO FALSE) se ejecutará el IF
        return res.status(200).json({
            info: movies
        });
    };

    const filtered = movies.filter(m => m.director.toLocaleLowerCase().includes(director.toLocaleLowerCase())); //constante filtByDir... utiliza el metodo filter para *movies* en la que por cada director de pelicula (obtenido del json) primero la convertirá a minúsculas y verá si incluye la constante director (linea 6) convertida a minusculas
    
    !filtered.length? //si filtered.length es falso(está vacío), no tiene longitud o coincidencias 404, caso contrario, 200 y muestra las coinc.
            res.status(404).json({message: `No existen peliculas para esa búsqueda`})
        :
            res.status(200).json({info: filtered});
}*/