
class SCNRenderer : NSObject, SCNSceneRenderer, SCNTechniqueSupport {
  convenience init(context: EAGLContext?, options: [AnyHashable : Any]? = nil)
  @available(tvOS 9.0, *)
  convenience init(device: MTLDevice?, options: [AnyHashable : Any]? = nil)
  @available(tvOS 9.0, *)
  func render(atTime time: CFTimeInterval, viewport: CGRect, commandBuffer: MTLCommandBuffer, passDescriptor renderPassDescriptor: MTLRenderPassDescriptor)
  func render(atTime time: CFTimeInterval)
  @available(tvOS 11.0, *)
  func update(atTime time: CFTimeInterval)
  @available(tvOS 11.0, *)
  func render(withViewport viewport: CGRect, commandBuffer: MTLCommandBuffer, passDescriptor renderPassDescriptor: MTLRenderPassDescriptor)
  var nextFrameTime: CFTimeInterval { get }
  @available(tvOS 10.0, *)
  func snapshot(atTime time: CFTimeInterval, with size: CGSize, antialiasingMode: SCNAntialiasingMode) -> UIImage
  @available(tvOS 10.0, *)
  func updateProbes(_ lightProbes: [SCNNode], atTime time: CFTimeInterval)
}
