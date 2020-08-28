
@available(watchOS 2.0, *)
class EKRecurrenceDayOfWeek : NSObject, NSCopying, NSSecureCoding {
  convenience init(_ dayOfTheWeek: EKWeekday)
  convenience init(_ dayOfTheWeek: EKWeekday, weekNumber: Int)
  init(dayOfTheWeek: EKWeekday, weekNumber: Int)
  var dayOfTheWeek: EKWeekday { get }
  var weekNumber: Int { get }
}
