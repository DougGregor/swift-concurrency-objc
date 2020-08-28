
typealias MDLVoxelIndex = vector_int4
struct MDLVoxelIndexExtent {
  var minimumExtent: MDLVoxelIndex
  var maximumExtent: MDLVoxelIndex
  init()
  init(minimumExtent: MDLVoxelIndex, maximumExtent: MDLVoxelIndex)
}
@available(macOS 10.11, *)
class MDLVoxelArray : MDLObject {
  init(asset: MDLAsset, divisions: Int32, patchRadius: Float)
  init(data voxelData: Data, boundingBox: MDLAxisAlignedBoundingBox, voxelExtent: Float)
  @available(macOS, introduced: 10.11, deprecated: 10.12)
  init(asset: MDLAsset, divisions: Int32, interiorShells: Int32, exteriorShells: Int32, patchRadius: Float)
  @available(macOS, introduced: 10.11, deprecated: 10.12)
  init(asset: MDLAsset, divisions: Int32, interiorNBWidth: Float, exteriorNBWidth: Float, patchRadius: Float)
  var count: Int { get }
  var voxelIndexExtent: MDLVoxelIndexExtent { get }
  func voxelExists(atIndex index: MDLVoxelIndex, allowAnyX: Bool, allowAnyY: Bool, allowAnyZ: Bool, allowAnyShell: Bool) -> Bool
  func voxels(within extent: MDLVoxelIndexExtent) -> Data?
  func voxelIndices() -> Data?
  func setVoxelAtIndex(_ index: MDLVoxelIndex)
  func setVoxelsFor(_ mesh: MDLMesh, divisions: Int32, patchRadius: Float)
  @available(macOS, introduced: 10.11, deprecated: 10.12)
  func setVoxelsFor(_ mesh: MDLMesh, divisions: Int32, interiorShells: Int32, exteriorShells: Int32, patchRadius: Float)
  @available(macOS, introduced: 10.11, deprecated: 10.12)
  func setVoxelsFor(_ mesh: MDLMesh, divisions: Int32, interiorNBWidth: Float, exteriorNBWidth: Float, patchRadius: Float)
  func union(with voxels: MDLVoxelArray)
  func intersect(with voxels: MDLVoxelArray)
  func difference(with voxels: MDLVoxelArray)
  var boundingBox: MDLAxisAlignedBoundingBox { get }
  func index(ofSpatialLocation location: vector_float3) -> MDLVoxelIndex
  func spatialLocation(ofIndex index: MDLVoxelIndex) -> vector_float3
  func voxelBoundingBox(atIndex index: MDLVoxelIndex) -> MDLAxisAlignedBoundingBox
  func convertToSignedShellField()
  var isValidSignedShellField: Bool { get }
  var shellFieldInteriorThickness: Float
  var shellFieldExteriorThickness: Float
  func coarseMesh() -> MDLMesh?
  func coarseMesh(using allocator: MDLMeshBufferAllocator?) -> MDLMesh?
  func mesh(using allocator: MDLMeshBufferAllocator?) -> MDLMesh?
}
