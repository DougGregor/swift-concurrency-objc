
struct VSAccountProviderAuthenticationScheme : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(_ rawValue: String)
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension VSAccountProviderAuthenticationScheme {
  static let saml: VSAccountProviderAuthenticationScheme
  static let api: VSAccountProviderAuthenticationScheme
}
class VSAccountProviderResponse : NSObject {
  var authenticationScheme: VSAccountProviderAuthenticationScheme { get }
  var status: String? { get }
  var body: String? { get }
}
