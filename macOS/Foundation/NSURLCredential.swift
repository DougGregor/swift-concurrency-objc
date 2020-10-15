
extension URLCredential {
  enum Persistence : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case none
    case forSession
    case permanent
    @available(macOS 10.8, *)
    case synchronizable
  }
}
@available(macOS 10.2, *)
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
  @available(macOS 10.6, *)
  init(identity: SecIdentity, certificates certArray: [Any]?, persistence: URLCredential.Persistence)
  var identity: SecIdentity? { get }
  @available(macOS 10.6, *)
  var certificates: [Any] { get }
}
extension URLCredential {
  @available(macOS 10.6, *)
  init(trust: SecTrust)
}
