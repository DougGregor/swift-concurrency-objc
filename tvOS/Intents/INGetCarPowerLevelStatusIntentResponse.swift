
@available(tvOS 10.3, *)
enum INGetCarPowerLevelStatusIntentResponseCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unspecified
  case ready
  case inProgress
  case success
  case failure
  case failureRequiringAppLaunch
}
@available(tvOS 10.3, *)
class INGetCarPowerLevelStatusIntentResponse : INIntentResponse {
  init(code: INGetCarPowerLevelStatusIntentResponseCode, userActivity: NSUserActivity?)
  var code: INGetCarPowerLevelStatusIntentResponseCode { get }
  @available(tvOS 14.0, *)
  var carIdentifier: String?
  @NSCopying var __fuelPercentRemaining: NSNumber?
  @NSCopying var __chargePercentRemaining: NSNumber?
  var distanceRemaining: Measurement<UnitLength>?
  @available(tvOS 12.0, *)
  @NSCopying var __charging: NSNumber?
  @available(tvOS 12.0, *)
  @NSCopying var __minutesToFull: NSNumber?
  @available(tvOS 14.0, *)
  var maximumDistance: Measurement<UnitLength>?
  @available(tvOS 14.0, *)
  var distanceRemainingElectric: Measurement<UnitLength>?
  @available(tvOS 14.0, *)
  var maximumDistanceElectric: Measurement<UnitLength>?
  @available(tvOS 14.0, *)
  var distanceRemainingFuel: Measurement<UnitLength>?
  @available(tvOS 14.0, *)
  var maximumDistanceFuel: Measurement<UnitLength>?
  @available(tvOS 14.0, *)
  var consumptionFormulaArguments: [String : Any]?
  @available(tvOS 14.0, *)
  var chargingFormulaArguments: [String : Any]?
  @available(tvOS 14.0, *)
  var dateOfLastStateUpdate: DateComponents?
  @available(tvOS 14.0, *)
  var activeConnector: INCar.ChargingConnectorType?
  @available(tvOS 14.0, *)
  var maximumBatteryCapacity: Measurement<UnitEnergy>?
  @available(tvOS 14.0, *)
  var currentBatteryCapacity: Measurement<UnitEnergy>?
  @available(tvOS 14.0, *)
  var minimumBatteryCapacity: Measurement<UnitEnergy>?
}
