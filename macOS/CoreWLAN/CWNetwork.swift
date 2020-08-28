
@available(macOS 10.6, *)
class CWNetwork : NSObject, NSCopying, NSSecureCoding {
  @available(macOS 10.6, *)
  var ssid: String? { get }
  @available(macOS 10.7, *)
  var ssidData: Data? { get }
  @available(macOS 10.6, *)
  var bssid: String? { get }
  @available(macOS 10.7, *)
  var wlanChannel: CWChannel? { get }
  @available(macOS 10.7, *)
  var rssiValue: Int { get }
  @available(macOS 10.7, *)
  var noiseMeasurement: Int { get }
  @available(macOS 10.7, *)
  var informationElementData: Data? { get }
  @available(macOS 10.7, *)
  var countryCode: String? { get }
  @available(macOS 10.7, *)
  var beaconInterval: Int { get }
  @available(macOS 10.7, *)
  var ibss: Bool { get }
  @available(macOS 10.6, *)
  func isEqual(to network: CWNetwork) -> Bool
  @available(macOS 10.7, *)
  func supportsSecurity(_ security: CWSecurity) -> Bool
  @available(macOS 10.8, *)
  func supportsPHYMode(_ phyMode: CWPHYMode) -> Bool
}
