import {Router} from "express";
import {UserController} from "./usersController.js";
import {isAuth} from "../../middlewares/session.js";
export const usersRouter = Router();

usersRouter.get("/", isAuth, UserController.getAll);

usersRouter.post("/register", UserController.register);

usersRouter.post("/login", UserController.login);