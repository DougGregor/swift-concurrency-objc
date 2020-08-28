
@available(iOS 14.0, *)
enum INStartCallCallRecordToCallBackUnsupportedReason : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case noMatchingCall
}
@available(iOS 14.0, *)
class INStartCallCallRecordToCallBackResolutionResult : INCallRecordResolutionResult {
  class func unsupported(forReason reason: INStartCallCallRecordToCallBackUnsupportedReason) -> Self
  init(callRecordResolutionResult: INCallRecordResolutionResult)
}
