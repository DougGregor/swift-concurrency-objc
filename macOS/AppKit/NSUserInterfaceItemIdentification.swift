
struct NSUserInterfaceItemIdentifier : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(_ rawValue: String)
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
protocol NSUserInterfaceItemIdentification {
  var identifier: NSUserInterfaceItemIdentifier? { get set }
}
