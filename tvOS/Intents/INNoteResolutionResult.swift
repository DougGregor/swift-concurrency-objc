
@available(tvOS 11.0, *)
class INNoteResolutionResult : INIntentResolutionResult {
  class func success(with resolvedNote: INNote) -> Self
  class func disambiguation(with notesToDisambiguate: [INNote]) -> Self
  class func confirmationRequired(with noteToConfirm: INNote?) -> Self
}
