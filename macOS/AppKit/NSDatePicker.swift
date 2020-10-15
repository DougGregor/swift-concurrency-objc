
class NSDatePicker : NSControl {
  var datePickerStyle: NSDatePicker.Style
  var isBezeled: Bool
  var isBordered: Bool
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
  @available(macOS 10.15.4, *)
  var presentsCalendarOverlay: Bool
  weak var delegate: @sil_weak NSDatePickerCellDelegate?
}
