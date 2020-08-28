
@available(tvOS 9.0, *)
class MDLSubmeshTopology : NSObject {
  init(submesh: MDLSubmesh)
  var faceTopology: MDLMeshBuffer?
  var faceCount: Int
  var vertexCreaseIndices: MDLMeshBuffer?
  var vertexCreases: MDLMeshBuffer?
  var vertexCreaseCount: Int
  var edgeCreaseIndices: MDLMeshBuffer?
  var edgeCreases: MDLMeshBuffer?
  var edgeCreaseCount: Int
  var holes: MDLMeshBuffer?
  var holeCount: Int
}
@available(tvOS 9.0, *)
class MDLSubmesh : NSObject, MDLNamed {
  init(name: String, indexBuffer: MDLMeshBuffer, indexCount: Int, indexType: MDLIndexBitDepth, geometryType: MDLGeometryType, material: MDLMaterial?)
  init(indexBuffer: MDLMeshBuffer, indexCount: Int, indexType: MDLIndexBitDepth, geometryType: MDLGeometryType, material: MDLMaterial?)
  init(name: String, indexBuffer: MDLMeshBuffer, indexCount: Int, indexType: MDLIndexBitDepth, geometryType: MDLGeometryType, material: MDLMaterial?, topology: MDLSubmeshTopology?)
  init?(mdlSubmesh submesh: MDLSubmesh, indexType: MDLIndexBitDepth, geometryType: MDLGeometryType)
  var indexBuffer: MDLMeshBuffer { get }
  func indexBuffer(asIndexType indexType: MDLIndexBitDepth) -> MDLMeshBuffer
  var indexCount: Int { get }
  var indexType: MDLIndexBitDepth { get }
  var geometryType: MDLGeometryType { get }
  var material: MDLMaterial?
  var topology: MDLSubmeshTopology?
}
