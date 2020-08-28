
extension DateComponentsFormatter {
  @available(watchOS 2.0, *)
  enum UnitsStyle : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case positional
    case abbreviated
    case short
    case full
    case spellOut
    @available(watchOS 3.0, *)
    case brief
  }
  @available(watchOS 2.0, *)
  struct ZeroFormattingBehavior : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var `default`: DateComponentsFormatter.ZeroFormattingBehavior { get }
    static var dropLeading: DateComponentsFormatter.ZeroFormattingBehavior { get }
    static var dropMiddle: DateComponentsFormatter.ZeroFormattingBehavior { get }
    static var dropTrailing: DateComponentsFormatter.ZeroFormattingBehavior { get }
    static var dropAll: DateComponentsFormatter.ZeroFormattingBehavior { get }
    static var pad: DateComponentsFormatter.ZeroFormattingBehavior { get }
  }
}
@available(watchOS 2.0, *)
class DateComponentsFormatter : Formatter {
  func string(from components: DateComponents) -> String?
  func string(from startDate: Date, to endDate: Date) -> String?
  func string(from ti: TimeInterval) -> String?
  class func localizedString(from components: DateComponents, unitsStyle: DateComponentsFormatter.UnitsStyle) -> String?
  var unitsStyle: DateComponentsFormatter.UnitsStyle
  var allowedUnits: NSCalendar.Unit
  var zeroFormattingBehavior: DateComponentsFormatter.ZeroFormattingBehavior
  var calendar: Calendar?
  @available(watchOS 4.0, *)
  var referenceDate: Date?
  var allowsFractionalUnits: Bool
  var maximumUnitCount: Int
  var collapsesLargestUnit: Bool
  var includesApproximationPhrase: Bool
  var includesTimeRemainingPhrase: Bool
  var formattingContext: Formatter.Context
}
