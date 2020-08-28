
@available(watchOS 2.0, *)
let CBCentralManagerOptionShowPowerAlertKey: String
@available(watchOS 2.0, *)
let CBCentralManagerOptionRestoreIdentifierKey: String
let CBCentralManagerScanOptionAllowDuplicatesKey: String
@available(watchOS 2.0, *)
let CBCentralManagerScanOptionSolicitedServiceUUIDsKey: String
@available(watchOS 2.0, *)
let CBConnectPeripheralOptionNotifyOnConnectionKey: String
let CBConnectPeripheralOptionNotifyOnDisconnectionKey: String
@available(watchOS 2.0, *)
let CBConnectPeripheralOptionNotifyOnNotificationKey: String
@available(watchOS 2.0, *)
let CBConnectPeripheralOptionStartDelayKey: String
@available(watchOS 6.0, *)
let CBConnectPeripheralOptionEnableTransportBridgingKey: String
@available(watchOS 6.0, *)
let CBConnectPeripheralOptionRequiresANCS: String
@available(watchOS 2.0, *)
let CBCentralManagerRestoredStatePeripheralsKey: String
@available(watchOS 2.0, *)
let CBCentralManagerRestoredStateScanServicesKey: String
@available(watchOS 2.0, *)
let CBCentralManagerRestoredStateScanOptionsKey: String
struct CBConnectionEventMatchingOption : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension CBConnectionEventMatchingOption {
  @available(watchOS 6.0, *)
  static let serviceUUIDs: CBConnectionEventMatchingOption
  @available(watchOS 6.0, *)
  static let peripheralUUIDs: CBConnectionEventMatchingOption
}
