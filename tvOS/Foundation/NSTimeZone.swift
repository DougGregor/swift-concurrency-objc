
class NSTimeZone : NSObject, NSCopying, NSSecureCoding {
  var name: String { get }
  var data: Data { get }
  func secondsFromGMT(for aDate: Date) -> Int
  func abbreviation(for aDate: Date) -> String?
  func isDaylightSavingTime(for aDate: Date) -> Bool
  @available(tvOS 9.0, *)
  func daylightSavingTimeOffset(for aDate: Date) -> TimeInterval
  @available(tvOS 9.0, *)
  func nextDaylightSavingTimeTransition(after aDate: Date) -> Date?
}

extension NSTimeZone : _HasCustomAnyHashableRepresentation {
}
extension NSTimeZone {
  class var system: TimeZone { get }
  class func resetSystemTimeZone()
  class var `default`: TimeZone
  class var local: TimeZone { get }
  class var knownTimeZoneNames: [String] { get }
  @available(tvOS 9.0, *)
  class var abbreviationDictionary: [String : String]
  @available(tvOS 9.0, *)
  class var timeZoneDataVersion: String { get }
  var secondsFromGMT: Int { get }
  var abbreviation: String? { get }
  var isDaylightSavingTime: Bool { get }
  @available(tvOS 9.0, *)
  var daylightSavingTimeOffset: TimeInterval { get }
  @available(tvOS 9.0, *)
  var nextDaylightSavingTimeTransition: Date? { get }
  func isEqual(to aTimeZone: TimeZone) -> Bool
  @available(tvOS 9.0, *)
  func localizedName(_ style: NSTimeZone.NameStyle, locale: Locale?) -> String?
}
extension NSTimeZone {
  enum NameStyle : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case standard
    case shortStandard
    case daylightSaving
    case shortDaylightSaving
    case generic
    case shortGeneric
  }
}
extension NSTimeZone {
  init?(name tzName: String)
  init?(name tzName: String, data aData: Data?)
  convenience init(forSecondsFromGMT seconds: Int)
  convenience init?(abbreviation: String)
}
extension NSNotification.Name {
  @available(tvOS 9.0, *)
  static let NSSystemTimeZoneDidChange: NSNotification.Name
}
