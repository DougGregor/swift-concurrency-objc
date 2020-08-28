
@available(iOS 10.0, *)
struct WKDataDetectorTypes : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var phoneNumber: WKDataDetectorTypes { get }
  static var link: WKDataDetectorTypes { get }
  static var address: WKDataDetectorTypes { get }
  static var calendarEvent: WKDataDetectorTypes { get }
  static var trackingNumber: WKDataDetectorTypes { get }
  static var flightNumber: WKDataDetectorTypes { get }
  static var lookupSuggestion: WKDataDetectorTypes { get }
  static var all: WKDataDetectorTypes { get }
  @available(iOS, introduced: 10.0, deprecated: 10.0, renamed: "WKDataDetectorTypes.lookupSuggestion")
  static var spotlightSuggestion: WKDataDetectorTypes { get }
}
