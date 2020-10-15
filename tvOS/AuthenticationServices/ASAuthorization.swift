
extension ASAuthorization {
  @available(tvOS 13.0, *)
  struct Scope : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(_ rawValue: String)
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
}
extension ASAuthorization.Scope {
  @available(tvOS 13.0, *)
  static let fullName: ASAuthorization.Scope
  @available(tvOS 13.0, *)
  static let email: ASAuthorization.Scope
}
@available(tvOS 13.0, *)
class ASAuthorization : NSObject {
  var provider: ASAuthorizationProvider { get }
  var credential: ASAuthorizationCredential { get }
}
