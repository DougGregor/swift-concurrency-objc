
@available(iOS 8, *)
class PHContentEditingOutput : NSObject {
  @available(iOS 8, *)
  init(contentEditingInput: PHContentEditingInput)
  @available(iOS 8, *)
  var adjustmentData: PHAdjustmentData?
  @available(iOS 8, *)
  var renderedContentURL: URL { get }
}
