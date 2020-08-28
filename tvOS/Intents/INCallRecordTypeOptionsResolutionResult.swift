
@available(tvOS 11.0, *)
class INCallRecordTypeOptionsResolutionResult : INIntentResolutionResult {
  class func success(with resolvedCallRecordTypeOptions: INCallRecordTypeOptions = []) -> Self
  class func confirmationRequired(with callRecordTypeOptionsToConfirm: INCallRecordTypeOptions = []) -> Self
}
