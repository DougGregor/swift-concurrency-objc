
extension RelativeDateTimeFormatter {
  @available(watchOS 6.0, *)
  enum DateTimeStyle : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case numeric
    case named
  }
  @available(watchOS 6.0, *)
  enum UnitsStyle : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case full
    case spellOut
    case short
    case abbreviated
  }
}
@available(watchOS 6.0, *)
class RelativeDateTimeFormatter : Formatter {
  var dateTimeStyle: RelativeDateTimeFormatter.DateTimeStyle
  var unitsStyle: RelativeDateTimeFormatter.UnitsStyle
  var formattingContext: Formatter.Context
  var calendar: Calendar!
  var locale: Locale!
  func localizedString(from dateComponents: DateComponents) -> String
  func localizedString(fromTimeInterval timeInterval: TimeInterval) -> String
  func localizedString(for date: Date, relativeTo referenceDate: Date) -> String
}
