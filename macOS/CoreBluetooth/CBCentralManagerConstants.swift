
@available(macOS 10.9, *)
let CBCentralManagerOptionShowPowerAlertKey: String
@available(macOS 10.13, *)
let CBCentralManagerOptionRestoreIdentifierKey: String
let CBCentralManagerScanOptionAllowDuplicatesKey: String
@available(macOS 10.9, *)
let CBCentralManagerScanOptionSolicitedServiceUUIDsKey: String
@available(macOS 10.13, *)
let CBConnectPeripheralOptionNotifyOnConnectionKey: String
let CBConnectPeripheralOptionNotifyOnDisconnectionKey: String
@available(macOS 10.13, *)
let CBConnectPeripheralOptionNotifyOnNotificationKey: String
@available(macOS 10.13, *)
let CBConnectPeripheralOptionStartDelayKey: String
@available(macOS 10.13, *)
let CBCentralManagerRestoredStatePeripheralsKey: String
@available(macOS 10.13, *)
let CBCentralManagerRestoredStateScanServicesKey: String
@available(macOS 10.13, *)
let CBCentralManagerRestoredStateScanOptionsKey: String
struct CBConnectionEventMatchingOption : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension CBConnectionEventMatchingOption {
}
