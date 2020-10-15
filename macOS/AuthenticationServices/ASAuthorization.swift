
extension ASAuthorization {
  @available(macOS 10.15, *)
  struct Scope : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(_ rawValue: String)
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
}
extension ASAuthorization.Scope {
  @available(macOS 10.15, *)
  static let fullName: ASAuthorization.Scope
  @available(macOS 10.15, *)
  static let email: ASAuthorization.Scope
}
@available(macOS 10.15, *)
class ASAuthorization : NSObject {
  var provider: ASAuthorizationProvider { get }
  var credential: ASAuthorizationCredential { get }
}
