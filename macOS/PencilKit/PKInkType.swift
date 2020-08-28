
struct __PKInkType : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension __PKInkType {
  static let pen: __PKInkType
  static let pencil: __PKInkType
  static let marker: __PKInkType
}
