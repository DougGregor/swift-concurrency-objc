
@available(tvOS 9.0, *)
let AVCoreAnimationBeginTimeAtZero: CFTimeInterval
struct AVLayerVideoGravity : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension AVLayerVideoGravity {
  @available(tvOS 9.0, *)
  static let resizeAspect: AVLayerVideoGravity
  @available(tvOS 9.0, *)
  static let resizeAspectFill: AVLayerVideoGravity
  @available(tvOS 9.0, *)
  static let resize: AVLayerVideoGravity
}
