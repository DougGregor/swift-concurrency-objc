
@available(iOS 8.0, *)
protocol MTLParallelRenderCommandEncoder : MTLCommandEncoder {
  func makeRenderCommandEncoder() -> MTLRenderCommandEncoder?
  @available(iOS 10.0, *)
  func setColorStoreAction(_ storeAction: MTLStoreAction, index colorAttachmentIndex: Int)
  @available(iOS 10.0, *)
  func setDepthStoreAction(_ storeAction: MTLStoreAction)
  @available(iOS 10.0, *)
  func setStencilStoreAction(_ storeAction: MTLStoreAction)
  @available(iOS 11.0, *)
  func setColorStoreActionOptions(_ storeActionOptions: MTLStoreActionOptions, index colorAttachmentIndex: Int)
  @available(iOS 11.0, *)
  func setDepthStoreActionOptions(_ storeActionOptions: MTLStoreActionOptions)
  @available(iOS 11.0, *)
  func setStencilStoreActionOptions(_ storeActionOptions: MTLStoreActionOptions)
}
