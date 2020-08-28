
struct HKQuantityTypeIdentifier : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension HKQuantityTypeIdentifier {
  @available(iOS 8.0, *)
  static let bodyMassIndex: HKQuantityTypeIdentifier
  @available(iOS 8.0, *)
  static let bodyFatPercentage: HKQuantityTypeIdentifier
  @available(iOS 8.0, *)
  static let height: HKQuantityTypeIdentifier
  @available(iOS 8.0, *)
  static let bodyMass: HKQuantityTypeIdentifier
  @available(iOS 8.0, *)
  static let leanBodyMass: HKQuantityTypeIdentifier
  @available(iOS 11.0, *)
  static let waistCircumference: HKQuantityTypeIdentifier
  @available(iOS 8.0, *)
  static let stepCount: HKQuantityTypeIdentifier
  @available(iOS 8.0, *)
  static let distanceWalkingRunning: HKQuantityTypeIdentifier
  @available(iOS 8.0, *)
  static let distanceCycling: HKQuantityTypeIdentifier
  @available(iOS 10.0, *)
  static let distanceWheelchair: HKQuantityTypeIdentifier
  @available(iOS 8.0, *)
  static let basalEnergyBurned: HKQuantityTypeIdentifier
  @available(iOS 8.0, *)
  static let activeEnergyBurned: HKQuantityTypeIdentifier
  @available(iOS 8.0, *)
  static let flightsClimbed: HKQuantityTypeIdentifier
  @available(iOS 8.0, *)
  static let nikeFuel: HKQuantityTypeIdentifier
  @available(iOS 9.3, *)
  static let appleExerciseTime: HKQuantityTypeIdentifier
  @available(iOS 10.0, *)
  static let pushCount: HKQuantityTypeIdentifier
  @available(iOS 10.0, *)
  static let distanceSwimming: HKQuantityTypeIdentifier
  @available(iOS 10.0, *)
  static let swimmingStrokeCount: HKQuantityTypeIdentifier
  @available(iOS 11.0, *)
  static let vo2Max: HKQuantityTypeIdentifier
  @available(iOS 11.2, *)
  static let distanceDownhillSnowSports: HKQuantityTypeIdentifier
  @available(iOS 13.0, *)
  static let appleStandTime: HKQuantityTypeIdentifier
  @available(iOS 14.0, *)
  static let walkingSpeed: HKQuantityTypeIdentifier
  @available(iOS 14.0, *)
  static let walkingDoubleSupportPercentage: HKQuantityTypeIdentifier
  @available(iOS 14.0, *)
  static let walkingAsymmetryPercentage: HKQuantityTypeIdentifier
  @available(iOS 14.0, *)
  static let walkingStepLength: HKQuantityTypeIdentifier
  @available(iOS 14.0, *)
  static let sixMinuteWalkTestDistance: HKQuantityTypeIdentifier
  @available(iOS 14.0, *)
  static let stairAscentSpeed: HKQuantityTypeIdentifier
  @available(iOS 14.0, *)
  static let stairDescentSpeed: HKQuantityTypeIdentifier
  @available(iOS 8.0, *)
  static let heartRate: HKQuantityTypeIdentifier
  @available(iOS 8.0, *)
  static let bodyTemperature: HKQuantityTypeIdentifier
  @available(iOS 9.0, *)
  static let basalBodyTemperature: HKQuantityTypeIdentifier
  @available(iOS 8.0, *)
  static let bloodPressureSystolic: HKQuantityTypeIdentifier
  @available(iOS 8.0, *)
  static let bloodPressureDiastolic: HKQuantityTypeIdentifier
  @available(iOS 8.0, *)
  static let respiratoryRate: HKQuantityTypeIdentifier
  @available(iOS 11.0, *)
  static let restingHeartRate: HKQuantityTypeIdentifier
  @available(iOS 11.0, *)
  static let walkingHeartRateAverage: HKQuantityTypeIdentifier
  @available(iOS 11.0, *)
  static let heartRateVariabilitySDNN: HKQuantityTypeIdentifier
  @available(iOS 8.0, *)
  static let oxygenSaturation: HKQuantityTypeIdentifier
  @available(iOS 8.0, *)
  static let peripheralPerfusionIndex: HKQuantityTypeIdentifier
  @available(iOS 8.0, *)
  static let bloodGlucose: HKQuantityTypeIdentifier
  @available(iOS 8.0, *)
  static let numberOfTimesFallen: HKQuantityTypeIdentifier
  @available(iOS 8.0, *)
  static let electrodermalActivity: HKQuantityTypeIdentifier
  @available(iOS 8.0, *)
  static let inhalerUsage: HKQuantityTypeIdentifier
  @available(iOS 11.0, *)
  static let insulinDelivery: HKQuantityTypeIdentifier
  @available(iOS 8.0, *)
  static let bloodAlcoholContent: HKQuantityTypeIdentifier
  @available(iOS 8.0, *)
  static let forcedVitalCapacity: HKQuantityTypeIdentifier
  @available(iOS 8.0, *)
  static let forcedExpiratoryVolume1: HKQuantityTypeIdentifier
  @available(iOS 8.0, *)
  static let peakExpiratoryFlowRate: HKQuantityTypeIdentifier
  @available(iOS 13.0, *)
  static let environmentalAudioExposure: HKQuantityTypeIdentifier
  @available(iOS 13.0, *)
  static let headphoneAudioExposure: HKQuantityTypeIdentifier
  @available(iOS 8.0, *)
  static let dietaryFatTotal: HKQuantityTypeIdentifier
  @available(iOS 8.0, *)
  static let dietaryFatPolyunsaturated: HKQuantityTypeIdentifier
  @available(iOS 8.0, *)
  static let dietaryFatMonounsaturated: HKQuantityTypeIdentifier
  @available(iOS 8.0, *)
  static let dietaryFatSaturated: HKQuantityTypeIdentifier
  @available(iOS 8.0, *)
  static let dietaryCholesterol: HKQuantityTypeIdentifier
  @available(iOS 8.0, *)
  static let dietarySodium: HKQuantityTypeIdentifier
  @available(iOS 8.0, *)
  static let dietaryCarbohydrates: HKQuantityTypeIdentifier
  @available(iOS 8.0, *)
  static let dietaryFiber: HKQuantityTypeIdentifier
  @available(iOS 8.0, *)
  static let dietarySugar: HKQuantityTypeIdentifier
  @available(iOS 8.0, *)
  static let dietaryEnergyConsumed: HKQuantityTypeIdentifier
  @available(iOS 8.0, *)
  static let dietaryProtein: HKQuantityTypeIdentifier
  @available(iOS 8.0, *)
  static let dietaryVitaminA: HKQuantityTypeIdentifier
  @available(iOS 8.0, *)
  static let dietaryVitaminB6: HKQuantityTypeIdentifier
  @available(iOS 8.0, *)
  static let dietaryVitaminB12: HKQuantityTypeIdentifier
  @available(iOS 8.0, *)
  static let dietaryVitaminC: HKQuantityTypeIdentifier
  @available(iOS 8.0, *)
  static let dietaryVitaminD: HKQuantityTypeIdentifier
  @available(iOS 8.0, *)
  static let dietaryVitaminE: HKQuantityTypeIdentifier
  @available(iOS 8.0, *)
  static let dietaryVitaminK: HKQuantityTypeIdentifier
  @available(iOS 8.0, *)
  static let dietaryCalcium: HKQuantityTypeIdentifier
  @available(iOS 8.0, *)
  static let dietaryIron: HKQuantityTypeIdentifier
  @available(iOS 8.0, *)
  static let dietaryThiamin: HKQuantityTypeIdentifier
  @available(iOS 8.0, *)
  static let dietaryRiboflavin: HKQuantityTypeIdentifier
  @available(iOS 8.0, *)
  static let dietaryNiacin: HKQuantityTypeIdentifier
  @available(iOS 8.0, *)
  static let dietaryFolate: HKQuantityTypeIdentifier
  @available(iOS 8.0, *)
  static let dietaryBiotin: HKQuantityTypeIdentifier
  @available(iOS 8.0, *)
  static let dietaryPantothenicAcid: HKQuantityTypeIdentifier
  @available(iOS 8.0, *)
  static let dietaryPhosphorus: HKQuantityTypeIdentifier
  @available(iOS 8.0, *)
  static let dietaryIodine: HKQuantityTypeIdentifier
  @available(iOS 8.0, *)
  static let dietaryMagnesium: HKQuantityTypeIdentifier
  @available(iOS 8.0, *)
  static let dietaryZinc: HKQuantityTypeIdentifier
  @available(iOS 8.0, *)
  static let dietarySelenium: HKQuantityTypeIdentifier
  @available(iOS 8.0, *)
  static let dietaryCopper: HKQuantityTypeIdentifier
  @available(iOS 8.0, *)
  static let dietaryManganese: HKQuantityTypeIdentifier
  @available(iOS 8.0, *)
  static let dietaryChromium: HKQuantityTypeIdentifier
  @available(iOS 8.0, *)
  static let dietaryMolybdenum: HKQuantityTypeIdentifier
  @available(iOS 8.0, *)
  static let dietaryChloride: HKQuantityTypeIdentifier
  @available(iOS 8.0, *)
  static let dietaryPotassium: HKQuantityTypeIdentifier
  @available(iOS 8.0, *)
  static let dietaryCaffeine: HKQuantityTypeIdentifier
  @available(iOS 9.0, *)
  static let dietaryWater: HKQuantityTypeIdentifier
  @available(iOS 9.0, *)
  static let uvExposure: HKQuantityTypeIdentifier
}
struct HKCategoryTypeIdentifier : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension HKCategoryTypeIdentifier {
  @available(iOS 8.0, *)
  static let sleepAnalysis: HKCategoryTypeIdentifier
  @available(iOS 9.0, *)
  static let appleStandHour: HKCategoryTypeIdentifier
  @available(iOS 9.0, *)
  static let cervicalMucusQuality: HKCategoryTypeIdentifier
  @available(iOS 9.0, *)
  static let ovulationTestResult: HKCategoryTypeIdentifier
  @available(iOS 9.0, *)
  static let menstrualFlow: HKCategoryTypeIdentifier
  @available(iOS 9.0, *)
  static let intermenstrualBleeding: HKCategoryTypeIdentifier
  @available(iOS 9.0, *)
  static let sexualActivity: HKCategoryTypeIdentifier
  @available(iOS 10.0, *)
  static let mindfulSession: HKCategoryTypeIdentifier
  @available(iOS 12.2, *)
  static let highHeartRateEvent: HKCategoryTypeIdentifier
  @available(iOS 12.2, *)
  static let lowHeartRateEvent: HKCategoryTypeIdentifier
  @available(iOS 12.2, *)
  static let irregularHeartRhythmEvent: HKCategoryTypeIdentifier
  @available(iOS, introduced: 13.0, deprecated: 14.0, renamed: "HKCategoryTypeIdentifier.environmentalAudioExposureEvent")
  static let audioExposureEvent: HKCategoryTypeIdentifier
  @available(iOS 13.0, *)
  static let toothbrushingEvent: HKCategoryTypeIdentifier
  @available(iOS 14.0, *)
  static let environmentalAudioExposureEvent: HKCategoryTypeIdentifier
  @available(iOS 14.0, *)
  static let handwashingEvent: HKCategoryTypeIdentifier
  @available(iOS 13.6, *)
  static let abdominalCramps: HKCategoryTypeIdentifier
  @available(iOS 13.6, *)
  static let acne: HKCategoryTypeIdentifier
  @available(iOS 13.6, *)
  static let appetiteChanges: HKCategoryTypeIdentifier
  @available(iOS 14.0, *)
  static let bladderIncontinence: HKCategoryTypeIdentifier
  @available(iOS 13.6, *)
  static let bloating: HKCategoryTypeIdentifier
  @available(iOS 13.6, *)
  static let breastPain: HKCategoryTypeIdentifier
  @available(iOS 13.6, *)
  static let chestTightnessOrPain: HKCategoryTypeIdentifier
  @available(iOS 13.6, *)
  static let chills: HKCategoryTypeIdentifier
  @available(iOS 13.6, *)
  static let constipation: HKCategoryTypeIdentifier
  @available(iOS 13.6, *)
  static let coughing: HKCategoryTypeIdentifier
  @available(iOS 13.6, *)
  static let diarrhea: HKCategoryTypeIdentifier
  @available(iOS 13.6, *)
  static let dizziness: HKCategoryTypeIdentifier
  @available(iOS 14.0, *)
  static let drySkin: HKCategoryTypeIdentifier
  @available(iOS 13.6, *)
  static let fainting: HKCategoryTypeIdentifier
  @available(iOS 13.6, *)
  static let fatigue: HKCategoryTypeIdentifier
  @available(iOS 13.6, *)
  static let fever: HKCategoryTypeIdentifier
  @available(iOS 13.6, *)
  static let generalizedBodyAche: HKCategoryTypeIdentifier
  @available(iOS 14.0, *)
  static let hairLoss: HKCategoryTypeIdentifier
  @available(iOS 13.6, *)
  static let headache: HKCategoryTypeIdentifier
  @available(iOS 13.6, *)
  static let heartburn: HKCategoryTypeIdentifier
  @available(iOS 13.6, *)
  static let hotFlashes: HKCategoryTypeIdentifier
  @available(iOS 13.6, *)
  static let lossOfSmell: HKCategoryTypeIdentifier
  @available(iOS 13.6, *)
  static let lossOfTaste: HKCategoryTypeIdentifier
  @available(iOS 13.6, *)
  static let lowerBackPain: HKCategoryTypeIdentifier
  @available(iOS 14.0, *)
  static let memoryLapse: HKCategoryTypeIdentifier
  @available(iOS 13.6, *)
  static let moodChanges: HKCategoryTypeIdentifier
  @available(iOS 13.6, *)
  static let nausea: HKCategoryTypeIdentifier
  @available(iOS 14.0, *)
  static let nightSweats: HKCategoryTypeIdentifier
  @available(iOS 13.6, *)
  static let pelvicPain: HKCategoryTypeIdentifier
  @available(iOS 13.6, *)
  static let rapidPoundingOrFlutteringHeartbeat: HKCategoryTypeIdentifier
  @available(iOS 13.6, *)
  static let runnyNose: HKCategoryTypeIdentifier
  @available(iOS 13.6, *)
  static let shortnessOfBreath: HKCategoryTypeIdentifier
  @available(iOS 13.6, *)
  static let sinusCongestion: HKCategoryTypeIdentifier
  @available(iOS 13.6, *)
  static let skippedHeartbeat: HKCategoryTypeIdentifier
  @available(iOS 13.6, *)
  static let sleepChanges: HKCategoryTypeIdentifier
  @available(iOS 13.6, *)
  static let soreThroat: HKCategoryTypeIdentifier
  @available(iOS 14.0, *)
  static let vaginalDryness: HKCategoryTypeIdentifier
  @available(iOS 13.6, *)
  static let vomiting: HKCategoryTypeIdentifier
  @available(iOS 13.6, *)
  static let wheezing: HKCategoryTypeIdentifier
}
struct HKCharacteristicTypeIdentifier : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension HKCharacteristicTypeIdentifier {
  @available(iOS 8.0, *)
  static let biologicalSex: HKCharacteristicTypeIdentifier
  @available(iOS 8.0, *)
  static let bloodType: HKCharacteristicTypeIdentifier
  @available(iOS 8.0, *)
  static let dateOfBirth: HKCharacteristicTypeIdentifier
  @available(iOS 9.0, *)
  static let fitzpatrickSkinType: HKCharacteristicTypeIdentifier
  @available(iOS 10.0, *)
  static let wheelchairUse: HKCharacteristicTypeIdentifier
  @available(iOS 14.0, *)
  static let activityMoveMode: HKCharacteristicTypeIdentifier
}
struct HKCorrelationTypeIdentifier : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension HKCorrelationTypeIdentifier {
  @available(iOS 8.0, *)
  static let bloodPressure: HKCorrelationTypeIdentifier
  @available(iOS 8.0, *)
  static let food: HKCorrelationTypeIdentifier
}
struct HKDocumentTypeIdentifier : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension HKDocumentTypeIdentifier {
  @available(iOS 10.0, *)
  static let CDA: HKDocumentTypeIdentifier
}
@available(iOS 8.0, *)
let HKWorkoutTypeIdentifier: String
@available(iOS 11.0, *)
let HKWorkoutRouteTypeIdentifier: String
@available(iOS 13.0, *)
let HKDataTypeIdentifierHeartbeatSeries: String
