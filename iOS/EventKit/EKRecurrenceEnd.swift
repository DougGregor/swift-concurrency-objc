
@available(iOS 4.0, *)
class EKRecurrenceEnd : NSObject, NSCopying, NSSecureCoding {
  convenience init(end endDate: Date)
  convenience init(occurrenceCount: Int)
  var endDate: Date? { get }
  var occurrenceCount: Int { get }
}
