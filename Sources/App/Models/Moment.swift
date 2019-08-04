import FluentSQLite
import Vapor

/// A single entry of a Todo list.
final class Moment: SQLiteModel {
    /// The unique identifier for this `Todo`.
    var id: Int?

    /// A title describing what this `Todo` entails.
    var content: String

    /// Creates a new `Todo`.
    init(id: Int? = nil, content: String) {
        self.id = id
        self.content = content
    }
}

/// Allows `Todo` to be used as a dynamic migration.
extension Moment: Migration { }

/// Allows `Todo` to be encoded to and decoded from HTTP messages.
extension Moment: Content { }

/// Allows `Todo` to be used as a dynamic parameter in route definitions.
extension Moment: Parameter { }
