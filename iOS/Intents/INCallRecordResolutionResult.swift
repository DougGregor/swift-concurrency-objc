
@available(iOS 11.0, *)
class INCallRecordResolutionResult : INIntentResolutionResult {
  class func success(with resolvedCallRecord: INCallRecord) -> Self
  class func disambiguation(with callRecordsToDisambiguate: [INCallRecord]) -> Self
  class func confirmationRequired(with callRecordToConfirm: INCallRecord?) -> Self
}
