
@available(iOS 13.4, *)
class ARGeometrySource : NSObject, NSSecureCoding {
  var buffer: MTLBuffer { get }
  var count: Int { get }
  var format: MTLVertexFormat { get }
  var componentsPerVector: Int { get }
  var offset: Int { get }
  var stride: Int { get }
}

@available(iOS 13.4, *)
extension ARGeometrySource {
  @available(iOS 14.0, *)
  @nonobjc subscript(index: Int32) -> (Float, Float, Float) { get }
  @available(iOS 14.0, *)
  @nonobjc subscript(index: Int32) -> CUnsignedChar { get }
}
@available(iOS 13.4, *)
enum ARGeometryPrimitiveType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case line
  case triangle
}
@available(iOS 13.4, *)
class ARGeometryElement : NSObject, NSSecureCoding {
  var buffer: MTLBuffer { get }
  var count: Int { get }
  var bytesPerIndex: Int { get }
  var indexCountPerPrimitive: Int { get }
  var primitiveType: ARGeometryPrimitiveType { get }
}

@available(iOS 13.4, *)
extension ARGeometryElement {
  @available(iOS 14.0, *)
  @nonobjc subscript(index: Int) -> [Int32] { get }
}
@available(iOS 13.4, *)
enum ARMeshClassification : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case none
  case wall
  case floor
  case ceiling
  case table
  case seat
  case window
  case door
}
@available(iOS 13.4, *)
class ARMeshGeometry : NSObject, NSSecureCoding {
  var vertices: ARGeometrySource { get }
  var normals: ARGeometrySource { get }
  var faces: ARGeometryElement { get }
  var classification: ARGeometrySource? { get }
}
