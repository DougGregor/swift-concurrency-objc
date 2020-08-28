
@available(tvOS 7.0, *)
let CBCentralManagerOptionShowPowerAlertKey: String
@available(tvOS 7.0, *)
let CBCentralManagerOptionRestoreIdentifierKey: String
let CBCentralManagerScanOptionAllowDuplicatesKey: String
@available(tvOS 7.0, *)
let CBCentralManagerScanOptionSolicitedServiceUUIDsKey: String
@available(tvOS 6.0, *)
let CBConnectPeripheralOptionNotifyOnConnectionKey: String
let CBConnectPeripheralOptionNotifyOnDisconnectionKey: String
@available(tvOS 6.0, *)
let CBConnectPeripheralOptionNotifyOnNotificationKey: String
@available(tvOS 6.0, *)
let CBConnectPeripheralOptionStartDelayKey: String
@available(tvOS 13.0, *)
let CBConnectPeripheralOptionEnableTransportBridgingKey: String
@available(tvOS 13.0, *)
let CBConnectPeripheralOptionRequiresANCS: String
@available(tvOS 7.0, *)
let CBCentralManagerRestoredStatePeripheralsKey: String
@available(tvOS 7.0, *)
let CBCentralManagerRestoredStateScanServicesKey: String
@available(tvOS 7.0, *)
let CBCentralManagerRestoredStateScanOptionsKey: String
struct CBConnectionEventMatchingOption : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension CBConnectionEventMatchingOption {
  @available(tvOS 13.0, *)
  static let serviceUUIDs: CBConnectionEventMatchingOption
  @available(tvOS 13.0, *)
  static let peripheralUUIDs: CBConnectionEventMatchingOption
}
