
extension INCar {
  struct ChargingConnectorType : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
}
extension INCar.ChargingConnectorType {
  @available(tvOS 14.0, *)
  static let none: INCar.ChargingConnectorType
  @available(tvOS 14.0, *)
  static let J1772: INCar.ChargingConnectorType
  @available(tvOS 14.0, *)
  static let CCS1: INCar.ChargingConnectorType
  @available(tvOS 14.0, *)
  static let CCS2: INCar.ChargingConnectorType
  @available(tvOS 14.0, *)
  static let chaDeMo: INCar.ChargingConnectorType
  @available(tvOS 14.0, *)
  static let gbtAC: INCar.ChargingConnectorType
  @available(tvOS 14.0, *)
  static let gbtDC: INCar.ChargingConnectorType
  @available(tvOS 14.0, *)
  static let tesla: INCar.ChargingConnectorType
  @available(tvOS 14.0, *)
  static let mennekes: INCar.ChargingConnectorType
}
