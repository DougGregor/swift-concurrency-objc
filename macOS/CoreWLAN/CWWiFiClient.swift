
protocol CWEventDelegate {
  optional func clientConnectionInterrupted()
  optional func clientConnectionInvalidated()
  @asyncHandler optional func powerStateDidChangeForWiFiInterface(withName interfaceName: String)
  @asyncHandler optional func ssidDidChangeForWiFiInterface(withName interfaceName: String)
  @asyncHandler optional func bssidDidChangeForWiFiInterface(withName interfaceName: String)
  @asyncHandler optional func countryCodeDidChangeForWiFiInterface(withName interfaceName: String)
  @asyncHandler optional func linkDidChangeForWiFiInterface(withName interfaceName: String)
  @asyncHandler optional func linkQualityDidChangeForWiFiInterface(withName interfaceName: String, rssi: Int, transmitRate: Double)
  @asyncHandler optional func modeDidChangeForWiFiInterface(withName interfaceName: String)
  optional func scanCacheUpdatedForWiFiInterface(withName interfaceName: String)
}
@available(macOS 10.10, *)
class CWWiFiClient : NSObject {
  @available(macOS 10.10, *)
  weak var delegate: @sil_weak AnyObject?
  @available(macOS 10.10, *)
  class func shared() -> CWWiFiClient
  @available(macOS 10.10, *)
  func interface() -> CWInterface?
  @available(macOS 10.10, *)
  class func interfaceNames() -> [String]?
  @available(macOS 10.10, *)
  func interface(withName interfaceName: String?) -> CWInterface?
  @available(macOS 10.10, *)
  func interfaces() -> [CWInterface]?
  @available(macOS 10.10, *)
  func startMonitoringEvent(with type: CWEventType) throws
  @available(macOS 10.10, *)
  func stopMonitoringEvent(with type: CWEventType) throws
  @available(macOS 10.10, *)
  func stopMonitoringAllEvents() throws
}
