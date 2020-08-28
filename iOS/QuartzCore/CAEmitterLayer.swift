
struct CAEmitterLayerEmitterShape : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
struct CAEmitterLayerEmitterMode : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
struct CAEmitterLayerRenderMode : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
@available(iOS 5.0, *)
class CAEmitterLayer : CALayer {
  var emitterCells: [CAEmitterCell]?
  var birthRate: Float
  var lifetime: Float
  var emitterPosition: CGPoint
  var emitterZPosition: CGFloat
  var emitterSize: CGSize
  var emitterDepth: CGFloat
  var emitterShape: CAEmitterLayerEmitterShape
  var emitterMode: CAEmitterLayerEmitterMode
  var renderMode: CAEmitterLayerRenderMode
  var preservesDepth: Bool
  var velocity: Float
  var scale: Float
  var spin: Float
  var seed: UInt32
}
extension CAEmitterLayerEmitterShape {
  @available(iOS 5.0, *)
  static let point: CAEmitterLayerEmitterShape
  @available(iOS 5.0, *)
  static let line: CAEmitterLayerEmitterShape
  @available(iOS 5.0, *)
  static let rectangle: CAEmitterLayerEmitterShape
  @available(iOS 5.0, *)
  static let cuboid: CAEmitterLayerEmitterShape
  @available(iOS 5.0, *)
  static let circle: CAEmitterLayerEmitterShape
  @available(iOS 5.0, *)
  static let sphere: CAEmitterLayerEmitterShape
}
extension CAEmitterLayerEmitterMode {
  @available(iOS 5.0, *)
  static let points: CAEmitterLayerEmitterMode
  @available(iOS 5.0, *)
  static let outline: CAEmitterLayerEmitterMode
  @available(iOS 5.0, *)
  static let surface: CAEmitterLayerEmitterMode
  @available(iOS 5.0, *)
  static let volume: CAEmitterLayerEmitterMode
}
extension CAEmitterLayerRenderMode {
  @available(iOS 5.0, *)
  static let unordered: CAEmitterLayerRenderMode
  @available(iOS 5.0, *)
  static let oldestFirst: CAEmitterLayerRenderMode
  @available(iOS 5.0, *)
  static let oldestLast: CAEmitterLayerRenderMode
  @available(iOS 5.0, *)
  static let backToFront: CAEmitterLayerRenderMode
  @available(iOS 5.0, *)
  static let additive: CAEmitterLayerRenderMode
}
