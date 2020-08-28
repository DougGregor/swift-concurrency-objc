
@available(iOS, introduced: 11.0, deprecated: 13.0, message: "This resolution result is no longer used")
class INNoteContentTypeResolutionResult : INIntentResolutionResult {
  class func success(with resolvedNoteContentType: INNoteContentType) -> Self
  class func confirmationRequired(with noteContentTypeToConfirm: INNoteContentType) -> Self
}
