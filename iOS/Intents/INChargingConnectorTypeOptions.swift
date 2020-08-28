
@available(iOS 14.0, *)
struct INChargingConnectorTypeOptions : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var none: INChargingConnectorTypeOptions { get }
  static var J1772: INChargingConnectorTypeOptions { get }
  static var CCS1: INChargingConnectorTypeOptions { get }
  static var CCS2: INChargingConnectorTypeOptions { get }
  static var chAdeMO: INChargingConnectorTypeOptions { get }
  static var GBTAC: INChargingConnectorTypeOptions { get }
  static var GBTDC: INChargingConnectorTypeOptions { get }
  static var tesla: INChargingConnectorTypeOptions { get }
  static var mennekes: INChargingConnectorTypeOptions { get }
}
