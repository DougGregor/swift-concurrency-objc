
func CFTimeZoneGetTypeID() -> CFTypeID
func CFTimeZoneCopySystem() -> CFTimeZone!
func CFTimeZoneResetSystem()
func CFTimeZoneCopyDefault() -> CFTimeZone!
func CFTimeZoneSetDefault(_ tz: CFTimeZone!)
func CFTimeZoneCopyKnownNames() -> CFArray!
func CFTimeZoneCopyAbbreviationDictionary() -> CFDictionary!
func CFTimeZoneSetAbbreviationDictionary(_ dict: CFDictionary!)
func CFTimeZoneCreate(_ allocator: CFAllocator!, _ name: CFString!, _ data: CFData!) -> CFTimeZone!
func CFTimeZoneCreateWithTimeIntervalFromGMT(_ allocator: CFAllocator!, _ ti: CFTimeInterval) -> CFTimeZone!
func CFTimeZoneCreateWithName(_ allocator: CFAllocator!, _ name: CFString!, _ tryAbbrev: Bool) -> CFTimeZone!
func CFTimeZoneGetName(_ tz: CFTimeZone!) -> CFString!
func CFTimeZoneGetData(_ tz: CFTimeZone!) -> CFData!
func CFTimeZoneGetSecondsFromGMT(_ tz: CFTimeZone!, _ at: CFAbsoluteTime) -> CFTimeInterval
func CFTimeZoneCopyAbbreviation(_ tz: CFTimeZone!, _ at: CFAbsoluteTime) -> CFString!
func CFTimeZoneIsDaylightSavingTime(_ tz: CFTimeZone!, _ at: CFAbsoluteTime) -> Bool
@available(macOS 10.5, *)
func CFTimeZoneGetDaylightSavingTimeOffset(_ tz: CFTimeZone!, _ at: CFAbsoluteTime) -> CFTimeInterval
@available(macOS 10.5, *)
func CFTimeZoneGetNextDaylightSavingTimeTransition(_ tz: CFTimeZone!, _ at: CFAbsoluteTime) -> CFAbsoluteTime
@available(macOS 10.5, *)
enum CFTimeZoneNameStyle : CFIndex {
  init?(rawValue: CFIndex)
  var rawValue: CFIndex { get }
  case standard
  case shortStandard
  case daylightSaving
  case shortDaylightSaving
  case generic
  case shortGeneric
}
@available(macOS 10.5, *)
func CFTimeZoneCopyLocalizedName(_ tz: CFTimeZone!, _ style: CFTimeZoneNameStyle, _ locale: CFLocale!) -> CFString!
extension CFNotificationName {
  @available(macOS 10.5, *)
  static let cfTimeZoneSystemTimeZoneDidChange: CFNotificationName!
}
