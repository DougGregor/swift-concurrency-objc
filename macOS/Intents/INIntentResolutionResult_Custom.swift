
extension INIntentResolutionResult {
  @available(macOS 11.0, *)
  class func __unsupported(withReason reason: Int) -> Self
  @available(macOS 11.0, *)
  class func __confirmationRequiredWithItem(toConfirm itemToConfirm: Any, forReason reason: Int) -> Self
}
