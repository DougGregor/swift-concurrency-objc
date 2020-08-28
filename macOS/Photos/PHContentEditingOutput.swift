
@available(macOS 10.11, *)
class PHContentEditingOutput : NSObject {
  @available(macOS 10.11, *)
  init(contentEditingInput: PHContentEditingInput)
  @available(macOS 10.11, *)
  var adjustmentData: PHAdjustmentData?
  @available(macOS 10.11, *)
  var renderedContentURL: URL { get }
}
