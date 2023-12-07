import {UserModel} from "./usersModel.js";
import {encryptPassword, checkPassword} from "../utils/handlePassword.js";
import {tokenSign} from "../utils/handleJWT.js";

export class UserController{

  //OBTENER TODOS LOS USUARIOS DE LA DB

  static async getAll(req, res){
    const users = await UserModel.getAll();

    users? 
      res.status(200).json(users)
    : 
      res.status(404).json({message: "Users Not Found", code: 404});
  }

  //REGISTRARSE COMO NUEVO USUARIO

  static async register(req, res){
    const {fullName, email, pass} = req.body;
    const securedPass = await encryptPassword(pass);
    const newUser = {fullName, email, pass: securedPass};
    const userCreated = await UserModel.register(newUser);

    userCreated? 
      res.status(201).json({message: "User Created", code: 201})
    : 
      res.status(500).json({message: "Internal Server Error", code: 500});
  }

  //LOGUEARSE COMO USUARIO PARA OBTENER JWT

  static async login(req, res){
    const {email, pass} = req.body;

    const isUser = await UserModel.getUserByEmail(email);
    if (!isUser) return res.status(401).json({message: "Incorrect Email Or Password", code: 401});
    
    const isValidPassword = await checkPassword(pass, isUser[0].pass);
    if (!isValidPassword) return res.status(401).json({message: "Incorrect Email Or Password", code: 401});

    const tokenPayload = {
      fullName: isUser[0].fullName,
      email: isUser[0].email,
    };

    const jwt = await tokenSign(tokenPayload, 1000 * 60 * 60 * 24 * 365);

    res.status(200).json({message: "Login Successful", token: jwt, code: 200});
  }
}