
@available(iOS 11.0, *)
class SKRenderer : NSObject {
  /*not inherited*/ init(device: MTLDevice)
  func render(withViewport viewport: CGRect, commandBuffer: MTLCommandBuffer, renderPassDescriptor: MTLRenderPassDescriptor)
  func render(withViewport viewport: CGRect, renderCommandEncoder: MTLRenderCommandEncoder, renderPassDescriptor: MTLRenderPassDescriptor, commandQueue: MTLCommandQueue)
  func update(atTime currentTime: TimeInterval)
  var scene: SKScene?
  var ignoresSiblingOrder: Bool
  var shouldCullNonVisibleNodes: Bool
  var showsDrawCount: Bool
  var showsNodeCount: Bool
  var showsQuadCount: Bool
  var showsPhysics: Bool
  var showsFields: Bool
}
