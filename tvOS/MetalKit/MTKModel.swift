
struct MTKModelError : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension MTKModelError {
  @available(tvOS 9.0, *)
  static let domain: MTKModelError
  @available(tvOS 9.0, *)
  static let key: MTKModelError
}
@available(tvOS 9.0, *)
class MTKMeshBufferAllocator : NSObject, MDLMeshBufferAllocator {
  init(device: MTLDevice)
  var device: MTLDevice { get }
}
@available(tvOS 9.0, *)
class MTKMeshBuffer : NSObject, MDLMeshBuffer, MDLNamed {
  var buffer: MTLBuffer { get }
  var offset: Int { get }
}
@available(tvOS 9.0, *)
class MTKSubmesh : NSObject {
  var primitiveType: MTLPrimitiveType { get }
  var indexType: MTLIndexType { get }
  var indexBuffer: MTKMeshBuffer { get }
  var indexCount: Int { get }
  weak var mesh: @sil_weak MTKMesh? { get }
  var name: String
}
@available(tvOS 9.0, *)
class MTKMesh : NSObject {
  init(mesh: MDLMesh, device: MTLDevice) throws
  class func __newMeshes(from asset: MDLAsset, device: MTLDevice, sourceMeshes: AutoreleasingUnsafeMutablePointer<NSArray?>?) throws -> [MTKMesh]
  var vertexBuffers: [MTKMeshBuffer] { get }
  var vertexDescriptor: MDLVertexDescriptor { get }
  var submeshes: [MTKSubmesh] { get }
  var vertexCount: Int { get }
  var name: String
}

@available(macOS 10.11, iOS 9.0, tvOS 9.0, *)
extension MTKMesh {
  class func newMeshes(asset: MDLAsset, device: MTLDevice) throws -> (modelIOMeshes: [MDLMesh], metalKitMeshes: [MTKMesh])
}
@available(tvOS 9.0, *)
func MTKModelIOVertexDescriptorFromMetal(_ metalDescriptor: MTLVertexDescriptor) -> MDLVertexDescriptor
@available(tvOS 10.0, *)
func __MTKModelIOVertexDescriptorFromMetalWithError(_ metalDescriptor: MTLVertexDescriptor, _ error: NSErrorPointer) -> MDLVertexDescriptor
@available(tvOS 9.0, *)
func MTKMetalVertexDescriptorFromModelIO(_ modelIODescriptor: MDLVertexDescriptor) -> MTLVertexDescriptor?
@available(tvOS 10.0, *)
func __MTKMetalVertexDescriptorFromModelIOWithError(_ modelIODescriptor: MDLVertexDescriptor, _ error: NSErrorPointer) -> MTLVertexDescriptor?
@available(tvOS 9.0, *)
func MTKModelIOVertexFormatFromMetal(_ vertexFormat: MTLVertexFormat) -> MDLVertexFormat
@available(tvOS 9.0, *)
func MTKMetalVertexFormatFromModelIO(_ vertexFormat: MDLVertexFormat) -> MTLVertexFormat
