import jwt from "jsonwebtoken";
const SECRET = process.env.JWT_SECRET;

//crear el token
export const tokenSign = async (user, time) =>{
  const token = jwt.sign(user, SECRET, { expiresIn: time });
  return token;
};

//verifica la firma del token por el backend
export const tokenVerify = async token =>{
  try{
    const cleanToken = token.split(" ").pop();
    const tokenVerification = jwt.verify(cleanToken, SECRET);
    return true;
  }catch(error){
    return false;
  }
}