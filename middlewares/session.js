import {tokenVerify} from "../sources/utils/handleJWT.js";

export const isAuth = async (req, res, next) =>{
    const token = req.headers.authorization;
    if(!token) return res.status(401).json({message: "Unauthorized, No Token Provided", code: 401});
    
    const isValidToken = await tokenVerify(token);
    isValidToken?
        next()
    :
        res.status(401).json({message: "Invalid Token", code: 401});
}