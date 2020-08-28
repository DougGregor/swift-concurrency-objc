
@available(iOS 8.0, *)
protocol MTLCommandQueue : NSObjectProtocol {
  var label: String? { get set }
  var device: MTLDevice { get }
  func makeCommandBuffer() -> MTLCommandBuffer?
  @available(iOS 14.0, *)
  func makeCommandBuffer(descriptor: MTLCommandBufferDescriptor) -> MTLCommandBuffer?
  func makeCommandBufferWithUnretainedReferences() -> MTLCommandBuffer?
  @available(iOS, introduced: 8.0, deprecated: 11.0, message: "Use MTLCaptureScope instead")
  func insertDebugCaptureBoundary()
}
