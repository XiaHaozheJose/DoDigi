import Vapor

/// Register your application's routes here.
public func routes(_ router: Router) throws {
    router.post("api", "user") { req -> Future<User> in
        return try req.content.decode(User.self)
            .flatMap(to: User.self, { (user) in
                return user.save(on: req)
            })
    }
}
