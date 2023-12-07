import { promises as fs } from "node:fs";

export const deleteImage = async filePath =>{
    try {
        await fs.unlink(filePath);
    }catch (error){
        console.error("An error ocurred while trying delete image");
    }
}