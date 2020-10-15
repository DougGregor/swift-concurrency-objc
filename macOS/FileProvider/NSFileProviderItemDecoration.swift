
struct NSFileProviderItemDecorationIdentifier : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(_ rawValue: String)
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
protocol NSFileProviderItemDecorating : NSFileProviderItemProtocol {
  @available(macOS 11.0, *)
  var decorations: [NSFileProviderItemDecorationIdentifier]? { get }
}
