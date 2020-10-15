
@available(tvOS 10.0, *)
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
@available(tvOS 10.0, *)
enum HMCharacteristicValueAirParticulateSize : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case size2_5
  case size10
}
@available(tvOS 10.0, *)
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
@available(tvOS 10.0, *)
enum HMCharacteristicValuePositionState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case closing
  case opening
  case stopped
}
@available(tvOS 10.0, *)
enum HMCharacteristicValueCurrentSecuritySystemState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case stayArm
  case awayArm
  case nightArm
  case disarmed
  case triggered
}
@available(tvOS 10.0, *)
enum HMCharacteristicValueTargetSecuritySystemState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case stayArm
  case awayArm
  case nightArm
  case disarm
}
@available(tvOS 10.0, *)
enum HMCharacteristicValueJammedStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case none
  case jammed
}
@available(tvOS 10.0, *)
enum HMCharacteristicValueTamperedStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case none
  case tampered
}
@available(tvOS 10.0, *)
enum HMCharacteristicValueLeakStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case none
  case detected
}
@available(tvOS 10.0, *)
enum HMCharacteristicValueContactState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case detected
  case none
}
@available(tvOS 10.0, *)
enum HMCharacteristicValueStatusFault : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case noFault
  case generalFault
}
@available(tvOS 10.0, *)
enum HMCharacteristicValueCarbonMonoxideDetectionStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case notDetected
  case detected
}
@available(tvOS 10.0, *)
enum HMCharacteristicValueCarbonDioxideDetectionStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case notDetected
  case detected
}
@available(tvOS 10.0, *)
enum HMCharacteristicValueOccupancyStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case notOccupied
  case occupied
}
@available(tvOS 10.0, *)
enum HMCharacteristicValueSecuritySystemAlarmType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case noAlarm
  case unknown
}
@available(tvOS 10.1, *)
enum HMCharacteristicValueCurrentAirPurifierState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case inactive
  case idle
  case active
}
@available(tvOS 10.1, *)
enum HMCharacteristicValueTargetAirPurifierState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case manual
  case automatic
}
@available(tvOS 10.1, *)
enum HMCharacteristicValueCurrentSlatState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case stationary
  case jammed
  case oscillating
}
@available(tvOS 10.1, *)
enum HMCharacteristicValueSlatType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case horizontal
  case vertical
}
@available(tvOS 10.1, *)
enum HMCharacteristicValueFilterChange : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case notNeeded
  case needed
}
@available(tvOS 10.2, *)
enum HMCharacteristicValueLabelNamespace : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case dot
  case numeral
}
@available(tvOS 11.2, *)
enum HMCharacteristicValueProgramMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case notScheduled
  case scheduled
  case scheduleOverriddenToManual
}
@available(tvOS 11.2, *)
enum HMCharacteristicValueUsageState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case notInUse
  case inUse
}
@available(tvOS 11.2, *)
enum HMCharacteristicValueValveType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case genericValve
  case irrigation
  case showerHead
  case waterFaucet
}
@available(tvOS 10.0, *)
enum HMCharacteristicValueDoorState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case open
  case closed
  case opening
  case closing
  case stopped
}
@available(tvOS 10.0, *)
enum HMCharacteristicValueCurrentHeatingCooling : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case off
  case heat
  case cool
}
@available(tvOS 10.0, *)
enum HMCharacteristicValueLockMechanismState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unsecured
  case secured
  case jammed
  case unknown
}
@available(tvOS 10.0, *)
enum HMCharacteristicValueTargetLockMechanismState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unsecured
  case secured
}
@available(tvOS 10.0, *)
enum HMCharacteristicValueRotationDirection : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case clockwise
  case counterClockwise
}
@available(tvOS 10.0, *)
enum HMCharacteristicValueTargetDoorState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case open
  case closed
}
@available(tvOS 10.0, *)
enum HMCharacteristicValueHeatingCooling : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case off
  case heat
  case cool
  case auto
}
@available(tvOS 10.0, *)
enum HMCharacteristicValueTemperatureUnit : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case celsius
  case fahrenheit
}
@available(tvOS 10.2, *)
enum HMCharacteristicValueInputEvent : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case singlePress
  case doublePress
  case longPress
}
@available(tvOS 10.0, *)
enum HMCharacteristicValueSmokeDetectionStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case none
  case detected
}
@available(tvOS 10.0, *)
enum HMCharacteristicValueBatteryStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case normal
  case low
}
@available(tvOS 10.0, *)
enum HMCharacteristicValueChargingState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case none
  case inProgress
  case notChargeable
}
@available(tvOS 10.1, *)
enum HMCharacteristicValueLockPhysicalControlsState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case notLocked
  case locked
}
@available(tvOS 10.1, *)
enum HMCharacteristicValueCurrentFanState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case inactive
  case idle
  case active
}
@available(tvOS 10.1, *)
enum HMCharacteristicValueActivationState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case inactive
  case active
}
@available(tvOS 10.1, *)
enum HMCharacteristicValueCurrentHeaterCoolerState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case inactive
  case idle
  case heating
  case cooling
}
@available(tvOS 10.1, *)
enum HMCharacteristicValueTargetHeaterCoolerState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case automatic
  case heat
  case cool
}
@available(tvOS 10.1, *)
enum HMCharacteristicValueCurrentHumidifierDehumidifierState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case inactive
  case idle
  case humidifying
  case dehumidifying
}
@available(tvOS 10.1, *)
enum HMCharacteristicValueTargetHumidifierDehumidifierState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case automatic
  case humidify
  case dehumidify
}
@available(tvOS 10.1, *)
enum HMCharacteristicValueSwingMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case disabled
  case enabled
}
@available(tvOS 10.1, *)
enum HMCharacteristicValueTargetFanState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case manual
  case automatic
}
@available(tvOS 11.2, *)
enum HMCharacteristicValueConfigurationState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case notConfigured
  case configured
}
