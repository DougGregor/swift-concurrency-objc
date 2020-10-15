
@available(watchOS, introduced: 4.0, deprecated: 6.0, message: "This resolution result is no longer used")
class INNoteContentTypeResolutionResult : INIntentResolutionResult {
  class func success(with resolvedNoteContentType: INNoteContentType) -> Self
  class func confirmationRequired(with noteContentTypeToConfirm: INNoteContentType) -> Self
}
