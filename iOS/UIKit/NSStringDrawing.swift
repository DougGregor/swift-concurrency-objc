
@available(iOS 6.0, *)
class NSStringDrawingContext : NSObject {
  var minimumScaleFactor: CGFloat
  var actualScaleFactor: CGFloat { get }
  var totalBounds: CGRect { get }
}
extension NSString {
  @available(iOS 7.0, *)
  func size(withAttributes attrs: [NSAttributedString.Key : Any]? = nil) -> CGSize
  @available(iOS 7.0, *)
  func draw(at point: CGPoint, withAttributes attrs: [NSAttributedString.Key : Any]? = nil)
  @available(iOS 7.0, *)
  func draw(in rect: CGRect, withAttributes attrs: [NSAttributedString.Key : Any]? = nil)
}
extension NSAttributedString {
  @available(iOS 6.0, *)
  func size() -> CGSize
  @available(iOS 6.0, *)
  func draw(at point: CGPoint)
  @available(iOS 6.0, *)
  func draw(in rect: CGRect)
}
@available(iOS 6.0, *)
struct NSStringDrawingOptions : OptionSet {
  init(rawValue: Int)
  let rawValue: Int
  static var usesLineFragmentOrigin: NSStringDrawingOptions { get }
  static var usesFontLeading: NSStringDrawingOptions { get }
  static var usesDeviceMetrics: NSStringDrawingOptions { get }
  @available(iOS 6.0, *)
  static var truncatesLastVisibleLine: NSStringDrawingOptions { get }
}
extension NSString {
  @available(iOS 7.0, *)
  func draw(with rect: CGRect, options: NSStringDrawingOptions = [], attributes: [NSAttributedString.Key : Any]? = nil, context: NSStringDrawingContext?)
  @available(iOS 7.0, *)
  func boundingRect(with size: CGSize, options: NSStringDrawingOptions = [], attributes: [NSAttributedString.Key : Any]? = nil, context: NSStringDrawingContext?) -> CGRect
}
extension NSAttributedString {
  @available(iOS 6.0, *)
  func draw(with rect: CGRect, options: NSStringDrawingOptions = [], context: NSStringDrawingContext?)
  @available(iOS 6.0, *)
  func boundingRect(with size: CGSize, options: NSStringDrawingOptions = [], context: NSStringDrawingContext?) -> CGRect
}
extension NSStringDrawingContext {
}
