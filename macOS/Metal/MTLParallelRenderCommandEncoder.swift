
@available(macOS 10.11, *)
protocol MTLParallelRenderCommandEncoder : MTLCommandEncoder {
  func makeRenderCommandEncoder() -> MTLRenderCommandEncoder?
  @available(macOS 10.12, *)
  func setColorStoreAction(_ storeAction: MTLStoreAction, index colorAttachmentIndex: Int)
  @available(macOS 10.12, *)
  func setDepthStoreAction(_ storeAction: MTLStoreAction)
  @available(macOS 10.12, *)
  func setStencilStoreAction(_ storeAction: MTLStoreAction)
  @available(macOS 10.13, *)
  func setColorStoreActionOptions(_ storeActionOptions: MTLStoreActionOptions, index colorAttachmentIndex: Int)
  @available(macOS 10.13, *)
  func setDepthStoreActionOptions(_ storeActionOptions: MTLStoreActionOptions)
  @available(macOS 10.13, *)
  func setStencilStoreActionOptions(_ storeActionOptions: MTLStoreActionOptions)
}
