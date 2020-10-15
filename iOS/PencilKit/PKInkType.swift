
@available(iOS 13.0, *)
struct __PKInkType : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension __PKInkType {
  @available(iOS 13.0, *)
  static let pen: __PKInkType
  @available(iOS 13.0, *)
  static let pencil: __PKInkType
  @available(iOS 13.0, *)
  static let marker: __PKInkType
}
