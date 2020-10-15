
@available(swift 4)
@available(macOS 10.12, iOS 10.0, tvOS 10.0, *)
func MTKMetalVertexDescriptorFromModelIOWithError(_ modelIODescriptor: MDLVertexDescriptor) throws -> MTLVertexDescriptor?

@available(swift 4)
@available(macOS 10.12, iOS 10.0, tvOS 10.0, *)
func MTKModelIOVertexDescriptorFromMetalWithError(_ metalDescriptor: MTLVertexDescriptor) throws -> MDLVertexDescriptor

@available(macOS 10.11, iOS 9.0, tvOS 9.0, *)
extension MTKMesh {
  class func newMeshes(asset: MDLAsset, device: MTLDevice) throws -> (modelIOMeshes: [MDLMesh], metalKitMeshes: [MTKMesh])
}

