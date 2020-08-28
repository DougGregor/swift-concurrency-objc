
extension UIDatePicker {
  enum Mode : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case time
    case date
    case dateAndTime
    case countDownTimer
  }
}
@available(tvOS 13.4, *)
enum UIDatePickerStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case automatic
  case wheels
  case compact
  @available(tvOS 14.0, *)
  case inline
}
@available(tvOS 2.0, *)
class UIDatePicker : UIControl, NSCoding {
  var datePickerMode: UIDatePicker.Mode
  var locale: Locale?
  var calendar: Calendar!
  var timeZone: TimeZone?
  var date: Date
  var minimumDate: Date?
  var maximumDate: Date?
  var countDownDuration: TimeInterval
  var minuteInterval: Int
  func setDate(_ date: Date, animated: Bool)
  @available(tvOS 13.4, *)
  var preferredDatePickerStyle: UIDatePickerStyle
  @available(tvOS 13.4, *)
  var datePickerStyle: UIDatePickerStyle { get }
}
