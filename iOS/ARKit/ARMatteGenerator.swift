
extension ARMatteGenerator {
  @available(iOS 13.0, *)
  enum Resolution : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case full
    case half
  }
}
@available(iOS 13.0, *)
class ARMatteGenerator : NSObject {
  init(device: MTLDevice, matteResolution: ARMatteGenerator.Resolution)
  func generateMatte(from frame: ARFrame, commandBuffer: MTLCommandBuffer) -> MTLTexture
  func generateDilatedDepth(from frame: ARFrame, commandBuffer: MTLCommandBuffer) -> MTLTexture
}
