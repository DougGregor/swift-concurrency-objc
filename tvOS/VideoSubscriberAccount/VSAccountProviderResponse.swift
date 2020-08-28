
struct VSAccountProviderAuthenticationScheme : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(_ rawValue: String)
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension VSAccountProviderAuthenticationScheme {
  @available(tvOS 10.1, *)
  static let saml: VSAccountProviderAuthenticationScheme
  @available(tvOS 13.0, *)
  static let api: VSAccountProviderAuthenticationScheme
}
@available(tvOS 10.1, *)
class VSAccountProviderResponse : NSObject {
  var authenticationScheme: VSAccountProviderAuthenticationScheme { get }
  var status: String? { get }
  var body: String? { get }
}
