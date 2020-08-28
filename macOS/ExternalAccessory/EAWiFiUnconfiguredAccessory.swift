
struct EAWiFiUnconfiguredAccessoryProperties : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var propertySupportsAirPlay: EAWiFiUnconfiguredAccessoryProperties { get }
  static var propertySupportsAirPrint: EAWiFiUnconfiguredAccessoryProperties { get }
  static var propertySupportsHomeKit: EAWiFiUnconfiguredAccessoryProperties { get }
}
