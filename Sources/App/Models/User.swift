
import Vapor
import FluentSQLite

final class User: Codable {
    var id: Int?
    var name: String?
    var subName: String?
    var email: String?
    var phone: String?

    init(name: String, subName: String, email: String, phone: String) {
        self.name = name
        self.subName = subName
        self.email = email
        self.phone = phone
    }
}

extension User: Model {
    typealias Database = SQLiteDatabase
    typealias ID = Int
    public static var idKey: IDKey = \User.id
}
extension User: SQLiteModel {}
extension User: Migration {}
extension User: Content {}
