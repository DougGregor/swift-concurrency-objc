
@available(tvOS 11.0, *)
class INRecurrenceRule : NSObject, NSCopying, NSSecureCoding {
  convenience init(interval: Int, frequency: INRecurrenceFrequency)
  @available(tvOS 14.0, *)
  init(interval: Int, frequency: INRecurrenceFrequency, weeklyRecurrenceDays: INDayOfWeekOptions = [])
  var interval: Int { get }
  var frequency: INRecurrenceFrequency { get }
  @available(tvOS 14.0, *)
  var weeklyRecurrenceDays: INDayOfWeekOptions { get }
}
