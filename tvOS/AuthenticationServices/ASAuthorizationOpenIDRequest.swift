
extension ASAuthorization {
  @available(tvOS 13.0, *)
  struct OpenIDOperation : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(_ rawValue: String)
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
}
extension ASAuthorization.OpenIDOperation {
  @available(tvOS 13.0, *)
  static let operationImplicit: ASAuthorization.OpenIDOperation
  @available(tvOS 13.0, *)
  static let operationLogin: ASAuthorization.OpenIDOperation
  @available(tvOS 13.0, *)
  static let operationRefresh: ASAuthorization.OpenIDOperation
  @available(tvOS 13.0, *)
  static let operationLogout: ASAuthorization.OpenIDOperation
}
@available(tvOS 13.0, *)
class ASAuthorizationOpenIDRequest : ASAuthorizationRequest {
  var requestedScopes: [ASAuthorization.Scope]?
  var state: String?
  var nonce: String?
  var requestedOperation: ASAuthorization.OpenIDOperation
}
