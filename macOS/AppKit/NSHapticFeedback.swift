
extension NSHapticFeedbackManager {
  @available(macOS 10.11, *)
  enum FeedbackPattern : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case generic
    case alignment
    case levelChange
  }
  @available(macOS 10.11, *)
  enum PerformanceTime : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case `default`
    case now
    case drawCompleted
  }
}
protocol NSHapticFeedbackPerformer : NSObjectProtocol {
  @available(macOS 10.11, *)
  func perform(_ pattern: NSHapticFeedbackManager.FeedbackPattern, performanceTime: NSHapticFeedbackManager.PerformanceTime)
}
@available(macOS 10.11, *)
class NSHapticFeedbackManager : NSObject {
  class var defaultPerformer: NSHapticFeedbackPerformer { get }
}
