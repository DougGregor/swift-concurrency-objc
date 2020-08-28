
class SCNRenderer : NSObject, SCNSceneRenderer, SCNTechniqueSupport {
  convenience init(context: CGLContextObj?, options: [AnyHashable : Any]? = nil)
  @available(macOS 10.11, *)
  convenience init(device: MTLDevice?, options: [AnyHashable : Any]? = nil)
  @available(macOS 10.11, *)
  func render(atTime time: CFTimeInterval, viewport: CGRect, commandBuffer: MTLCommandBuffer, passDescriptor renderPassDescriptor: MTLRenderPassDescriptor)
  @available(macOS 10.10, *)
  func render(atTime time: CFTimeInterval)
  @available(macOS 10.13, *)
  func update(atTime time: CFTimeInterval)
  @available(macOS 10.13, *)
  func render(withViewport viewport: CGRect, commandBuffer: MTLCommandBuffer, passDescriptor renderPassDescriptor: MTLRenderPassDescriptor)
  @available(macOS 10.10, *)
  var nextFrameTime: CFTimeInterval { get }
  @available(macOS 10.12, *)
  func snapshot(atTime time: CFTimeInterval, with size: CGSize, antialiasingMode: SCNAntialiasingMode) -> NSImage
  @available(macOS 10.12, *)
  func updateProbes(_ lightProbes: [SCNNode], atTime time: CFTimeInterval)
}
