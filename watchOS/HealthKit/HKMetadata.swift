
@available(watchOS 2.0, *)
let HKMetadataKeyDeviceSerialNumber: String
@available(watchOS 2.0, *)
let HKMetadataKeyBodyTemperatureSensorLocation: String
@available(watchOS 2.0, *)
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
@available(watchOS 2.0, *)
let HKMetadataKeyHeartRateSensorLocation: String
@available(watchOS 2.0, *)
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
@available(watchOS 4.0, *)
let HKMetadataKeyHeartRateMotionContext: String
@available(watchOS 4.0, *)
enum HKHeartRateMotionContext : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case notSet
  case sedentary
  case active
}
@available(watchOS 2.0, *)
let HKMetadataKeyFoodType: String
@available(watchOS 2.0, *)
let HKMetadataKeyUDIDeviceIdentifier: String
@available(watchOS 2.0, *)
let HKMetadataKeyUDIProductionIdentifier: String
@available(watchOS 2.0, *)
let HKMetadataKeyDigitalSignature: String
@available(watchOS 2.0, *)
let HKMetadataKeyExternalUUID: String
@available(watchOS 4.0, *)
let HKMetadataKeySyncIdentifier: String
@available(watchOS 4.0, *)
let HKMetadataKeySyncVersion: String
@available(watchOS 2.0, *)
let HKMetadataKeyTimeZone: String
@available(watchOS 2.0, *)
let HKMetadataKeyDeviceName: String
@available(watchOS 2.0, *)
let HKMetadataKeyDeviceManufacturerName: String
@available(watchOS 2.0, *)
let HKMetadataKeyWasTakenInLab: String
@available(watchOS 2.0, *)
let HKMetadataKeyReferenceRangeLowerLimit: String
@available(watchOS 2.0, *)
let HKMetadataKeyReferenceRangeUpperLimit: String
@available(watchOS 2.0, *)
let HKMetadataKeyWasUserEntered: String
@available(watchOS 2.0, *)
let HKMetadataKeyWorkoutBrandName: String
@available(watchOS 2.0, *)
let HKMetadataKeyGroupFitness: String
@available(watchOS 2.0, *)
let HKMetadataKeyIndoorWorkout: String
@available(watchOS 2.0, *)
let HKMetadataKeyCoachedWorkout: String
@available(watchOS 3.0, *)
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
@available(watchOS 3.0, *)
let HKMetadataKeyWeatherCondition: String
@available(watchOS 3.0, *)
let HKMetadataKeyWeatherTemperature: String
@available(watchOS 3.0, *)
let HKMetadataKeyWeatherHumidity: String
@available(watchOS 2.0, *)
let HKMetadataKeySexualActivityProtectionUsed: String
@available(watchOS 2.0, *)
let HKMetadataKeyMenstrualCycleStart: String
@available(watchOS 3.0, *)
let HKMetadataKeyLapLength: String
@available(watchOS 3.0, *)
enum HKWorkoutSwimmingLocationType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case pool
  case openWater
}
@available(watchOS 3.0, *)
let HKMetadataKeySwimmingLocationType: String
@available(watchOS 3.0, *)
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
@available(watchOS 3.0, *)
let HKMetadataKeySwimmingStrokeStyle: String
@available(watchOS 4.0, *)
enum HKInsulinDeliveryReason : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case basal
  case bolus
}
@available(watchOS 4.0, *)
let HKMetadataKeyInsulinDeliveryReason: String
@available(watchOS 4.0, *)
enum HKBloodGlucoseMealTime : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case preprandial
  case postprandial
}
@available(watchOS 4.0, *)
let HKMetadataKeyBloodGlucoseMealTime: String
@available(watchOS 4.0, *)
enum HKVO2MaxTestType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case maxExercise
  case predictionSubMaxExercise
  case predictionNonExercise
}
@available(watchOS 4.0, *)
let HKMetadataKeyVO2MaxTestType: String
@available(watchOS 4.2, *)
let HKMetadataKeyAverageSpeed: String
@available(watchOS 4.2, *)
let HKMetadataKeyMaximumSpeed: String
@available(watchOS 4.2, *)
let HKMetadataKeyAlpineSlopeGrade: String
@available(watchOS 4.2, *)
let HKMetadataKeyElevationAscended: String
@available(watchOS 4.2, *)
let HKMetadataKeyElevationDescended: String
@available(watchOS 5.0, *)
let HKMetadataKeyFitnessMachineDuration: String
@available(watchOS 5.0, *)
let HKMetadataKeyIndoorBikeDistance: String
@available(watchOS 5.0, *)
let HKMetadataKeyCrossTrainerDistance: String
@available(watchOS 5.2, *)
let HKMetadataKeyHeartRateEventThreshold: String
@available(watchOS 6.0, *)
let HKMetadataKeyAverageMETs: String
@available(watchOS 6.0, *)
let HKMetadataKeyAudioExposureLevel: String
@available(watchOS 7.1, *)
let HKMetadataKeyAudioExposureDuration: String
@available(watchOS 7.0, *)
enum HKAppleECGAlgorithmVersion : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case version1
}
@available(watchOS 7.0, *)
let HKMetadataKeyAppleECGAlgorithmVersion: String
@available(watchOS 7.0, *)
enum HKDevicePlacementSide : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case left
  case right
  case central
}
@available(watchOS 7.0, *)
let HKMetadataKeyDevicePlacementSide: String
@available(watchOS 7.0, *)
let HKMetadataKeyBarometricPressure: String
@available(watchOS 7.0, *)
let HKMetadataKeyAppleDeviceCalibrated: String
