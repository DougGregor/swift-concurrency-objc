
@available(iOS 8, *)
protocol PHContentEditingController : NSObjectProtocol {
  @available(iOS 8, *)
  func canHandle(_ adjustmentData: PHAdjustmentData) -> Bool
  @available(iOS 8, *)
  func startContentEditing(with contentEditingInput: PHContentEditingInput, placeholderImage: UIImage)
  @available(iOS 8, *)
  func finishContentEditing(completionHandler: @escaping (PHContentEditingOutput?) -> Void)
  @available(iOS 8, *)
  func cancelContentEditing()
  @available(iOS 8, *)
  var shouldShowCancelConfirmation: Bool { get }
}
