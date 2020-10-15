
struct HKQuantityTypeIdentifier : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension HKQuantityTypeIdentifier {
  @available(watchOS 2.0, *)
  static let bodyMassIndex: HKQuantityTypeIdentifier
  @available(watchOS 2.0, *)
  static let bodyFatPercentage: HKQuantityTypeIdentifier
  @available(watchOS 2.0, *)
  static let height: HKQuantityTypeIdentifier
  @available(watchOS 2.0, *)
  static let bodyMass: HKQuantityTypeIdentifier
  @available(watchOS 2.0, *)
  static let leanBodyMass: HKQuantityTypeIdentifier
  @available(watchOS 4.0, *)
  static let waistCircumference: HKQuantityTypeIdentifier
  @available(watchOS 2.0, *)
  static let stepCount: HKQuantityTypeIdentifier
  @available(watchOS 2.0, *)
  static let distanceWalkingRunning: HKQuantityTypeIdentifier
  @available(watchOS 2.0, *)
  static let distanceCycling: HKQuantityTypeIdentifier
  @available(watchOS 3.0, *)
  static let distanceWheelchair: HKQuantityTypeIdentifier
  @available(watchOS 2.0, *)
  static let basalEnergyBurned: HKQuantityTypeIdentifier
  @available(watchOS 2.0, *)
  static let activeEnergyBurned: HKQuantityTypeIdentifier
  @available(watchOS 2.0, *)
  static let flightsClimbed: HKQuantityTypeIdentifier
  @available(watchOS 2.0, *)
  static let nikeFuel: HKQuantityTypeIdentifier
  @available(watchOS 2.2, *)
  static let appleExerciseTime: HKQuantityTypeIdentifier
  @available(watchOS 3.0, *)
  static let pushCount: HKQuantityTypeIdentifier
  @available(watchOS 3.0, *)
  static let distanceSwimming: HKQuantityTypeIdentifier
  @available(watchOS 3.0, *)
  static let swimmingStrokeCount: HKQuantityTypeIdentifier
  @available(watchOS 4.0, *)
  static let vo2Max: HKQuantityTypeIdentifier
  @available(watchOS 4.2, *)
  static let distanceDownhillSnowSports: HKQuantityTypeIdentifier
  @available(watchOS 6.0, *)
  static let appleStandTime: HKQuantityTypeIdentifier
  @available(watchOS 7.0, *)
  static let walkingSpeed: HKQuantityTypeIdentifier
  @available(watchOS 7.0, *)
  static let walkingDoubleSupportPercentage: HKQuantityTypeIdentifier
  @available(watchOS 7.0, *)
  static let walkingAsymmetryPercentage: HKQuantityTypeIdentifier
  @available(watchOS 7.0, *)
  static let walkingStepLength: HKQuantityTypeIdentifier
  @available(watchOS 7.0, *)
  static let sixMinuteWalkTestDistance: HKQuantityTypeIdentifier
  @available(watchOS 7.0, *)
  static let stairAscentSpeed: HKQuantityTypeIdentifier
  @available(watchOS 7.0, *)
  static let stairDescentSpeed: HKQuantityTypeIdentifier
  @available(watchOS 2.0, *)
  static let heartRate: HKQuantityTypeIdentifier
  @available(watchOS 2.0, *)
  static let bodyTemperature: HKQuantityTypeIdentifier
  @available(watchOS 2.0, *)
  static let basalBodyTemperature: HKQuantityTypeIdentifier
  @available(watchOS 2.0, *)
  static let bloodPressureSystolic: HKQuantityTypeIdentifier
  @available(watchOS 2.0, *)
  static let bloodPressureDiastolic: HKQuantityTypeIdentifier
  @available(watchOS 2.0, *)
  static let respiratoryRate: HKQuantityTypeIdentifier
  @available(watchOS 4.0, *)
  static let restingHeartRate: HKQuantityTypeIdentifier
  @available(watchOS 4.0, *)
  static let walkingHeartRateAverage: HKQuantityTypeIdentifier
  @available(watchOS 4.0, *)
  static let heartRateVariabilitySDNN: HKQuantityTypeIdentifier
  @available(watchOS 2.0, *)
  static let oxygenSaturation: HKQuantityTypeIdentifier
  @available(watchOS 2.0, *)
  static let peripheralPerfusionIndex: HKQuantityTypeIdentifier
  @available(watchOS 2.0, *)
  static let bloodGlucose: HKQuantityTypeIdentifier
  @available(watchOS 2.0, *)
  static let numberOfTimesFallen: HKQuantityTypeIdentifier
  @available(watchOS 2.0, *)
  static let electrodermalActivity: HKQuantityTypeIdentifier
  @available(watchOS 2.0, *)
  static let inhalerUsage: HKQuantityTypeIdentifier
  @available(watchOS 4.0, *)
  static let insulinDelivery: HKQuantityTypeIdentifier
  @available(watchOS 2.0, *)
  static let bloodAlcoholContent: HKQuantityTypeIdentifier
  @available(watchOS 2.0, *)
  static let forcedVitalCapacity: HKQuantityTypeIdentifier
  @available(watchOS 2.0, *)
  static let forcedExpiratoryVolume1: HKQuantityTypeIdentifier
  @available(watchOS 2.0, *)
  static let peakExpiratoryFlowRate: HKQuantityTypeIdentifier
  @available(watchOS 6.0, *)
  static let environmentalAudioExposure: HKQuantityTypeIdentifier
  @available(watchOS 6.0, *)
  static let headphoneAudioExposure: HKQuantityTypeIdentifier
  @available(watchOS 2.0, *)
  static let dietaryFatTotal: HKQuantityTypeIdentifier
  @available(watchOS 2.0, *)
  static let dietaryFatPolyunsaturated: HKQuantityTypeIdentifier
  @available(watchOS 2.0, *)
  static let dietaryFatMonounsaturated: HKQuantityTypeIdentifier
  @available(watchOS 2.0, *)
  static let dietaryFatSaturated: HKQuantityTypeIdentifier
  @available(watchOS 2.0, *)
  static let dietaryCholesterol: HKQuantityTypeIdentifier
  @available(watchOS 2.0, *)
  static let dietarySodium: HKQuantityTypeIdentifier
  @available(watchOS 2.0, *)
  static let dietaryCarbohydrates: HKQuantityTypeIdentifier
  @available(watchOS 2.0, *)
  static let dietaryFiber: HKQuantityTypeIdentifier
  @available(watchOS 2.0, *)
  static let dietarySugar: HKQuantityTypeIdentifier
  @available(watchOS 2.0, *)
  static let dietaryEnergyConsumed: HKQuantityTypeIdentifier
  @available(watchOS 2.0, *)
  static let dietaryProtein: HKQuantityTypeIdentifier
  @available(watchOS 2.0, *)
  static let dietaryVitaminA: HKQuantityTypeIdentifier
  @available(watchOS 2.0, *)
  static let dietaryVitaminB6: HKQuantityTypeIdentifier
  @available(watchOS 2.0, *)
  static let dietaryVitaminB12: HKQuantityTypeIdentifier
  @available(watchOS 2.0, *)
  static let dietaryVitaminC: HKQuantityTypeIdentifier
  @available(watchOS 2.0, *)
  static let dietaryVitaminD: HKQuantityTypeIdentifier
  @available(watchOS 2.0, *)
  static let dietaryVitaminE: HKQuantityTypeIdentifier
  @available(watchOS 2.0, *)
  static let dietaryVitaminK: HKQuantityTypeIdentifier
  @available(watchOS 2.0, *)
  static let dietaryCalcium: HKQuantityTypeIdentifier
  @available(watchOS 2.0, *)
  static let dietaryIron: HKQuantityTypeIdentifier
  @available(watchOS 2.0, *)
  static let dietaryThiamin: HKQuantityTypeIdentifier
  @available(watchOS 2.0, *)
  static let dietaryRiboflavin: HKQuantityTypeIdentifier
  @available(watchOS 2.0, *)
  static let dietaryNiacin: HKQuantityTypeIdentifier
  @available(watchOS 2.0, *)
  static let dietaryFolate: HKQuantityTypeIdentifier
  @available(watchOS 2.0, *)
  static let dietaryBiotin: HKQuantityTypeIdentifier
  @available(watchOS 2.0, *)
  static let dietaryPantothenicAcid: HKQuantityTypeIdentifier
  @available(watchOS 2.0, *)
  static let dietaryPhosphorus: HKQuantityTypeIdentifier
  @available(watchOS 2.0, *)
  static let dietaryIodine: HKQuantityTypeIdentifier
  @available(watchOS 2.0, *)
  static let dietaryMagnesium: HKQuantityTypeIdentifier
  @available(watchOS 2.0, *)
  static let dietaryZinc: HKQuantityTypeIdentifier
  @available(watchOS 2.0, *)
  static let dietarySelenium: HKQuantityTypeIdentifier
  @available(watchOS 2.0, *)
  static let dietaryCopper: HKQuantityTypeIdentifier
  @available(watchOS 2.0, *)
  static let dietaryManganese: HKQuantityTypeIdentifier
  @available(watchOS 2.0, *)
  static let dietaryChromium: HKQuantityTypeIdentifier
  @available(watchOS 2.0, *)
  static let dietaryMolybdenum: HKQuantityTypeIdentifier
  @available(watchOS 2.0, *)
  static let dietaryChloride: HKQuantityTypeIdentifier
  @available(watchOS 2.0, *)
  static let dietaryPotassium: HKQuantityTypeIdentifier
  @available(watchOS 2.0, *)
  static let dietaryCaffeine: HKQuantityTypeIdentifier
  @available(watchOS 2.0, *)
  static let dietaryWater: HKQuantityTypeIdentifier
  @available(watchOS 2.0, *)
  static let uvExposure: HKQuantityTypeIdentifier
}
struct HKCategoryTypeIdentifier : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension HKCategoryTypeIdentifier {
  @available(watchOS 2.0, *)
  static let sleepAnalysis: HKCategoryTypeIdentifier
  @available(watchOS 2.0, *)
  static let appleStandHour: HKCategoryTypeIdentifier
  @available(watchOS 2.0, *)
  static let cervicalMucusQuality: HKCategoryTypeIdentifier
  @available(watchOS 2.0, *)
  static let ovulationTestResult: HKCategoryTypeIdentifier
  @available(watchOS 2.0, *)
  static let menstrualFlow: HKCategoryTypeIdentifier
  @available(watchOS 2.0, *)
  static let intermenstrualBleeding: HKCategoryTypeIdentifier
  @available(watchOS 2.0, *)
  static let sexualActivity: HKCategoryTypeIdentifier
  @available(watchOS 3.0, *)
  static let mindfulSession: HKCategoryTypeIdentifier
  @available(watchOS 5.2, *)
  static let highHeartRateEvent: HKCategoryTypeIdentifier
  @available(watchOS 5.2, *)
  static let lowHeartRateEvent: HKCategoryTypeIdentifier
  @available(watchOS 5.2, *)
  static let irregularHeartRhythmEvent: HKCategoryTypeIdentifier
  @available(watchOS, introduced: 6.0, deprecated: 7.0, renamed: "HKCategoryTypeIdentifier.environmentalAudioExposureEvent")
  static let audioExposureEvent: HKCategoryTypeIdentifier
  @available(watchOS 6.0, *)
  static let toothbrushingEvent: HKCategoryTypeIdentifier
  @available(watchOS 7.0, *)
  static let environmentalAudioExposureEvent: HKCategoryTypeIdentifier
  @available(watchOS 7.1, *)
  static let headphoneAudioExposureEvent: HKCategoryTypeIdentifier
  @available(watchOS 7.0, *)
  static let handwashingEvent: HKCategoryTypeIdentifier
  @available(watchOS 7.0, *)
  static let abdominalCramps: HKCategoryTypeIdentifier
  @available(watchOS 7.0, *)
  static let acne: HKCategoryTypeIdentifier
  @available(watchOS 7.0, *)
  static let appetiteChanges: HKCategoryTypeIdentifier
  @available(watchOS 7.0, *)
  static let bladderIncontinence: HKCategoryTypeIdentifier
  @available(watchOS 7.0, *)
  static let bloating: HKCategoryTypeIdentifier
  @available(watchOS 7.0, *)
  static let breastPain: HKCategoryTypeIdentifier
  @available(watchOS 7.0, *)
  static let chestTightnessOrPain: HKCategoryTypeIdentifier
  @available(watchOS 7.0, *)
  static let chills: HKCategoryTypeIdentifier
  @available(watchOS 7.0, *)
  static let constipation: HKCategoryTypeIdentifier
  @available(watchOS 7.0, *)
  static let coughing: HKCategoryTypeIdentifier
  @available(watchOS 7.0, *)
  static let diarrhea: HKCategoryTypeIdentifier
  @available(watchOS 7.0, *)
  static let dizziness: HKCategoryTypeIdentifier
  @available(watchOS 7.0, *)
  static let drySkin: HKCategoryTypeIdentifier
  @available(watchOS 7.0, *)
  static let fainting: HKCategoryTypeIdentifier
  @available(watchOS 7.0, *)
  static let fatigue: HKCategoryTypeIdentifier
  @available(watchOS 7.0, *)
  static let fever: HKCategoryTypeIdentifier
  @available(watchOS 7.0, *)
  static let generalizedBodyAche: HKCategoryTypeIdentifier
  @available(watchOS 7.0, *)
  static let hairLoss: HKCategoryTypeIdentifier
  @available(watchOS 7.0, *)
  static let headache: HKCategoryTypeIdentifier
  @available(watchOS 7.0, *)
  static let heartburn: HKCategoryTypeIdentifier
  @available(watchOS 7.0, *)
  static let hotFlashes: HKCategoryTypeIdentifier
  @available(watchOS 7.0, *)
  static let lossOfSmell: HKCategoryTypeIdentifier
  @available(watchOS 7.0, *)
  static let lossOfTaste: HKCategoryTypeIdentifier
  @available(watchOS 7.0, *)
  static let lowerBackPain: HKCategoryTypeIdentifier
  @available(watchOS 7.0, *)
  static let memoryLapse: HKCategoryTypeIdentifier
  @available(watchOS 7.0, *)
  static let moodChanges: HKCategoryTypeIdentifier
  @available(watchOS 7.0, *)
  static let nausea: HKCategoryTypeIdentifier
  @available(watchOS 7.0, *)
  static let nightSweats: HKCategoryTypeIdentifier
  @available(watchOS 7.0, *)
  static let pelvicPain: HKCategoryTypeIdentifier
  @available(watchOS 7.0, *)
  static let rapidPoundingOrFlutteringHeartbeat: HKCategoryTypeIdentifier
  @available(watchOS 7.0, *)
  static let runnyNose: HKCategoryTypeIdentifier
  @available(watchOS 7.0, *)
  static let shortnessOfBreath: HKCategoryTypeIdentifier
  @available(watchOS 7.0, *)
  static let sinusCongestion: HKCategoryTypeIdentifier
  @available(watchOS 7.0, *)
  static let skippedHeartbeat: HKCategoryTypeIdentifier
  @available(watchOS 7.0, *)
  static let sleepChanges: HKCategoryTypeIdentifier
  @available(watchOS 7.0, *)
  static let soreThroat: HKCategoryTypeIdentifier
  @available(watchOS 7.0, *)
  static let vaginalDryness: HKCategoryTypeIdentifier
  @available(watchOS 7.0, *)
  static let vomiting: HKCategoryTypeIdentifier
  @available(watchOS 7.0, *)
  static let wheezing: HKCategoryTypeIdentifier
}
struct HKCharacteristicTypeIdentifier : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension HKCharacteristicTypeIdentifier {
  @available(watchOS 2.0, *)
  static let biologicalSex: HKCharacteristicTypeIdentifier
  @available(watchOS 2.0, *)
  static let bloodType: HKCharacteristicTypeIdentifier
  @available(watchOS 2.0, *)
  static let dateOfBirth: HKCharacteristicTypeIdentifier
  @available(watchOS 2.0, *)
  static let fitzpatrickSkinType: HKCharacteristicTypeIdentifier
  @available(watchOS 3.0, *)
  static let wheelchairUse: HKCharacteristicTypeIdentifier
  @available(watchOS 7.0, *)
  static let activityMoveMode: HKCharacteristicTypeIdentifier
}
struct HKCorrelationTypeIdentifier : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension HKCorrelationTypeIdentifier {
  @available(watchOS 2.0, *)
  static let bloodPressure: HKCorrelationTypeIdentifier
  @available(watchOS 2.0, *)
  static let food: HKCorrelationTypeIdentifier
}
struct HKDocumentTypeIdentifier : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension HKDocumentTypeIdentifier {
  @available(watchOS 3.0, *)
  static let CDA: HKDocumentTypeIdentifier
}
@available(watchOS 2.0, *)
let HKWorkoutTypeIdentifier: String
@available(watchOS 4.0, *)
let HKWorkoutRouteTypeIdentifier: String
@available(watchOS 6.0, *)
let HKDataTypeIdentifierHeartbeatSeries: String
