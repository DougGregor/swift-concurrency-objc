
@available(iOS 14.0, *)
class __UIIndirectScribbleInteraction : NSObject, UIInteraction {
  init(delegate: __UIIndirectScribbleInteractionDelegate)
  weak var delegate: @sil_weak __UIIndirectScribbleInteractionDelegate? { get }
  var isHandlingWriting: Bool { get }
}
typealias __UIScribbleElementIdentifier = NSCopying & NSObjectProtocol
@available(iOS 14.0, *)
protocol __UIIndirectScribbleInteractionDelegate : NSObjectProtocol {
  func indirectScribbleInteraction(_ interaction: __UIIndirectScribbleInteraction, requestElementsIn rect: CGRect, completion: @escaping ([__UIScribbleElementIdentifier]) -> Void)
  func indirectScribbleInteraction(_ interaction: __UIIndirectScribbleInteraction, requestElementsIn rect: CGRect) async -> [__UIScribbleElementIdentifier]
  func indirectScribbleInteraction(_ interaction: __UIIndirectScribbleInteraction, isElementFocused elementIdentifier: __UIScribbleElementIdentifier) -> Bool
  func indirectScribbleInteraction(_ interaction: __UIIndirectScribbleInteraction, frameForElement elementIdentifier: __UIScribbleElementIdentifier) -> CGRect
  func indirectScribbleInteraction(_ interaction: __UIIndirectScribbleInteraction, focusElementIfNeeded elementIdentifier: __UIScribbleElementIdentifier, referencePoint focusReferencePoint: CGPoint, completion: @escaping ((UIResponder & UITextInput)?) -> Void)
  func indirectScribbleInteraction(_ interaction: __UIIndirectScribbleInteraction, focusElementIfNeeded elementIdentifier: __UIScribbleElementIdentifier, referencePoint focusReferencePoint: CGPoint) async -> (UIResponder & UITextInput)?
  optional func indirectScribbleInteraction(_ interaction: __UIIndirectScribbleInteraction, shouldDelayFocusForElement elementIdentifier: __UIScribbleElementIdentifier) -> Bool
  optional func indirectScribbleInteraction(_ interaction: __UIIndirectScribbleInteraction, willBeginWritingInElement elementIdentifier: __UIScribbleElementIdentifier)
  @asyncHandler optional func indirectScribbleInteraction(_ interaction: __UIIndirectScribbleInteraction, didFinishWritingInElement elementIdentifier: __UIScribbleElementIdentifier)
}
