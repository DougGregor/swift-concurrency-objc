
struct NSFileProviderDomainIdentifier : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(_ rawValue: String)
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
@available(iOS 11.0, *)
class NSFileProviderDomain : NSObject {
  init(identifier: NSFileProviderDomainIdentifier, displayName: String, pathRelativeToDocumentStorage: String)
  var identifier: NSFileProviderDomainIdentifier { get }
  var displayName: String { get }
  var pathRelativeToDocumentStorage: String { get }
}
@available(iOS 11.0, *)
extension NSFileProviderExtension {
  var domain: NSFileProviderDomain? { get }
}
