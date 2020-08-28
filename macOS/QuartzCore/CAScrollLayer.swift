
struct CAScrollLayerScrollMode : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
@available(macOS 10.5, *)
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
  @available(macOS 10.5, *)
  static let none: CAScrollLayerScrollMode
  @available(macOS 10.5, *)
  static let vertically: CAScrollLayerScrollMode
  @available(macOS 10.5, *)
  static let horizontally: CAScrollLayerScrollMode
  @available(macOS 10.5, *)
  static let both: CAScrollLayerScrollMode
}
