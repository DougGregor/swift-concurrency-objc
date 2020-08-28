
struct UIDataDetectorTypes : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var phoneNumber: UIDataDetectorTypes { get }
  static var link: UIDataDetectorTypes { get }
  @available(tvOS 4.0, *)
  static var address: UIDataDetectorTypes { get }
  @available(tvOS 4.0, *)
  static var calendarEvent: UIDataDetectorTypes { get }
  @available(tvOS 10.0, *)
  static var shipmentTrackingNumber: UIDataDetectorTypes { get }
  @available(tvOS 10.0, *)
  static var flightNumber: UIDataDetectorTypes { get }
  @available(tvOS 10.0, *)
  static var lookupSuggestion: UIDataDetectorTypes { get }
  static var all: UIDataDetectorTypes { get }
}
