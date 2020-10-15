
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
@available(tvOS 9.0, *)
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
  @available(tvOS 9.0, *)
  static let point: CAEmitterLayerEmitterShape
  @available(tvOS 9.0, *)
  static let line: CAEmitterLayerEmitterShape
  @available(tvOS 9.0, *)
  static let rectangle: CAEmitterLayerEmitterShape
  @available(tvOS 9.0, *)
  static let cuboid: CAEmitterLayerEmitterShape
  @available(tvOS 9.0, *)
  static let circle: CAEmitterLayerEmitterShape
  @available(tvOS 9.0, *)
  static let sphere: CAEmitterLayerEmitterShape
}
extension CAEmitterLayerEmitterMode {
  @available(tvOS 9.0, *)
  static let points: CAEmitterLayerEmitterMode
  @available(tvOS 9.0, *)
  static let outline: CAEmitterLayerEmitterMode
  @available(tvOS 9.0, *)
  static let surface: CAEmitterLayerEmitterMode
  @available(tvOS 9.0, *)
  static let volume: CAEmitterLayerEmitterMode
}
extension CAEmitterLayerRenderMode {
  @available(tvOS 9.0, *)
  static let unordered: CAEmitterLayerRenderMode
  @available(tvOS 9.0, *)
  static let oldestFirst: CAEmitterLayerRenderMode
  @available(tvOS 9.0, *)
  static let oldestLast: CAEmitterLayerRenderMode
  @available(tvOS 9.0, *)
  static let backToFront: CAEmitterLayerRenderMode
  @available(tvOS 9.0, *)
  static let additive: CAEmitterLayerRenderMode
}
