
struct NSFileProviderDomainIdentifier : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(_ rawValue: String)
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
@available(macOS 11.0, *)
class NSFileProviderDomain : NSObject {
  @available(macOS 11.0, *)
  init(identifier: NSFileProviderDomainIdentifier, displayName: String)
  var identifier: NSFileProviderDomainIdentifier { get }
  var displayName: String { get }
  @available(macOS 11.0, *)
  var isDisconnected: Bool { get }
  @available(macOS 11.0, *)
  var userEnabled: Bool { get }
  @available(macOS 11.0, *)
  var isHidden: Bool
}
extension NSNotification.Name {
  @available(macOS 11.0, *)
  static let fileProviderDomainDidChange: NSNotification.Name
}
