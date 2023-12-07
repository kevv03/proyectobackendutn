import {z} from "zod";

const currentYear = new Date().getFullYear();

const movieSchema = z.object({
    title: z.string({required_error: "Field is required"}),
    release_date: z.string({required_error: "Field is required"}),
    director: z.string({required_error: "Field is required"}),
    length: z.string({required_error: "Field is required"}),
    overview: z.string({required_error: "Field is required"}),
    rate: z.string({required_error: "Field is required"}),
    language: z.string({required_error: "Field is required"}),
    poster: z.string().url(),
    genre: z.enum([
        "Action",
        "Adventure",
        "Animation",
        "Biography",
        "Crime",
        "Drama",
        "Fantasy",
        "Film-Noir",
        "Horror",
        "Mystery",
        "Romance",
        "Sci-Fi",
        "Thriller"
    ]).array()
});

export function validateMovie(object){
    return movieSchema.safeParse(object);
}