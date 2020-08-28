
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
  static let type: SCNPhysicsShape.Option
  static let keepAsCompound: SCNPhysicsShape.Option
  static let scale: SCNPhysicsShape.Option
  @available(watchOS 3.0, *)
  static let collisionMargin: SCNPhysicsShape.Option
}
extension SCNPhysicsShape.ShapeType {
  static let boundingBox: SCNPhysicsShape.ShapeType
  static let convexHull: SCNPhysicsShape.ShapeType
  static let concavePolyhedron: SCNPhysicsShape.ShapeType
}
class SCNPhysicsShape : NSObject, NSCopying, NSSecureCoding {
  convenience init(geometry: SCNGeometry, options: [SCNPhysicsShape.Option : Any]? = nil)
  convenience init(node: SCNNode, options: [SCNPhysicsShape.Option : Any]? = nil)
  convenience init(shapes: [SCNPhysicsShape], transforms: [NSValue]?)
  @available(watchOS 2.0, *)
  var options: [SCNPhysicsShape.Option : Any]? { get }
  @available(watchOS 2.0, *)
  var sourceObject: Any { get }
  @available(watchOS 2.0, *)
  var transforms: [NSValue]? { get }
}
