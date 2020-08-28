
@available(watchOS 2.0, *)
let AVCoreAnimationBeginTimeAtZero: CFTimeInterval
struct AVLayerVideoGravity : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension AVLayerVideoGravity {
  @available(watchOS 2.0, *)
  static let resizeAspect: AVLayerVideoGravity
  @available(watchOS 2.0, *)
  static let resizeAspectFill: AVLayerVideoGravity
  @available(watchOS 2.0, *)
  static let resize: AVLayerVideoGravity
}
