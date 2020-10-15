
extension NSBackgroundActivityScheduler {
  @available(macOS 10.10, *)
  enum Result : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case finished
    case deferred
  }
  typealias CompletionHandler = (NSBackgroundActivityScheduler.Result) -> Void
}
@available(macOS 10.10, *)
class NSBackgroundActivityScheduler : NSObject {
  init(identifier: String)
  var identifier: String { get }
  var qualityOfService: QualityOfService
  var repeats: Bool
  var interval: TimeInterval
  var tolerance: TimeInterval
  func schedule(_ block: @escaping (@escaping NSBackgroundActivityScheduler.CompletionHandler) -> Void)
  func invalidate()
  var shouldDefer: Bool { get }
}
