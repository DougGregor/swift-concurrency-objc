
@available(iOS 8.0, *)
enum HMCharacteristicValueLockMechanismLastKnownAction : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case securedUsingPhysicalMovementInterior
  case unsecuredUsingPhysicalMovementInterior
  case securedUsingPhysicalMovementExterior
  case unsecuredUsingPhysicalMovementExterior
  case securedWithKeypad
  case unsecuredWithKeypad
  case securedRemotely
  case unsecuredRemotely
  case securedWithAutomaticSecureTimeout
  case securedUsingPhysicalMovement
  case unsecuredUsingPhysicalMovement
}
@available(iOS 9.0, *)
enum HMCharacteristicValueAirParticulateSize : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case size2_5
  case size10
}
@available(iOS 9.0, *)
enum HMCharacteristicValueAirQuality : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case excellent
  case good
  case fair
  case inferior
  case poor
}
@available(iOS 9.0, *)
enum HMCharacteristicValuePositionState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case closing
  case opening
  case stopped
}
@available(iOS 9.0, *)
enum HMCharacteristicValueCurrentSecuritySystemState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case stayArm
  case awayArm
  case nightArm
  case disarmed
  case triggered
}
@available(iOS 9.0, *)
enum HMCharacteristicValueTargetSecuritySystemState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case stayArm
  case awayArm
  case nightArm
  case disarm
}
@available(iOS 10.0, *)
enum HMCharacteristicValueJammedStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case none
  case jammed
}
@available(iOS 10.0, *)
enum HMCharacteristicValueTamperedStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case none
  case tampered
}
@available(iOS 10.0, *)
enum HMCharacteristicValueLeakStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case none
  case detected
}
@available(iOS 10.0, *)
enum HMCharacteristicValueContactState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case detected
  case none
}
@available(iOS 10.0, *)
enum HMCharacteristicValueStatusFault : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case noFault
  case generalFault
}
@available(iOS 10.0, *)
enum HMCharacteristicValueCarbonMonoxideDetectionStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case notDetected
  case detected
}
@available(iOS 10.0, *)
enum HMCharacteristicValueCarbonDioxideDetectionStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case notDetected
  case detected
}
@available(iOS 10.0, *)
enum HMCharacteristicValueOccupancyStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case notOccupied
  case occupied
}
@available(iOS 10.0, *)
enum HMCharacteristicValueSecuritySystemAlarmType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case noAlarm
  case unknown
}
@available(iOS 10.2, *)
enum HMCharacteristicValueCurrentAirPurifierState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case inactive
  case idle
  case active
}
@available(iOS 10.2, *)
enum HMCharacteristicValueTargetAirPurifierState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case manual
  case automatic
}
@available(iOS 10.2, *)
enum HMCharacteristicValueCurrentSlatState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case stationary
  case jammed
  case oscillating
}
@available(iOS 10.2, *)
enum HMCharacteristicValueSlatType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case horizontal
  case vertical
}
@available(iOS 10.2, *)
enum HMCharacteristicValueFilterChange : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case notNeeded
  case needed
}
@available(iOS 10.3, *)
enum HMCharacteristicValueLabelNamespace : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case dot
  case numeral
}
@available(iOS 11.2, *)
enum HMCharacteristicValueProgramMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case notScheduled
  case scheduled
  case scheduleOverriddenToManual
}
@available(iOS 11.2, *)
enum HMCharacteristicValueUsageState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case notInUse
  case inUse
}
@available(iOS 11.2, *)
enum HMCharacteristicValueValveType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case genericValve
  case irrigation
  case showerHead
  case waterFaucet
}
@available(iOS 8.0, *)
enum HMCharacteristicValueDoorState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case open
  case closed
  case opening
  case closing
  case stopped
}
@available(iOS 8.0, *)
enum HMCharacteristicValueCurrentHeatingCooling : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case off
  case heat
  case cool
}
@available(iOS 8.0, *)
enum HMCharacteristicValueLockMechanismState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unsecured
  case secured
  case jammed
  case unknown
}
@available(iOS 8.0, *)
enum HMCharacteristicValueTargetLockMechanismState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unsecured
  case secured
}
@available(iOS 8.0, *)
enum HMCharacteristicValueRotationDirection : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case clockwise
  case counterClockwise
}
@available(iOS 8.0, *)
enum HMCharacteristicValueTargetDoorState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case open
  case closed
}
@available(iOS 8.0, *)
enum HMCharacteristicValueHeatingCooling : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case off
  case heat
  case cool
  case auto
}
@available(iOS 8.0, *)
enum HMCharacteristicValueTemperatureUnit : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case celsius
  case fahrenheit
}
@available(iOS 10.3, *)
enum HMCharacteristicValueInputEvent : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case singlePress
  case doublePress
  case longPress
}
@available(iOS 10.0, *)
enum HMCharacteristicValueSmokeDetectionStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case none
  case detected
}
@available(iOS 10.0, *)
enum HMCharacteristicValueBatteryStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case normal
  case low
}
@available(iOS 10.0, *)
enum HMCharacteristicValueChargingState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case none
  case inProgress
  case notChargeable
}
@available(iOS 10.2, *)
enum HMCharacteristicValueLockPhysicalControlsState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case notLocked
  case locked
}
@available(iOS 10.2, *)
enum HMCharacteristicValueCurrentFanState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case inactive
  case idle
  case active
}
@available(iOS 10.2, *)
enum HMCharacteristicValueActivationState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case inactive
  case active
}
@available(iOS 10.2, *)
enum HMCharacteristicValueCurrentHeaterCoolerState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case inactive
  case idle
  case heating
  case cooling
}
@available(iOS 10.2, *)
enum HMCharacteristicValueTargetHeaterCoolerState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case automatic
  case heat
  case cool
}
@available(iOS 10.2, *)
enum HMCharacteristicValueCurrentHumidifierDehumidifierState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case inactive
  case idle
  case humidifying
  case dehumidifying
}
@available(iOS 10.2, *)
enum HMCharacteristicValueTargetHumidifierDehumidifierState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case automatic
  case humidify
  case dehumidify
}
@available(iOS 10.2, *)
enum HMCharacteristicValueSwingMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case disabled
  case enabled
}
@available(iOS 10.2, *)
enum HMCharacteristicValueTargetFanState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case manual
  case automatic
}
@available(iOS 11.2, *)
enum HMCharacteristicValueConfigurationState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case notConfigured
  case configured
}
