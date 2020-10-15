
protocol NSExtensionRequestHandling : NSObjectProtocol {
  @available(tvOS 9.0, *)
  func beginRequest(with context: NSExtensionContext)
}
