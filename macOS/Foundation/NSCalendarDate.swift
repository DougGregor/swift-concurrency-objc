
extension NSDate {
  @available(macOS, introduced: 10.4, deprecated: 10.10, message: "Create an NSDateFormatter with `init` and set the dateFormat property instead.")
  class func date(withNaturalLanguageString string: String, locale: Any?) -> Any?
  @available(macOS, introduced: 10.4, deprecated: 10.10, message: "Create an NSDateFormatter with `init` and set the dateFormat property instead.")
  class func date(withNaturalLanguageString string: String) -> Any?
  @available(macOS, introduced: 10.4, deprecated: 10.10, message: "Use NSDateFormatter instead")
  class func date(with aString: String) -> Any
  @available(macOS, introduced: 10.4, deprecated: 10.10)
  func date(withCalendarFormat format: String?, timeZone aTimeZone: TimeZone?) -> NSCalendarDate
  @available(macOS, introduced: 10.4, deprecated: 10.10)
  func description(withCalendarFormat format: String?, timeZone aTimeZone: TimeZone?, locale: Any?) -> String?
  @available(macOS, introduced: 10.4, deprecated: 10.10, message: "Use NSDateFormatter instead")
  convenience init?(string description: String)
}
