
var kIOBluetoothDeviceNotificationNameConnected: String { get }
var kIOBluetoothDeviceNotificationNameDisconnected: String { get }
var kIOBluetoothDeviceNameChangedNotification: String { get }
var kIOBluetoothDeviceInquiryInfoChangedNotification: String { get }
var kIOBluetoothDeviceServicesChangedNotification: String { get }
var kIOBluetoothL2CAPChannelMaxAllowedIncomingMTU: String { get }
var kIOBluetoothL2CAPChannelDesiredOutgoingMTU: String { get }
protocol IOBluetoothDeviceAsyncCallbacks {
  func remoteNameRequestComplete(_ device: IOBluetoothDevice!, status: IOReturn)
  func connectionComplete(_ device: IOBluetoothDevice!, status: IOReturn)
  func sdpQueryComplete(_ device: IOBluetoothDevice!, status: IOReturn)
}
class IOBluetoothDevice : IOBluetoothObject, NSCoding, NSSecureCoding {
  class func register(forConnectNotifications observer: Any!, selector inSelector: Selector!) -> IOBluetoothUserNotification!
  func register(forDisconnectNotification observer: Any!, selector inSelector: Selector!) -> IOBluetoothUserNotification!
  convenience init!(address: UnsafePointer<BluetoothDeviceAddress>!)
  convenience init!(addressString address: String!)
  func openL2CAPChannelSync(_ newChannel: AutoreleasingUnsafeMutablePointer<IOBluetoothL2CAPChannel?>!, withPSM psm: BluetoothL2CAPPSM, delegate channelDelegate: Any!) -> IOReturn
  func openL2CAPChannelAsync(_ newChannel: AutoreleasingUnsafeMutablePointer<IOBluetoothL2CAPChannel?>!, withPSM psm: BluetoothL2CAPPSM, delegate channelDelegate: Any!) -> IOReturn
  func sendL2CAPEchoRequest(_ data: UnsafeMutableRawPointer!, length: UInt16) -> IOReturn
  func openRFCOMMChannelSync(_ rfcommChannel: AutoreleasingUnsafeMutablePointer<IOBluetoothRFCOMMChannel?>!, withChannelID channelID: BluetoothRFCOMMChannelID, delegate channelDelegate: Any!) -> IOReturn
  func openRFCOMMChannelAsync(_ rfcommChannel: AutoreleasingUnsafeMutablePointer<IOBluetoothRFCOMMChannel?>!, withChannelID channelID: BluetoothRFCOMMChannelID, delegate channelDelegate: Any!) -> IOReturn
  var classOfDevice: BluetoothClassOfDevice { get }
  var serviceClassMajor: BluetoothServiceClassMajor { get }
  var deviceClassMajor: BluetoothDeviceClassMajor { get }
  var deviceClassMinor: BluetoothDeviceClassMinor { get }
  var name: String! { get }
  var nameOrAddress: String! { get }
  var lastNameUpdate: Date! { get }
  func getAddress() -> UnsafePointer<BluetoothDeviceAddress>!
  var addressString: String! { get }
  func getPageScanRepetitionMode() -> BluetoothPageScanRepetitionMode
  func getPageScanPeriodMode() -> BluetoothPageScanPeriodMode
  func getPageScanMode() -> BluetoothPageScanMode
  func getClockOffset() -> BluetoothClockOffset
  func getLastInquiryUpdate() -> Date!
  @available(macOS 10.7, *)
  func rssi() -> BluetoothHCIRSSIValue
  @available(macOS 10.7, *)
  func rawRSSI() -> BluetoothHCIRSSIValue
  func isConnected() -> Bool
  func openConnection() -> IOReturn
  func openConnection(_ target: Any!) -> IOReturn
  func openConnection(_ target: Any!, withPageTimeout pageTimeoutValue: BluetoothHCIPageTimeout, authenticationRequired: Bool) -> IOReturn
  func closeConnection() -> IOReturn
  func remoteNameRequest(_ target: Any!) -> IOReturn
  func remoteNameRequest(_ target: Any!, withPageTimeout pageTimeoutValue: BluetoothHCIPageTimeout) -> IOReturn
  func requestAuthentication() -> IOReturn
  var connectionHandle: BluetoothConnectionHandle { get }
  func isIncoming() -> Bool
  func getLinkType() -> BluetoothLinkType
  func getEncryptionMode() -> BluetoothHCIEncryptionMode
  func performSDPQuery(_ target: Any!) -> IOReturn
  @available(macOS 10.7, *)
  func performSDPQuery(_ target: Any!, uuids uuidArray: [Any]!) -> IOReturn
  var services: [Any]! { get }
  func getLastServicesUpdate() -> Date!
  func getServiceRecord(for sdpUUID: IOBluetoothSDPUUID!) -> IOBluetoothSDPServiceRecord!
  class func favoriteDevices() -> [Any]!
  func isFavorite() -> Bool
  func addToFavorites() -> IOReturn
  func removeFromFavorites() -> IOReturn
  class func recentDevices(_ numDevices: UInt) -> [Any]!
  func recentAccessDate() -> Date!
  class func pairedDevices() -> [Any]!
  func isPaired() -> Bool
  func setSupervisionTimeout(_ timeout: UInt16) -> IOReturn
  func openL2CAPChannelSync(_ newChannel: AutoreleasingUnsafeMutablePointer<IOBluetoothL2CAPChannel?>!, withPSM psm: BluetoothL2CAPPSM, withConfiguration channelConfiguration: [AnyHashable : Any]!, delegate channelDelegate: Any!) -> IOReturn
  func openL2CAPChannelAsync(_ newChannel: AutoreleasingUnsafeMutablePointer<IOBluetoothL2CAPChannel?>!, withPSM psm: BluetoothL2CAPPSM, withConfiguration channelConfiguration: [AnyHashable : Any]!, delegate channelDelegate: Any!) -> IOReturn
}
