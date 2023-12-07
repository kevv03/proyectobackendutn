import {connection} from "../../database/dbConfig.js";

export class UserModel{

  //OBTENER TODOS LOS USUARIOS DE LA DB

  static async getAll(){
    const [users, _info] = await connection.query(
      `SELECT * FROM users`
    );

    return users.length? users : null;
  }

  //REGISTRARSE COMO NUEVO USUARIO

  static async register(user){
    const {fullName, email, pass} = user;

    const result = await connection.query(
      'INSERT INTO users (fullName, email, pass) VALUES (?,?,?)', [fullName, email, pass]
    );

    return result? result : null;
  }

  //CONSEGUIR USUARIO POR EMAIL

  static async getUserByEmail(email){
    const [user, _info] = await connection.query(
      'SELECT * FROM users WHERE email = ?', [email]
    );

    return user.length? user : null;
  }
}