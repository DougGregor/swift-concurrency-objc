
@available(watchOS 4.0, *)
class INRecurrenceRule : NSObject, NSCopying, NSSecureCoding {
  convenience init(interval: Int, frequency: INRecurrenceFrequency)
  @available(watchOS 7.0, *)
  init(interval: Int, frequency: INRecurrenceFrequency, weeklyRecurrenceDays: INDayOfWeekOptions = [])
  var interval: Int { get }
  var frequency: INRecurrenceFrequency { get }
  @available(watchOS 7.0, *)
  var weeklyRecurrenceDays: INDayOfWeekOptions { get }
}
