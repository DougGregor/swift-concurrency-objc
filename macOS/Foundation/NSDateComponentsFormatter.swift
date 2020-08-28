
extension DateComponentsFormatter {
  @available(macOS 10.10, *)
  enum UnitsStyle : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case positional
    case abbreviated
    case short
    case full
    case spellOut
    @available(macOS 10.12, *)
    case brief
  }
  @available(macOS 10.10, *)
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
@available(macOS 10.10, *)
class DateComponentsFormatter : Formatter {
  func string(from components: DateComponents) -> String?
  func string(from startDate: Date, to endDate: Date) -> String?
  func string(from ti: TimeInterval) -> String?
  class func localizedString(from components: DateComponents, unitsStyle: DateComponentsFormatter.UnitsStyle) -> String?
  var unitsStyle: DateComponentsFormatter.UnitsStyle
  var allowedUnits: NSCalendar.Unit
  var zeroFormattingBehavior: DateComponentsFormatter.ZeroFormattingBehavior
  var calendar: Calendar?
  @available(macOS 10.13, *)
  var referenceDate: Date?
  var allowsFractionalUnits: Bool
  var maximumUnitCount: Int
  var collapsesLargestUnit: Bool
  var includesApproximationPhrase: Bool
  var includesTimeRemainingPhrase: Bool
  var formattingContext: Formatter.Context
}
