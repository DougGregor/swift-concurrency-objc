
struct CAMediaTimingFillMode : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
protocol CAMediaTiming {
  var beginTime: CFTimeInterval { get set }
  var duration: CFTimeInterval { get set }
  var speed: Float { get set }
  var timeOffset: CFTimeInterval { get set }
  var repeatCount: Float { get set }
  var repeatDuration: CFTimeInterval { get set }
  var autoreverses: Bool { get set }
  var fillMode: CAMediaTimingFillMode { get set }
}
extension CAMediaTimingFillMode {
  @available(iOS 2.0, *)
  static let forwards: CAMediaTimingFillMode
  @available(iOS 2.0, *)
  static let backwards: CAMediaTimingFillMode
  @available(iOS 2.0, *)
  static let both: CAMediaTimingFillMode
  @available(iOS 2.0, *)
  static let removed: CAMediaTimingFillMode
}
