
@available(macOS 10.15.4, *)
class AEAssessmentConfiguration : NSObject, NSCopying {
}
extension AEAssessmentConfiguration {
}
@available(macOS 10.15.4, *)
class AEAssessmentSession : NSObject {
  weak var delegate: @sil_weak AEAssessmentSessionDelegate?
  var isActive: Bool { get }
  init(configuration: AEAssessmentConfiguration)
  func begin()
  func end()
}
@available(macOS 10.15.4, *)
protocol AEAssessmentSessionDelegate : NSObjectProtocol {
  optional func assessmentSessionDidBegin(_ session: AEAssessmentSession)
  optional func assessmentSession(_ session: AEAssessmentSession, failedToBeginWithError error: Error)
  optional func assessmentSession(_ session: AEAssessmentSession, wasInterruptedWithError error: Error)
  optional func assessmentSessionDidEnd(_ session: AEAssessmentSession)
}
@available(macOS 10.15.4, *)
let AEAssessmentErrorDomain: String
@available(macOS 10.15.4, *)
struct AEAssessmentError : _BridgedStoredNSError {
  let _nsError: NSError
  init(_nsError: NSError)
  static var errorDomain: String { get }
  static var unknown: AEAssessmentError.Code { get }
}
