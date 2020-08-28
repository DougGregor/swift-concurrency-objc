
@available(watchOS 7.0, *)
class INCar : NSObject, NSCopying, NSSecureCoding {
  init(carIdentifier: String, displayName: String?, year: String?, make: String?, model: String?, color: CGColor?, headUnit: INCar.HeadUnit?, supportedChargingConnectors: [INCar.ChargingConnectorType]?)
  var carIdentifier: String { get }
  var displayName: String? { get }
  var year: String? { get }
  var make: String? { get }
  var model: String? { get }
  var color: CGColor? { get }
  @NSCopying var headUnit: INCar.HeadUnit? { get }
  var supportedChargingConnectors: [INCar.ChargingConnectorType]? { get }
  func setMaximumPower(_ power: Measurement<UnitPower>, for chargingConnectorType: INCar.ChargingConnectorType)
  func maximumPower(for chargingConnectorType: INCar.ChargingConnectorType) -> Measurement<UnitPower>?
}
