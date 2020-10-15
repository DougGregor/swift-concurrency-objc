
@available(watchOS 3.0, *)
class NSDateInterval : NSObject, NSCopying, NSSecureCoding {
  var startDate: Date { get }
  var endDate: Date { get }
  var duration: TimeInterval { get }
  init(start startDate: Date, duration: TimeInterval)
  convenience init(start startDate: Date, end endDate: Date)
  func compare(_ dateInterval: DateInterval) -> ComparisonResult
  func isEqual(to dateInterval: DateInterval) -> Bool
  func intersects(_ dateInterval: DateInterval) -> Bool
  func intersection(with dateInterval: DateInterval) -> DateInterval?
  func contains(_ date: Date) -> Bool
}

@available(macOS 10.12, iOS 10.0, watchOS 3.0, tvOS 10.0, *)
extension NSDateInterval : _HasCustomAnyHashableRepresentation {
}
