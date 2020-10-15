
@available(watchOS 4.0, *)
class INNoteContentResolutionResult : INIntentResolutionResult {
  class func success(with resolvedNoteContent: INNoteContent) -> Self
  class func disambiguation(with noteContentsToDisambiguate: [INNoteContent]) -> Self
  class func confirmationRequired(with noteContentToConfirm: INNoteContent?) -> Self
}
