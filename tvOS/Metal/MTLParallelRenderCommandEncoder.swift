
@available(tvOS 8.0, *)
protocol MTLParallelRenderCommandEncoder : MTLCommandEncoder {
  func makeRenderCommandEncoder() -> MTLRenderCommandEncoder?
  @available(tvOS 10.0, *)
  func setColorStoreAction(_ storeAction: MTLStoreAction, index colorAttachmentIndex: Int)
  @available(tvOS 10.0, *)
  func setDepthStoreAction(_ storeAction: MTLStoreAction)
  @available(tvOS 10.0, *)
  func setStencilStoreAction(_ storeAction: MTLStoreAction)
  @available(tvOS 11.0, *)
  func setColorStoreActionOptions(_ storeActionOptions: MTLStoreActionOptions, index colorAttachmentIndex: Int)
  @available(tvOS 11.0, *)
  func setDepthStoreActionOptions(_ storeActionOptions: MTLStoreActionOptions)
  @available(tvOS 11.0, *)
  func setStencilStoreActionOptions(_ storeActionOptions: MTLStoreActionOptions)
}
