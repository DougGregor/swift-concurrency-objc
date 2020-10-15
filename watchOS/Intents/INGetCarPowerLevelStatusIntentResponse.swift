
@available(watchOS 3.2, *)
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
@available(watchOS 3.2, *)
class INGetCarPowerLevelStatusIntentResponse : INIntentResponse {
  init(code: INGetCarPowerLevelStatusIntentResponseCode, userActivity: NSUserActivity?)
  var code: INGetCarPowerLevelStatusIntentResponseCode { get }
  @available(watchOS 7.0, *)
  var carIdentifier: String?
  @NSCopying var __fuelPercentRemaining: NSNumber?
  @NSCopying var __chargePercentRemaining: NSNumber?
  var distanceRemaining: Measurement<UnitLength>?
  @available(watchOS 5.0, *)
  @NSCopying var __charging: NSNumber?
  @available(watchOS 5.0, *)
  @NSCopying var __minutesToFull: NSNumber?
  @available(watchOS 7.0, *)
  var maximumDistance: Measurement<UnitLength>?
  @available(watchOS 7.0, *)
  var distanceRemainingElectric: Measurement<UnitLength>?
  @available(watchOS 7.0, *)
  var maximumDistanceElectric: Measurement<UnitLength>?
  @available(watchOS 7.0, *)
  var distanceRemainingFuel: Measurement<UnitLength>?
  @available(watchOS 7.0, *)
  var maximumDistanceFuel: Measurement<UnitLength>?
  @available(watchOS 7.0, *)
  var consumptionFormulaArguments: [String : Any]?
  @available(watchOS 7.0, *)
  var chargingFormulaArguments: [String : Any]?
  @available(watchOS 7.0, *)
  var dateOfLastStateUpdate: DateComponents?
  @available(watchOS 7.0, *)
  var activeConnector: INCar.ChargingConnectorType?
  @available(watchOS 7.0, *)
  var maximumBatteryCapacity: Measurement<UnitEnergy>?
  @available(watchOS 7.0, *)
  var currentBatteryCapacity: Measurement<UnitEnergy>?
  @available(watchOS 7.0, *)
  var minimumBatteryCapacity: Measurement<UnitEnergy>?
}

@available(macOS 10.15, iOS 10.3, watchOS 3.2, *)
@available(macOS, unavailable)
@available(tvOS, unavailable)
extension INGetCarPowerLevelStatusIntentResponse {
  @nonobjc final var fuelPercentRemaining: Float?
  @nonobjc final var chargePercentRemaining: Float?
  @available(iOS 12.0, watchOS 5.0, *)
  @nonobjc final var charging: Bool?
  @available(iOS 12.0, watchOS 5.0, *)
  @nonobjc final var minutesToFull: Int?
}
