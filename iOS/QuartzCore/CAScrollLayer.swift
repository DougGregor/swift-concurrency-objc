
struct CAScrollLayerScrollMode : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
@available(iOS 2.0, *)
class CAScrollLayer : CALayer {
  func scroll(to p: CGPoint)
  func scroll(to r: CGRect)
  var scrollMode: CAScrollLayerScrollMode
}
extension CALayer {
  func scroll(_ p: CGPoint)
  func scrollRectToVisible(_ r: CGRect)
  var visibleRect: CGRect { get }
}
extension CAScrollLayerScrollMode {
  @available(iOS 2.0, *)
  static let none: CAScrollLayerScrollMode
  @available(iOS 2.0, *)
  static let vertically: CAScrollLayerScrollMode
  @available(iOS 2.0, *)
  static let horizontally: CAScrollLayerScrollMode
  @available(iOS 2.0, *)
  static let both: CAScrollLayerScrollMode
}
