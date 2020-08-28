
extension URLCredential {
  enum Persistence : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case none
    case forSession
    case permanent
    @available(watchOS 2.0, *)
    case synchronizable
  }
}
@available(watchOS 2.0, *)
class URLCredential : NSObject, NSSecureCoding, NSCopying {
  var persistence: URLCredential.Persistence { get }
}
extension URLCredential {
  init(user: String, password: String, persistence: URLCredential.Persistence)
  var user: String? { get }
  var password: String? { get }
  var hasPassword: Bool { get }
}
extension URLCredential {
  @available(watchOS 2.0, *)
  init(identity: SecIdentity, certificates certArray: [Any]?, persistence: URLCredential.Persistence)
  var identity: SecIdentity? { get }
  @available(watchOS 2.0, *)
  var certificates: [Any] { get }
}
extension URLCredential {
  @available(watchOS 2.0, *)
  init(trust: SecTrust)
}
