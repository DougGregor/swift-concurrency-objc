
@available(iOS 13.0, *)
struct ASAuthorizationProviderAuthorizationOperation : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(_ rawValue: String)
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension ASAuthorizationProviderAuthorizationOperation {
  @available(iOS 14.0, *)
  static let configurationRemoved: ASAuthorizationProviderAuthorizationOperation
}
@available(iOS 13.0, *)
protocol ASAuthorizationProviderExtensionAuthorizationRequestHandler : NSObjectProtocol {
  func beginAuthorization(with request: ASAuthorizationProviderExtensionAuthorizationRequest)
  optional func cancelAuthorization(with request: ASAuthorizationProviderExtensionAuthorizationRequest)
}
@available(iOS 13.0, *)
class ASAuthorizationProviderExtensionAuthorizationRequest : NSObject {
  func doNotHandle()
  func cancel()
  func complete()
  func complete(httpAuthorizationHeaders: [String : String])
  func complete(httpResponse: HTTPURLResponse, httpBody: Data?)
  func complete(error: Error)
  func presentAuthorizationViewController(completion: @escaping (Bool, Error?) -> Void)
  func presentAuthorizationViewController() async throws -> Bool
  var url: URL { get }
  var requestedOperation: ASAuthorizationProviderAuthorizationOperation { get }
  var httpHeaders: [String : String] { get }
  var httpBody: Data { get }
  var realm: String { get }
  var extensionData: [AnyHashable : Any] { get }
  var callerBundleIdentifier: String { get }
  var authorizationOptions: [AnyHashable : Any] { get }
  @available(iOS 14.0, *)
  var isCallerManaged: Bool { get }
  @available(iOS 14.0, *)
  var callerTeamIdentifier: String { get }
  @available(iOS 14.0, *)
  var localizedCallerDisplayName: String { get }
}
