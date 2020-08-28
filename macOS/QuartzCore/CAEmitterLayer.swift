
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
@available(macOS 10.6, *)
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
  @available(macOS 10.6, *)
  static let point: CAEmitterLayerEmitterShape
  @available(macOS 10.6, *)
  static let line: CAEmitterLayerEmitterShape
  @available(macOS 10.6, *)
  static let rectangle: CAEmitterLayerEmitterShape
  @available(macOS 10.6, *)
  static let cuboid: CAEmitterLayerEmitterShape
  @available(macOS 10.6, *)
  static let circle: CAEmitterLayerEmitterShape
  @available(macOS 10.6, *)
  static let sphere: CAEmitterLayerEmitterShape
}
extension CAEmitterLayerEmitterMode {
  @available(macOS 10.6, *)
  static let points: CAEmitterLayerEmitterMode
  @available(macOS 10.6, *)
  static let outline: CAEmitterLayerEmitterMode
  @available(macOS 10.6, *)
  static let surface: CAEmitterLayerEmitterMode
  @available(macOS 10.6, *)
  static let volume: CAEmitterLayerEmitterMode
}
extension CAEmitterLayerRenderMode {
  @available(macOS 10.6, *)
  static let unordered: CAEmitterLayerRenderMode
  @available(macOS 10.6, *)
  static let oldestFirst: CAEmitterLayerRenderMode
  @available(macOS 10.6, *)
  static let oldestLast: CAEmitterLayerRenderMode
  @available(macOS 10.6, *)
  static let backToFront: CAEmitterLayerRenderMode
  @available(macOS 10.6, *)
  static let additive: CAEmitterLayerRenderMode
}
