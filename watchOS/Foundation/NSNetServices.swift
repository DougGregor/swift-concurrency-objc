
extension NetService {
  enum ErrorCode : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case unknownError
    case collisionError
    case notFoundError
    case activityInProgress
    case badArgumentError
    case cancelledError
    case invalidError
    case timeoutError
  }
  struct Options : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var noAutoRename: NetService.Options { get }
    @available(watchOS 2.0, *)
    static var listenForConnections: NetService.Options { get }
  }
}
