import Vapor

func routes(_ app: Application) throws {
    
    let authController = AuthController()
    let goodsController = GoodsController()

    app.get { req in
        return "It works!"
    }

    app.get("hello") { req -> String in
        return "Hello, world!"
    }
    
    app.post("register", use: authController.register)
    app.post("changeUserData", use: authController.registerChange)
    
    app.post("login", use: authController.login)
    app.post("logout", use: authController.logout)
    
    app.post("getGoodById", use: goodsController.getProduct)
    app.post("catalogData", use: goodsController.getCatalog)
}
