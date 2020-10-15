
@available(macOS 10.11, *)
class MDLAsset : NSObject, NSCopying, NSFastEnumeration {
  init(url URL: URL)
  init(url URL: URL?, vertexDescriptor: MDLVertexDescriptor?, bufferAllocator: MDLMeshBufferAllocator?)
  init(bufferAllocator: MDLMeshBufferAllocator?)
  init(url URL: URL, vertexDescriptor: MDLVertexDescriptor?, bufferAllocator: MDLMeshBufferAllocator?, preserveTopology: Bool, error: NSErrorPointer)
  func export(to URL: URL) throws
  @available(macOS 10.13, *)
  func object(atPath path: String) -> MDLObject
  class func canImportFileExtension(_ extension: String) -> Bool
  class func canExportFileExtension(_ extension: String) -> Bool
  func childObjects(of objectClass: AnyClass) -> [MDLObject]
  @available(macOS 10.13, *)
  func loadTextures()
  func boundingBox(atTime time: TimeInterval) -> MDLAxisAlignedBoundingBox
  var boundingBox: MDLAxisAlignedBoundingBox { get }
  var frameInterval: TimeInterval
  var startTime: TimeInterval
  var endTime: TimeInterval
  @available(macOS 10.13, *)
  var upAxis: vector_float3
  var url: URL? { get }
  @available(macOS 10.13, *)
  var resolver: MDLAssetResolver?
  var bufferAllocator: MDLMeshBufferAllocator { get }
  var vertexDescriptor: MDLVertexDescriptor? { get }
  func add(_ object: MDLObject)
  func remove(_ object: MDLObject)
  var count: Int { get }
  subscript(index: Int) -> MDLObject? { get }
  func object(at index: Int) -> MDLObject
  var masters: MDLObjectContainerComponent
  @available(macOS 10.13, *)
  var animations: MDLObjectContainerComponent
}
protocol MDLLightProbeIrradianceDataSource : NSObjectProtocol {
  var boundingBox: MDLAxisAlignedBoundingBox { get set }
  optional var sphericalHarmonicsLevel: Int { get set }
  optional func sphericalHarmonicsCoefficients(atPosition position: vector_float3) -> Data
}
extension MDLAsset {
  class func placeLightProbes(withDensity value: Float, heuristic type: MDLProbePlacement, using dataSource: MDLLightProbeIrradianceDataSource) -> [MDLLightProbe]
}
