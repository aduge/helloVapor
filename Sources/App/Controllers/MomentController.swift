import Vapor

/// Controls basic CRUD operations on `Todo`s.
final class MomentController {
    /// 返回所有数据
    func index(_ req: Request) throws -> Future<[Moment]> {
        return Moment.query(on: req).all()
    }

    /// 增加一条记录.
    func create(_ req: Request) throws -> Future<Moment> {
        return try req.content.decode(Moment.self).flatMap { moment in
            return moment.save(on: req)
        }
    }

    /// 删除一条纪录.
    func delete(_ req: Request) throws -> Future<HTTPStatus> {
        return try req.parameters.next(Moment.self).flatMap { moment in
            return moment.delete(on: req)
        }.transform(to: .ok)
    }
}
