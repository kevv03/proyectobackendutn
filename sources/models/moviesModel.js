//importamos la conexión a la base de datos desde el archivo dbConfig.js
import {connection} from "../../database/dbConfig.js";

//CREAMOS una clase(plantilla de objetos) que se pueda exportar, dentro le creamos un objeto static y async llamado getAll que hará una query a la BD y me traerá las peliculas, luego retornará el resultado del array
export class MovieModel{

    //OBTENER TODOS LOS REGISTROS Y BUSCAR POR DIRECTOR, O TITULO

    static async getAll(director, title){
        if(director){
            const [movies, _info] = await connection.query(
                'SELECT movie.id, movie.title, movie.release_date, movie.director, movie.length, movie.overview, movie.rate, movie.language, movie.poster, GROUP_CONCAT(genres.name SEPARATOR ", ") AS genres FROM movie_genres INNER JOIN movie ON movie.id = movie_genres.movie_id INNER JOIN genres ON genres.id = movie_genres.genres_id WHERE movie.director LIKE ? GROUP BY movie.title ORDER BY movie.id;', ["%"+director+"%"]
            );

            return movies;
        } else if(title) {
            const [movies, _info] = await connection.query(
                'SELECT movie.id, movie.title, movie.release_date, movie.director, movie.length, movie.overview, movie.rate, movie.language, movie.poster, GROUP_CONCAT(genres.name SEPARATOR ", ") AS genres FROM movie_genres INNER JOIN movie ON movie.id = movie_genres.movie_id INNER JOIN genres ON genres.id = movie_genres.genres_id WHERE movie.title LIKE ? GROUP BY movie.title ORDER BY movie.id;', ["%"+title+"%"]
            );

            return movies;
        } else{
            const [movies, _info] = await connection.query(
                'SELECT movie.id, movie.title, movie.release_date, movie.director, movie.length, movie.overview, movie.rate, movie.language, movie.poster, GROUP_CONCAT(genres.name SEPARATOR ", ") AS genres FROM movie_genres INNER JOIN movie ON movie.id = movie_genres.movie_id INNER JOIN genres ON genres.id = movie_genres.genres_id GROUP BY movie.title ORDER BY movie.id;'
            );

            return movies;
        }
    }

    //OBTENER REGISTRO POR ID

    static async getById(id){
        const [movie, _info] = await connection.query(
            'SELECT movie.id, movie.title, movie.release_date, movie.director, movie.length, movie.overview, movie.rate, movie.language, movie.poster, GROUP_CONCAT(genres.name SEPARATOR ", ") AS genres FROM movie_genres INNER JOIN movie ON movie.id = movie_genres.movie_id INNER JOIN genres ON genres.id = movie_genres.genres_id WHERE movie.id = ? GROUP BY movie.title ORDER BY movie.id;', [id]
        );

        return movie;
    }

    //BORRAR REGISTRO POR ID

    static async deleteRowById(id){
        const [info] = await connection.query(
            'DELETE FROM movie WHERE id = ?', [id]
        );

        const [infoTwo] = await connection.query(
            'DELETE FROM movie_genres WHERE movie_id = ?', [id]
        )

        const information = info.affectedRows + infoTwo.affectedRows;

        return information;
    }

    //AÑADIR UN NUEVO REGISTRO

    static async addRow(movie){
        const {title, release_date, director, length, overview, rate, language, genre, poster} = movie;

        const [result, _info] = await connection.query(
            'INSERT INTO movie (title, release_date, director, length, overview, rate, language, poster) VALUES (?,?,?,?,?,?,?,?)', [title, release_date, director, length, overview, rate, language, poster]
        );

        for (const gen of genre){
            await connection.query(
                `INSERT INTO movie_genres (movie_id, genres_id) SELECT movie.id, genres.id FROM movie JOIN genres ON movie.title = ? AND genres.name IN ('${gen}')`, [title]
            );
        }

        return result ? result : null;
    }

    //ACTUALIZAR UN REGISTRO

    static async updateRow(id, movie){
        const {title, release_date, director, length, overview, rate, language, genre, poster} = movie;

        const [result] = await connection.query(
            'UPDATE movie SET title = ?, release_date = ?, director = ?, length = ?, overview = ?, rate = ?, language = ?, poster = ? WHERE id = ?', [title, release_date, director, length, overview, rate, language, poster, id]
        );

        for (const gen of genre){
            await connection.query(
                `INSERT INTO movie_genres (movie_id, genres_id) SELECT movie.id, genres.id FROM movie JOIN genres ON movie.title = ? AND genres.name IN ('${gen}')`, [title]
            );
        }
        
        return result.changedRows;
    }
}