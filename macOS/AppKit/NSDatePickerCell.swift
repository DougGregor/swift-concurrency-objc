
extension NSDatePicker {
  enum Style : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case textFieldAndStepper
    case clockAndCalendar
    case textField
  }
  enum Mode : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case single
    case range
  }
  struct ElementFlags : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var hourMinute: NSDatePicker.ElementFlags { get }
    static var hourMinuteSecond: NSDatePicker.ElementFlags { get }
    static var timeZone: NSDatePicker.ElementFlags { get }
    static var yearMonth: NSDatePicker.ElementFlags { get }
    static var yearMonthDay: NSDatePicker.ElementFlags { get }
    static var era: NSDatePicker.ElementFlags { get }
  }
}
class NSDatePickerCell : NSActionCell {
  var datePickerStyle: NSDatePicker.Style
  var drawsBackground: Bool
  @NSCopying var backgroundColor: NSColor
  @NSCopying var textColor: NSColor
  var datePickerMode: NSDatePicker.Mode
  var datePickerElements: NSDatePicker.ElementFlags
  var calendar: Calendar?
  var locale: Locale?
  var timeZone: TimeZone?
  var dateValue: Date
  var timeInterval: TimeInterval
  var minDate: Date?
  var maxDate: Date?
  weak var delegate: @sil_weak NSDatePickerCellDelegate?
}
protocol NSDatePickerCellDelegate : NSObjectProtocol {
  optional func datePickerCell(_ datePickerCell: NSDatePickerCell, validateProposedDateValue proposedDateValue: AutoreleasingUnsafeMutablePointer<NSDate>, timeInterval proposedTimeInterval: UnsafeMutablePointer<TimeInterval>?)
}
