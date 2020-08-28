
struct VSAccountProviderAuthenticationScheme : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(_ rawValue: String)
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension VSAccountProviderAuthenticationScheme {
  @available(iOS 10.2, *)
  static let saml: VSAccountProviderAuthenticationScheme
  @available(iOS 13.0, *)
  static let api: VSAccountProviderAuthenticationScheme
}
@available(iOS 10.2, *)
class VSAccountProviderResponse : NSObject {
  var authenticationScheme: VSAccountProviderAuthenticationScheme { get }
  var status: String? { get }
  var body: String? { get }
}
