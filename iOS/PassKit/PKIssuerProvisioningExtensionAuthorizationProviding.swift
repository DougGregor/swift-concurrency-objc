
@available(iOS 14.0, *)
enum PKIssuerProvisioningExtensionAuthorizationResult : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case canceled
  case authorized
}
@available(iOS 14.0, *)
protocol PKIssuerProvisioningExtensionAuthorizationProviding : NSObjectProtocol {
  var completionHandler: ((PKIssuerProvisioningExtensionAuthorizationResult) -> Void)? { get set }
}
