
@available(iOS 8.0, *)
let HKMetadataKeyDeviceSerialNumber: String
@available(iOS 8.0, *)
let HKMetadataKeyBodyTemperatureSensorLocation: String
@available(iOS 8.0, *)
enum HKBodyTemperatureSensorLocation : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case other
  case armpit
  case body
  case ear
  case finger
  case gastroIntestinal
  case mouth
  case rectum
  case toe
  case earDrum
  case temporalArtery
  case forehead
}
@available(iOS 8.0, *)
let HKMetadataKeyHeartRateSensorLocation: String
@available(iOS 8.0, *)
enum HKHeartRateSensorLocation : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case other
  case chest
  case wrist
  case finger
  case hand
  case earLobe
  case foot
}
@available(iOS 11.0, *)
let HKMetadataKeyHeartRateMotionContext: String
@available(iOS 11.0, *)
enum HKHeartRateMotionContext : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case notSet
  case sedentary
  case active
}
@available(iOS 8.0, *)
let HKMetadataKeyFoodType: String
@available(iOS 8.0, *)
let HKMetadataKeyUDIDeviceIdentifier: String
@available(iOS 8.0, *)
let HKMetadataKeyUDIProductionIdentifier: String
@available(iOS 8.0, *)
let HKMetadataKeyDigitalSignature: String
@available(iOS 8.0, *)
let HKMetadataKeyExternalUUID: String
@available(iOS 11.0, *)
let HKMetadataKeySyncIdentifier: String
@available(iOS 11.0, *)
let HKMetadataKeySyncVersion: String
@available(iOS 8.0, *)
let HKMetadataKeyTimeZone: String
@available(iOS 8.0, *)
let HKMetadataKeyDeviceName: String
@available(iOS 8.0, *)
let HKMetadataKeyDeviceManufacturerName: String
@available(iOS 8.0, *)
let HKMetadataKeyWasTakenInLab: String
@available(iOS 8.0, *)
let HKMetadataKeyReferenceRangeLowerLimit: String
@available(iOS 8.0, *)
let HKMetadataKeyReferenceRangeUpperLimit: String
@available(iOS 8.0, *)
let HKMetadataKeyWasUserEntered: String
@available(iOS 8.0, *)
let HKMetadataKeyWorkoutBrandName: String
@available(iOS 8.0, *)
let HKMetadataKeyGroupFitness: String
@available(iOS 8.0, *)
let HKMetadataKeyIndoorWorkout: String
@available(iOS 8.0, *)
let HKMetadataKeyCoachedWorkout: String
@available(iOS 10.0, *)
enum HKWeatherCondition : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case none
  case clear
  case fair
  case partlyCloudy
  case mostlyCloudy
  case cloudy
  case foggy
  case haze
  case windy
  case blustery
  case smoky
  case dust
  case snow
  case hail
  case sleet
  case freezingDrizzle
  case freezingRain
  case mixedRainAndHail
  case mixedRainAndSnow
  case mixedRainAndSleet
  case mixedSnowAndSleet
  case drizzle
  case scatteredShowers
  case showers
  case thunderstorms
  case tropicalStorm
  case hurricane
  case tornado
}
@available(iOS 10.0, *)
let HKMetadataKeyWeatherCondition: String
@available(iOS 10.0, *)
let HKMetadataKeyWeatherTemperature: String
@available(iOS 10.0, *)
let HKMetadataKeyWeatherHumidity: String
@available(iOS 9.0, *)
let HKMetadataKeySexualActivityProtectionUsed: String
@available(iOS 9.0, *)
let HKMetadataKeyMenstrualCycleStart: String
@available(iOS 10.0, *)
let HKMetadataKeyLapLength: String
@available(iOS 10.0, *)
enum HKWorkoutSwimmingLocationType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case pool
  case openWater
}
@available(iOS 10.0, *)
let HKMetadataKeySwimmingLocationType: String
@available(iOS 10.0, *)
enum HKSwimmingStrokeStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case mixed
  case freestyle
  case backstroke
  case breaststroke
  case butterfly
}
@available(iOS 10.0, *)
let HKMetadataKeySwimmingStrokeStyle: String
@available(iOS 11.0, *)
enum HKInsulinDeliveryReason : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case basal
  case bolus
}
@available(iOS 11.0, *)
let HKMetadataKeyInsulinDeliveryReason: String
@available(iOS 11.0, *)
enum HKBloodGlucoseMealTime : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case preprandial
  case postprandial
}
@available(iOS 11.0, *)
let HKMetadataKeyBloodGlucoseMealTime: String
@available(iOS 11.0, *)
enum HKVO2MaxTestType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case maxExercise
  case predictionSubMaxExercise
  case predictionNonExercise
}
@available(iOS 11.0, *)
let HKMetadataKeyVO2MaxTestType: String
@available(iOS 11.2, *)
let HKMetadataKeyAverageSpeed: String
@available(iOS 11.2, *)
let HKMetadataKeyMaximumSpeed: String
@available(iOS 11.2, *)
let HKMetadataKeyAlpineSlopeGrade: String
@available(iOS 11.2, *)
let HKMetadataKeyElevationAscended: String
@available(iOS 11.2, *)
let HKMetadataKeyElevationDescended: String
@available(iOS 12.0, *)
let HKMetadataKeyFitnessMachineDuration: String
@available(iOS 12.0, *)
let HKMetadataKeyIndoorBikeDistance: String
@available(iOS 12.0, *)
let HKMetadataKeyCrossTrainerDistance: String
@available(iOS 12.2, *)
let HKMetadataKeyHeartRateEventThreshold: String
@available(iOS 13.0, *)
let HKMetadataKeyAverageMETs: String
@available(iOS 13.0, *)
let HKMetadataKeyAudioExposureLevel: String
@available(iOS 14.2, *)
let HKMetadataKeyAudioExposureDuration: String
@available(iOS 14.0, *)
enum HKAppleECGAlgorithmVersion : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case version1
}
@available(iOS 14.0, *)
let HKMetadataKeyAppleECGAlgorithmVersion: String
@available(iOS 14.0, *)
enum HKDevicePlacementSide : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case left
  case right
  case central
}
@available(iOS 14.0, *)
let HKMetadataKeyDevicePlacementSide: String
@available(iOS 14.0, *)
let HKMetadataKeyBarometricPressure: String
@available(iOS 14.0, *)
let HKMetadataKeyAppleDeviceCalibrated: String
