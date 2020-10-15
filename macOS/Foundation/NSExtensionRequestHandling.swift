
protocol NSExtensionRequestHandling : NSObjectProtocol {
  @available(macOS 10.10, *)
  func beginRequest(with context: NSExtensionContext)
}
