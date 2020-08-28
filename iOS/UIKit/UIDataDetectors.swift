
struct UIDataDetectorTypes : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var phoneNumber: UIDataDetectorTypes { get }
  static var link: UIDataDetectorTypes { get }
  @available(iOS 4.0, *)
  static var address: UIDataDetectorTypes { get }
  @available(iOS 4.0, *)
  static var calendarEvent: UIDataDetectorTypes { get }
  @available(iOS 10.0, *)
  static var shipmentTrackingNumber: UIDataDetectorTypes { get }
  @available(iOS 10.0, *)
  static var flightNumber: UIDataDetectorTypes { get }
  @available(iOS 10.0, *)
  static var lookupSuggestion: UIDataDetectorTypes { get }
  static var all: UIDataDetectorTypes { get }
}
