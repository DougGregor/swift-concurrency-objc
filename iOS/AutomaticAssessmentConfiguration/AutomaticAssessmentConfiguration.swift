
@available(iOS 13.4, *)
class AEAssessmentConfiguration : NSObject, NSCopying {
  @available(iOS 14.0, *)
  var autocorrectMode: AEAssessmentConfiguration.AutocorrectMode
  @available(iOS 14.0, *)
  var allowsSpellCheck: Bool
  @available(iOS 14.0, *)
  var allowsPredictiveKeyboard: Bool
  @available(iOS 14.0, *)
  var allowsKeyboardShortcuts: Bool
  @available(iOS 14.0, *)
  var allowsActivityContinuation: Bool
  @available(iOS 14.0, *)
  var allowsDictation: Bool
  @available(iOS 14.0, *)
  var allowsAccessibilitySpeech: Bool
  @available(iOS 14.0, *)
  var allowsPasswordAutoFill: Bool
  @available(iOS 14.0, *)
  var allowsContinuousPathKeyboard: Bool
}
extension AEAssessmentConfiguration {
  @available(iOS 14.0, *)
  struct AutocorrectMode : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var spelling: AEAssessmentConfiguration.AutocorrectMode { get }
    static var punctuation: AEAssessmentConfiguration.AutocorrectMode { get }
  }
}
@available(iOS 13.4, *)
class AEAssessmentSession : NSObject {
  weak var delegate: @sil_weak AEAssessmentSessionDelegate?
  var isActive: Bool { get }
  init(configuration: AEAssessmentConfiguration)
  func begin()
  func end()
}
@available(iOS 13.4, *)
protocol AEAssessmentSessionDelegate : NSObjectProtocol {
  @asyncHandler optional func assessmentSessionDidBegin(_ session: AEAssessmentSession)
  optional func assessmentSession(_ session: AEAssessmentSession, failedToBeginWithError error: Error)
  optional func assessmentSession(_ session: AEAssessmentSession, wasInterruptedWithError error: Error)
  @asyncHandler optional func assessmentSessionDidEnd(_ session: AEAssessmentSession)
}
@available(iOS 13.4, *)
let AEAssessmentErrorDomain: String
@available(iOS 13.4, *)
struct AEAssessmentError : _BridgedStoredNSError {
  let _nsError: NSError
  init(_nsError: NSError)
  static var errorDomain: String { get }
  static var unknown: AEAssessmentError.Code { get }
}
