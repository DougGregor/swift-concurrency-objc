
@available(macOS 10.11, *)
protocol PHContentEditingController : NSObjectProtocol {
  @available(macOS 10.11, *)
  func canHandle(_ adjustmentData: PHAdjustmentData) -> Bool
  @available(macOS 10.11, *)
  func startContentEditing(with contentEditingInput: PHContentEditingInput, placeholderImage: NSImage)
  @available(macOS 10.11, *)
  func finishContentEditing(completionHandler: @escaping (PHContentEditingOutput?) -> Void)
  @available(macOS 10.11, *)
  func finishContentEditing() async -> PHContentEditingOutput?
  @available(macOS 10.11, *)
  func cancelContentEditing()
  @available(macOS 10.11, *)
  var shouldShowCancelConfirmation: Bool { get }
}
