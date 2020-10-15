
enum SCNGeometryPrimitiveType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case triangles
  case triangleStrip
  case line
  case point
  @available(watchOS 3.0, *)
  case polygon
}
extension SCNGeometrySource {
  struct Semantic : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(_ rawValue: String)
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
}
extension SCNGeometrySource.Semantic {
  static let vertex: SCNGeometrySource.Semantic
  static let normal: SCNGeometrySource.Semantic
  static let color: SCNGeometrySource.Semantic
  static let texcoord: SCNGeometrySource.Semantic
  @available(watchOS 3.0, *)
  static let tangent: SCNGeometrySource.Semantic
  static let vertexCrease: SCNGeometrySource.Semantic
  static let edgeCrease: SCNGeometrySource.Semantic
  static let boneWeights: SCNGeometrySource.Semantic
  static let boneIndices: SCNGeometrySource.Semantic
}
class SCNGeometry : NSObject, SCNAnimatable, SCNBoundingVolume, SCNShadable, NSCopying, NSSecureCoding {
  var name: String?
  var materials: [SCNMaterial]
  var firstMaterial: SCNMaterial?
  func insertMaterial(_ material: SCNMaterial, at index: Int)
  func removeMaterial(at index: Int)
  func replaceMaterial(at index: Int, with material: SCNMaterial)
  func material(named name: String) -> SCNMaterial?
  convenience init(sources: [SCNGeometrySource], elements: [SCNGeometryElement]?)
  var sources: [SCNGeometrySource] { get }
  func sources(for semantic: SCNGeometrySource.Semantic) -> [SCNGeometrySource]
  var elements: [SCNGeometryElement] { get }
  var elementCount: Int { get }
  func element(at elementIndex: Int) -> SCNGeometryElement
  var levelsOfDetail: [SCNLevelOfDetail]?
  var subdivisionLevel: Int
  @available(watchOS 4.0, *)
  var wantsAdaptiveSubdivision: Bool
  var edgeCreasesElement: SCNGeometryElement?
  var edgeCreasesSource: SCNGeometrySource?
}
class SCNGeometrySource : NSObject, NSSecureCoding {
  convenience init(data: Data, semantic: SCNGeometrySource.Semantic, vectorCount: Int, usesFloatComponents floatComponents: Bool, componentsPerVector: Int, bytesPerComponent: Int, dataOffset offset: Int, dataStride stride: Int)
  convenience init(__vertices vertices: UnsafePointer<SCNVector3>, count: Int)
  convenience init(__normals normals: UnsafePointer<SCNVector3>, count: Int)
  convenience init(__textureCoordinates texcoord: UnsafePointer<CGPoint>, count: Int)
  var data: Data { get }
  var semantic: SCNGeometrySource.Semantic { get }
  var vectorCount: Int { get }
  var usesFloatComponents: Bool { get }
  var componentsPerVector: Int { get }
  var bytesPerComponent: Int { get }
  var dataOffset: Int { get }
  var dataStride: Int { get }
}

@available(iOS 8.0, macOS 10.8, *)
extension SCNGeometrySource {
  @nonobjc convenience init(vertices: [SCNVector3])
  @nonobjc convenience init(normals: [SCNVector3])
  @nonobjc convenience init(textureCoordinates: [CGPoint])
}
class SCNGeometryElement : NSObject, NSSecureCoding {
  convenience init(data: Data?, primitiveType: SCNGeometryPrimitiveType, primitiveCount: Int, bytesPerIndex: Int)
  var data: Data { get }
  var primitiveType: SCNGeometryPrimitiveType { get }
  var primitiveCount: Int { get }
  @available(watchOS 4.0, *)
  var primitiveRange: NSRange
  var bytesPerIndex: Int { get }
  @available(watchOS 4.0, *)
  var pointSize: CGFloat
  @available(watchOS 4.0, *)
  var minimumPointScreenSpaceRadius: CGFloat
  @available(watchOS 4.0, *)
  var maximumPointScreenSpaceRadius: CGFloat
}

@available(iOS 8.0, macOS 10.8, *)
extension SCNGeometryElement {
  convenience init<IndexType>(indices: [IndexType], primitiveType: SCNGeometryPrimitiveType) where IndexType : FixedWidthInteger
}
