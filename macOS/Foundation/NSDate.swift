
extension NSNotification.Name {
  @available(macOS 10.6, *)
  static let NSSystemClockDidChange: NSNotification.Name
}
typealias TimeInterval = Double
var NSTimeIntervalSince1970: Double { get }
class NSDate : NSObject, NSCopying, NSSecureCoding {
  var timeIntervalSinceReferenceDate: TimeInterval { get }
  init(timeIntervalSinceReferenceDate ti: TimeInterval)
}

extension NSDate : _HasCustomAnyHashableRepresentation {
}

extension NSDate : _CustomPlaygroundQuickLookable {
  @nonobjc var summary: String { get }
}
extension NSDate {
  func timeIntervalSince(_ anotherDate: Date) -> TimeInterval
  var timeIntervalSinceNow: TimeInterval { get }
  var timeIntervalSince1970: TimeInterval { get }
  @available(macOS 10.6, *)
  func addingTimeInterval(_ ti: TimeInterval) -> Self
  func earlierDate(_ anotherDate: Date) -> Date
  func laterDate(_ anotherDate: Date) -> Date
  func compare(_ other: Date) -> ComparisonResult
  func isEqual(to otherDate: Date) -> Bool
  func description(with locale: Any?) -> String
  class var timeIntervalSinceReferenceDate: TimeInterval { get }
}
extension NSDate {
  class var distantFuture: Date { get }
  class var distantPast: Date { get }
  @available(macOS 10.15, *)
  class var now: Date { get }
  convenience init(timeIntervalSinceNow secs: TimeInterval)
  convenience init(timeIntervalSince1970 secs: TimeInterval)
  convenience init(timeInterval secsToBeAdded: TimeInterval, since date: Date)
}
