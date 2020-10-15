
@available(macOS 10.7, *)
let AVCoreAnimationBeginTimeAtZero: CFTimeInterval
struct AVLayerVideoGravity : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension AVLayerVideoGravity {
  @available(macOS 10.7, *)
  static let resizeAspect: AVLayerVideoGravity
  @available(macOS 10.7, *)
  static let resizeAspectFill: AVLayerVideoGravity
  @available(macOS 10.7, *)
  static let resize: AVLayerVideoGravity
}
