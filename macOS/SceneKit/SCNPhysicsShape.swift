
extension SCNPhysicsShape {
  struct Option : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
  struct ShapeType : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
}
extension SCNPhysicsShape.Option {
  @available(macOS 10.10, *)
  static let type: SCNPhysicsShape.Option
  @available(macOS 10.10, *)
  static let keepAsCompound: SCNPhysicsShape.Option
  @available(macOS 10.10, *)
  static let scale: SCNPhysicsShape.Option
  @available(macOS 10.12, *)
  static let collisionMargin: SCNPhysicsShape.Option
}
extension SCNPhysicsShape.ShapeType {
  @available(macOS 10.10, *)
  static let boundingBox: SCNPhysicsShape.ShapeType
  @available(macOS 10.10, *)
  static let convexHull: SCNPhysicsShape.ShapeType
  @available(macOS 10.10, *)
  static let concavePolyhedron: SCNPhysicsShape.ShapeType
}
@available(macOS 10.10, *)
class SCNPhysicsShape : NSObject, NSCopying, NSSecureCoding {
  convenience init(geometry: SCNGeometry, options: [SCNPhysicsShape.Option : Any]? = nil)
  convenience init(node: SCNNode, options: [SCNPhysicsShape.Option : Any]? = nil)
  convenience init(shapes: [SCNPhysicsShape], transforms: [NSValue]?)
  @available(macOS 10.11, *)
  var options: [SCNPhysicsShape.Option : Any]? { get }
  @available(macOS 10.11, *)
  var sourceObject: Any { get }
  @available(macOS 10.11, *)
  var transforms: [NSValue]? { get }
}
