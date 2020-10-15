
@available(macOS 10.6, *)
class CWInterface : NSObject {
  @available(macOS 10.7, *)
  var interfaceName: String? { get }
  @available(macOS 10.7, *)
  func powerOn() -> Bool
  @available(macOS 10.7, *)
  func supportedWLANChannels() -> Set<CWChannel>?
  @available(macOS 10.7, *)
  func wlanChannel() -> CWChannel?
  @available(macOS 10.7, *)
  func activePHYMode() -> CWPHYMode
  @available(macOS 10.6, *)
  func ssid() -> String?
  @available(macOS 10.7, *)
  func ssidData() -> Data?
  @available(macOS 10.6, *)
  func bssid() -> String?
  @available(macOS 10.7, *)
  func rssiValue() -> Int
  @available(macOS 10.7, *)
  func noiseMeasurement() -> Int
  @available(macOS 10.7, *)
  func security() -> CWSecurity
  @available(macOS 10.7, *)
  func transmitRate() -> Double
  @available(macOS 10.6, *)
  func countryCode() -> String?
  @available(macOS 10.7, *)
  func interfaceMode() -> CWInterfaceMode
  @available(macOS 10.7, *)
  func transmitPower() -> Int
  @available(macOS 10.7, *)
  func hardwareAddress() -> String?
  @available(macOS 10.7, *)
  func serviceActive() -> Bool
  @available(macOS 10.7, *)
  func cachedScanResults() -> Set<CWNetwork>?
  @available(macOS 10.6, *)
  func configuration() -> CWConfiguration?
  @available(macOS, introduced: 10.6, deprecated: 10.10, message: "Use +[CWWiFiClient interfaceNames] instead")
  class func interfaceNames() -> Set<String>?
  @available(macOS, introduced: 10.6, deprecated: 10.10, message: "Use -[CWWiFiClient interfaceWithName:] instead")
  convenience init(name: String?)
  @available(macOS, introduced: 10.6, deprecated: 10.10, message: "Use -[CWWiFiClient interfaceWithName:] instead")
  init(interfaceName name: String?)
  @available(macOS 10.6, *)
  func setPower(_ power: Bool) throws
  @available(macOS 10.7, *)
  func setWLANChannel(_ channel: CWChannel) throws
  @available(macOS 10.6, *)
  func setPairwiseMasterKey(_ key: Data?) throws
  @available(macOS 10.6, *)
  func setWEPKey(_ key: Data?, flags: CWCipherKeyFlags, index: Int) throws
  @available(macOS 10.7, *)
  func scanForNetworks(withSSID ssid: Data?) throws -> Set<CWNetwork>
  @available(macOS 10.13, *)
  func scanForNetworks(withSSID ssid: Data?, includeHidden: Bool) throws -> Set<CWNetwork>
  @available(macOS 10.7, *)
  func scanForNetworks(withName networkName: String?) throws -> Set<CWNetwork>
  @available(macOS 10.13, *)
  func scanForNetworks(withName networkName: String?, includeHidden: Bool) throws -> Set<CWNetwork>
  @available(macOS 10.7, *)
  func associate(to network: CWNetwork, password: String?) throws
  @available(macOS 10.6, *)
  func disassociate()
  @available(macOS 10.7, *)
  func associate(toEnterpriseNetwork network: CWNetwork, identity: SecIdentity?, username: String?, password: String?) throws
  @available(macOS, introduced: 10.7, deprecated: 11.0)
  func startIBSSMode(withSSID ssidData: Data, security: CWIBSSModeSecurity, channel: Int, password: String?) throws
}
