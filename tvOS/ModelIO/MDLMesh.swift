
@available(tvOS 9.0, *)
class MDLVertexAttributeData : NSObject {
  var map: MDLMeshBufferMap
  var dataStart: UnsafeMutableRawPointer
  var stride: Int
  var format: MDLVertexFormat
  @available(tvOS 11.0, *)
  var bufferSize: Int
}
@available(tvOS 9.0, *)
class MDLMesh : MDLObject {
  init(bufferAllocator: MDLMeshBufferAllocator?)
  init(vertexBuffer: MDLMeshBuffer, vertexCount: Int, descriptor: MDLVertexDescriptor, submeshes: [MDLSubmesh])
  init(vertexBuffers: [MDLMeshBuffer], vertexCount: Int, descriptor: MDLVertexDescriptor, submeshes: [MDLSubmesh])
  func vertexAttributeData(forAttributeNamed name: String) -> MDLVertexAttributeData?
  func vertexAttributeData(forAttributeNamed name: String, as format: MDLVertexFormat) -> MDLVertexAttributeData?
  var boundingBox: MDLAxisAlignedBoundingBox { get }
  @NSCopying var vertexDescriptor: MDLVertexDescriptor
  var vertexCount: Int
  var vertexBuffers: [MDLMeshBuffer]
  @NSCopying var submeshes: NSMutableArray?
  var allocator: MDLMeshBufferAllocator { get }
}
extension MDLMesh {
  func addAttribute(withName name: String, format: MDLVertexFormat)
  func addAttribute(withName name: String, format: MDLVertexFormat, type: String, data: Data, stride: Int)
  func addAttribute(withName name: String, format: MDLVertexFormat, type: String, data: Data, stride: Int, time: TimeInterval)
  func addNormals(withAttributeNamed attributeName: String?, creaseThreshold: Float)
  func addTangentBasis(forTextureCoordinateAttributeNamed textureCoordinateAttributeName: String, tangentAttributeNamed tangentAttributeName: String, bitangentAttributeNamed bitangentAttributeName: String?)
  func addTangentBasis(forTextureCoordinateAttributeNamed textureCoordinateAttributeName: String, normalAttributeNamed normalAttributeName: String, tangentAttributeNamed tangentAttributeName: String)
  @available(tvOS 11.0, *)
  func addOrthTanBasis(forTextureCoordinateAttributeNamed textureCoordinateAttributeName: String, normalAttributeNamed normalAttributeName: String, tangentAttributeNamed tangentAttributeName: String)
  func addUnwrappedTextureCoordinates(forAttributeNamed textureCoordinateAttributeName: String)
  @available(tvOS 11.0, *)
  func flipTextureCoordinates(inAttributeNamed textureCoordinateAttributeName: String)
  @available(tvOS, introduced: 9.0, deprecated: 11.0)
  func makeVerticesUnique()
  @available(tvOS 11.0, *)
  func makeVerticesUniqueAndReturnError() throws
  func replaceAttributeNamed(_ name: String, with newData: MDLVertexAttributeData)
  func updateAttributeNamed(_ name: String, with newData: MDLVertexAttributeData)
  func removeAttributeNamed(_ name: String)
}
extension MDLMesh {
  init(boxWithExtent extent: vector_float3, segments: vector_uint3, inwardNormals: Bool, geometryType: MDLGeometryType, allocator: MDLMeshBufferAllocator?)
  init(sphereWithExtent extent: vector_float3, segments: vector_uint2, inwardNormals: Bool, geometryType: MDLGeometryType, allocator: MDLMeshBufferAllocator?)
  init(hemisphereWithExtent extent: vector_float3, segments: vector_uint2, inwardNormals: Bool, cap: Bool, geometryType: MDLGeometryType, allocator: MDLMeshBufferAllocator?)
  init(cylinderWithExtent extent: vector_float3, segments: vector_uint2, inwardNormals: Bool, topCap: Bool, bottomCap: Bool, geometryType: MDLGeometryType, allocator: MDLMeshBufferAllocator?)
  init(capsuleWithExtent extent: vector_float3, cylinderSegments segments: vector_uint2, hemisphereSegments: Int32, inwardNormals: Bool, geometryType: MDLGeometryType, allocator: MDLMeshBufferAllocator?)
  init(coneWithExtent extent: vector_float3, segments: vector_uint2, inwardNormals: Bool, cap: Bool, geometryType: MDLGeometryType, allocator: MDLMeshBufferAllocator?)
  init(planeWithExtent extent: vector_float3, segments: vector_uint2, geometryType: MDLGeometryType, allocator: MDLMeshBufferAllocator?)
  init(icosahedronWithExtent extent: vector_float3, inwardNormals: Bool, geometryType: MDLGeometryType, allocator: MDLMeshBufferAllocator?)
  init(meshBySubdividingMesh mesh: MDLMesh, submeshIndex: Int32, subdivisionLevels: UInt32, allocator: MDLMeshBufferAllocator?)
  class func newBox(withDimensions dimensions: vector_float3, segments: vector_uint3, geometryType: MDLGeometryType, inwardNormals: Bool, allocator: MDLMeshBufferAllocator?) -> Self
  class func newEllipsoid(withRadii radii: vector_float3, radialSegments: Int, verticalSegments: Int, geometryType: MDLGeometryType, inwardNormals: Bool, hemisphere: Bool, allocator: MDLMeshBufferAllocator?) -> Self
  class func newCylinder(withHeight height: Float, radii: vector_float2, radialSegments: Int, verticalSegments: Int, geometryType: MDLGeometryType, inwardNormals: Bool, allocator: MDLMeshBufferAllocator?) -> Self
  @available(tvOS 11.0, *)
  class func newCapsule(withHeight height: Float, radii: vector_float2, radialSegments: Int, verticalSegments: Int, hemisphereSegments: Int, geometryType: MDLGeometryType, inwardNormals: Bool, allocator: MDLMeshBufferAllocator?) -> Self
  class func newEllipticalCone(withHeight height: Float, radii: vector_float2, radialSegments: Int, verticalSegments: Int, geometryType: MDLGeometryType, inwardNormals: Bool, allocator: MDLMeshBufferAllocator?) -> Self
  class func newPlane(withDimensions dimensions: vector_float2, segments: vector_uint2, geometryType: MDLGeometryType, allocator: MDLMeshBufferAllocator?) -> Self
  @available(tvOS 11.0, *)
  class func newIcosahedron(withRadius radius: Float, inwardNormals: Bool, geometryType: MDLGeometryType, allocator: MDLMeshBufferAllocator?) -> Self
  class func newIcosahedron(withRadius radius: Float, inwardNormals: Bool, allocator: MDLMeshBufferAllocator?) -> Self
  class func newSubdividedMesh(_ mesh: MDLMesh, submeshIndex: Int, subdivisionLevels: Int) -> Self?
}
extension MDLMesh {
  func generateAmbientOcclusionTexture(withSize textureSize: vector_int2, raysPerSample: Int, attenuationFactor: Float, objectsToConsider: [MDLObject], vertexAttributeNamed vertexAttributeName: String, materialPropertyNamed materialPropertyName: String) -> Bool
  func generateAmbientOcclusionTexture(withQuality bakeQuality: Float, attenuationFactor: Float, objectsToConsider: [MDLObject], vertexAttributeNamed vertexAttributeName: String, materialPropertyNamed materialPropertyName: String) -> Bool
  func generateAmbientOcclusionVertexColors(withRaysPerSample raysPerSample: Int, attenuationFactor: Float, objectsToConsider: [MDLObject], vertexAttributeNamed vertexAttributeName: String) -> Bool
  func generateAmbientOcclusionVertexColors(withQuality bakeQuality: Float, attenuationFactor: Float, objectsToConsider: [MDLObject], vertexAttributeNamed vertexAttributeName: String) -> Bool
  func generateLightMapTexture(withTextureSize textureSize: vector_int2, lightsToConsider: [MDLLight], objectsToConsider: [MDLObject], vertexAttributeNamed vertexAttributeName: String, materialPropertyNamed materialPropertyName: String) -> Bool
  func generateLightMapTexture(withQuality bakeQuality: Float, lightsToConsider: [MDLLight], objectsToConsider: [MDLObject], vertexAttributeNamed vertexAttributeName: String, materialPropertyNamed materialPropertyName: String) -> Bool
  func generateLightMapVertexColorsWithLights(toConsider lightsToConsider: [MDLLight], objectsToConsider: [MDLObject], vertexAttributeNamed vertexAttributeName: String) -> Bool
}
