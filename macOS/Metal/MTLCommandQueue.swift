
@available(macOS 10.11, *)
protocol MTLCommandQueue : NSObjectProtocol {
  var label: String? { get set }
  var device: MTLDevice { get }
  func makeCommandBuffer() -> MTLCommandBuffer?
  @available(macOS 11.0, *)
  func makeCommandBuffer(descriptor: MTLCommandBufferDescriptor) -> MTLCommandBuffer?
  func makeCommandBufferWithUnretainedReferences() -> MTLCommandBuffer?
  @available(macOS, introduced: 10.11, deprecated: 10.13, message: "Use MTLCaptureScope instead")
  func insertDebugCaptureBoundary()
}
