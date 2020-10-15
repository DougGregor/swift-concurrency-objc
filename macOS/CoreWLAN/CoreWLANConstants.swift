
@available(macOS 10.7, *)
let CWErrorDomain: String
extension NSNotification.Name {
  @available(macOS, introduced: 10.6, deprecated: 10.10, message: "Use -[CWWiFiClient startMonitoringEventWithType:error:] with the CWEventTypePowerDidChange event type")
  static let CWPowerDidChange: NSNotification.Name
  @available(macOS, introduced: 10.6, deprecated: 10.10, message: "Use -[CWWiFiClient startMonitoringEventWithType:error:] with the CWEventTypeSSIDDidChange event type")
  static let CWSSIDDidChange: NSNotification.Name
  @available(macOS, introduced: 10.6, deprecated: 10.10, message: "Use -[CWWiFiClient startMonitoringEventWithType:error:] with the CWEventTypeBSSIDDidChange event type")
  static let CWBSSIDDidChange: NSNotification.Name
  @available(macOS, introduced: 10.6, deprecated: 10.10, message: "Use -[CWWiFiClient startMonitoringEventWithType:error:] with the CWEventTypeLinkDidChange event type")
  static let CWLinkDidChange: NSNotification.Name
  @available(macOS, introduced: 10.6, deprecated: 10.10, message: "Use -[CWWiFiClient startMonitoringEventWithType:error:] with the CWEventTypeModeDidChange event type")
  static let CWModeDidChange: NSNotification.Name
  @available(macOS, introduced: 10.6, deprecated: 10.10, message: "Use -[CWWiFiClient startMonitoringEventWithType:error:] with the CWEventTypeCountryCodeDidChange event type")
  static let CWCountryCodeDidChange: NSNotification.Name
  @available(macOS, introduced: 10.7, deprecated: 10.10, message: "Use -[CWWiFiClient startMonitoringEventWithType:error:] with the CWEventTypeScanCacheUpdated event type")
  static let CWScanCacheDidUpdate: NSNotification.Name
  @available(macOS, introduced: 10.7, deprecated: 10.10, message: "Use -[CWWiFiClient startMonitoringEventWithType:error:] with the CWEventTypeLinkQualityDidChange event type")
  static let CWLinkQualityDidChange: NSNotification.Name
}
@available(macOS, introduced: 10.6, deprecated: 10.10, message: "Use -[CWWiFiClient startMonitoringEventWithType:error:] with the CWEventTypeLinkQualityDidChange event type")
let CWLinkQualityNotificationRSSIKey: String
@available(macOS, introduced: 10.6, deprecated: 10.10, message: "Use -[CWWiFiClient startMonitoringEventWithType:error:] with the CWEventTypeLinkQualityDidChange event type")
let CWLinkQualityNotificationTransmitRateKey: String
