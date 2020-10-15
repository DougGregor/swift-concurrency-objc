
@available(tvOS 10, *)
class PHContentEditingOutput : NSObject {
  @available(tvOS 10, *)
  init(contentEditingInput: PHContentEditingInput)
  @available(tvOS 10, *)
  var adjustmentData: PHAdjustmentData?
  @available(tvOS 10, *)
  var renderedContentURL: URL { get }
}
