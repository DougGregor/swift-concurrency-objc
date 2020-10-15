
@available(watchOS 6.0, *)
enum WKExtendedRuntimeSessionState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case notStarted
  case scheduled
  case running
  case invalid
}
@available(watchOS 6.0, *)
enum WKExtendedRuntimeSessionInvalidationReason : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case none
  case sessionInProgress
  case expired
  case resignedFrontmost
  case suppressedBySystem
  case error
}
@available(watchOS 6.0, *)
let WKExtendedRuntimeSessionErrorDomain: String
@available(watchOS 6.0, *)
enum WKExtendedRuntimeSessionErrorCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case scheduledTooFarInAdvance
  case mustBeActiveToStartOrSchedule
  case notYetStarted
  case exceededResourceLimits
  case barDisabled
  case notApprovedToStartSession
  case notApprovedToSchedule
}
@available(watchOS 6.0, *)
class WKExtendedRuntimeSession : NSObject {
  weak var delegate: @sil_weak WKExtendedRuntimeSessionDelegate?
  var state: WKExtendedRuntimeSessionState { get }
  var expirationDate: Date? { get }
  func start()
  func start(at date: Date)
  func invalidate()
  func notifyUser(hapticType type: WKHapticType, repeatHandler: ((UnsafeMutablePointer<WKHapticType>) -> TimeInterval)? = nil)
}
@available(watchOS 6.0, *)
protocol WKExtendedRuntimeSessionDelegate : NSObjectProtocol {
  @asyncHandler func extendedRuntimeSession(_ extendedRuntimeSession: WKExtendedRuntimeSession, didInvalidateWith reason: WKExtendedRuntimeSessionInvalidationReason, error: Error?)
  @asyncHandler func extendedRuntimeSessionDidStart(_ extendedRuntimeSession: WKExtendedRuntimeSession)
  func extendedRuntimeSessionWillExpire(_ extendedRuntimeSession: WKExtendedRuntimeSession)
}
