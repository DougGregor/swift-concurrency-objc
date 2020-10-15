
@available(watchOS 4.0, *)
enum INRecurrenceFrequency : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case minute
  case hourly
  case daily
  case weekly
  case monthly
  case yearly
}
