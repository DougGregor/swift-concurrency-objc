
enum SCNGeometryPrimitiveType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case triangles
  case triangleStrip
  case line
  case point
  @available(macOS 10.12, *)
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
  @available(macOS 10.12, *)
  static let tangent: SCNGeometrySource.Semantic
  @available(macOS 10.10, *)
  static let vertexCrease: SCNGeometrySource.Semantic
  @available(macOS 10.10, *)
  static let edgeCrease: SCNGeometrySource.Semantic
  @available(macOS 10.10, *)
  static let boneWeights: SCNGeometrySource.Semantic
  @available(macOS 10.10, *)
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
  @available(macOS 10.10, *)
  var sources: [SCNGeometrySource] { get }
  func sources(for semantic: SCNGeometrySource.Semantic) -> [SCNGeometrySource]
  @available(macOS 10.10, *)
  var elements: [SCNGeometryElement] { get }
  var elementCount: Int { get }
  func element(at elementIndex: Int) -> SCNGeometryElement
  @available(macOS 10.9, *)
  var levelsOfDetail: [SCNLevelOfDetail]?
  @available(macOS 10.13, *)
  var tessellator: SCNGeometryTessellator?
  @available(macOS 10.10, *)
  var subdivisionLevel: Int
  @available(macOS 10.13, *)
  var wantsAdaptiveSubdivision: Bool
  @available(macOS 10.10, *)
  var edgeCreasesElement: SCNGeometryElement?
  @available(macOS 10.10, *)
  var edgeCreasesSource: SCNGeometrySource?
}
class SCNGeometrySource : NSObject, NSSecureCoding {
  convenience init(data: Data, semantic: SCNGeometrySource.Semantic, vectorCount: Int, usesFloatComponents floatComponents: Bool, componentsPerVector: Int, bytesPerComponent: Int, dataOffset offset: Int, dataStride stride: Int)
  convenience init(__vertices vertices: UnsafePointer<SCNVector3>, count: Int)
  convenience init(__normals normals: UnsafePointer<SCNVector3>, count: Int)
  convenience init(__textureCoordinates texcoord: UnsafePointer<CGPoint>, count: Int)
  @available(macOS 10.11, *)
  convenience init(buffer: MTLBuffer, vertexFormat: MTLVertexFormat, semantic: SCNGeometrySource.Semantic, vertexCount: Int, dataOffset offset: Int, dataStride stride: Int)
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
  @available(macOS 11.0, *)
  convenience init(buffer: MTLBuffer, primitiveType: SCNGeometryPrimitiveType, primitiveCount: Int, bytesPerIndex: Int)
  var data: Data { get }
  var primitiveType: SCNGeometryPrimitiveType { get }
  var primitiveCount: Int { get }
  @available(macOS 10.13, *)
  var primitiveRange: NSRange
  var bytesPerIndex: Int { get }
  @available(macOS 10.13, *)
  var pointSize: CGFloat
  @available(macOS 10.13, *)
  var minimumPointScreenSpaceRadius: CGFloat
  @available(macOS 10.13, *)
  var maximumPointScreenSpaceRadius: CGFloat
}

@available(iOS 8.0, macOS 10.8, *)
extension SCNGeometryElement {
  convenience init<IndexType>(indices: [IndexType], primitiveType: SCNGeometryPrimitiveType) where IndexType : FixedWidthInteger
}
@available(macOS 10.13, *)
enum SCNTessellationSmoothingMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case none
  case pnTriangles
  case phong
}
@available(macOS 10.13, *)
class SCNGeometryTessellator : NSObject, NSCopying, NSSecureCoding {
  var tessellationFactorScale: CGFloat
  var tessellationPartitionMode: MTLTessellationPartitionMode
  var isAdaptive: Bool
  var isScreenSpace: Bool
  var edgeTessellationFactor: CGFloat
  var insideTessellationFactor: CGFloat
  var maximumEdgeLength: CGFloat
  var smoothingMode: SCNTessellationSmoothingMode
}
