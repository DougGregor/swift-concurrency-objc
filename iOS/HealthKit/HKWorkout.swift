
@available(iOS 8.0, *)
enum HKWorkoutActivityType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case americanFootball
  case archery
  case australianFootball
  case badminton
  case baseball
  case basketball
  case bowling
  case boxing
  case climbing
  case cricket
  case crossTraining
  case curling
  case cycling
  @available(iOS, introduced: 8.0, deprecated: 14.0, message: "Use HKWorkoutActivityTypeSocialDance or HKWorkoutActivityTypeCardioDance")
  case dance
  @available(iOS, introduced: 8.0, deprecated: 10.0, message: "Use HKWorkoutActivityTypeSocialDance, HKWorkoutActivityTypeCardioDance, HKWorkoutActivityTypeBarre or HKWorkoutActivityTypePilates")
  case danceInspiredTraining
  case elliptical
  case equestrianSports
  case fencing
  case fishing
  case functionalStrengthTraining
  case golf
  case gymnastics
  case handball
  case hiking
  case hockey
  case hunting
  case lacrosse
  case martialArts
  case mindAndBody
  @available(iOS, introduced: 8.0, deprecated: 11.0, message: "Use HKWorkoutActivityTypeMixedCardio or HKWorkoutActivityTypeHighIntensityIntervalTraining")
  case mixedMetabolicCardioTraining
  case paddleSports
  case play
  case preparationAndRecovery
  case racquetball
  case rowing
  case rugby
  case running
  case sailing
  case skatingSports
  case snowSports
  case soccer
  case softball
  case squash
  case stairClimbing
  case surfingSports
  case swimming
  case tableTennis
  case tennis
  case trackAndField
  case traditionalStrengthTraining
  case volleyball
  case walking
  case waterFitness
  case waterPolo
  case waterSports
  case wrestling
  case yoga
  @available(iOS 10.0, *)
  case barre
  @available(iOS 10.0, *)
  case coreTraining
  @available(iOS 10.0, *)
  case crossCountrySkiing
  @available(iOS 10.0, *)
  case downhillSkiing
  @available(iOS 10.0, *)
  case flexibility
  @available(iOS 10.0, *)
  case highIntensityIntervalTraining
  @available(iOS 10.0, *)
  case jumpRope
  @available(iOS 10.0, *)
  case kickboxing
  @available(iOS 10.0, *)
  case pilates
  @available(iOS 10.0, *)
  case snowboarding
  @available(iOS 10.0, *)
  case stairs
  @available(iOS 10.0, *)
  case stepTraining
  @available(iOS 10.0, *)
  case wheelchairWalkPace
  @available(iOS 10.0, *)
  case wheelchairRunPace
  @available(iOS 11.0, *)
  case taiChi
  @available(iOS 11.0, *)
  case mixedCardio
  @available(iOS 11.0, *)
  case handCycling
  @available(iOS 13.0, *)
  case discSports
  @available(iOS 13.0, *)
  case fitnessGaming
  @available(iOS 14.0, *)
  case cardioDance
  @available(iOS 14.0, *)
  case socialDance
  @available(iOS 14.0, *)
  case pickleball
  @available(iOS 14.0, *)
  case cooldown
  case other
}
@available(iOS 8.0, *)
enum HKWorkoutEventType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case pause
  case resume
  @available(iOS 10.0, *)
  case lap
  @available(iOS 10.0, *)
  case marker
  @available(iOS 10.0, *)
  case motionPaused
  @available(iOS 10.0, *)
  case motionResumed
  @available(iOS 11.0, *)
  case segment
  @available(iOS 11.0, *)
  case pauseOrResumeRequest
}
@available(iOS 8.0, *)
class HKWorkoutEvent : NSObject, NSSecureCoding, NSCopying {
  var type: HKWorkoutEventType { get }
  @available(iOS, introduced: 8.0, deprecated: 11.0)
  var date: Date { get }
  @available(iOS 11.0, *)
  var dateInterval: DateInterval { get }
  @available(iOS 10.0, *)
  var metadata: [String : Any]? { get }
  @available(iOS, introduced: 8.0, deprecated: 11.0)
  convenience init(type: HKWorkoutEventType, date: Date)
  @available(iOS, introduced: 10.0, deprecated: 11.0)
  convenience init(type: HKWorkoutEventType, date: Date, metadata: [String : Any])
  @available(iOS 11.0, *)
  convenience init(type: HKWorkoutEventType, dateInterval: DateInterval, metadata: [String : Any]?)
}
@available(iOS 8.0, *)
class HKWorkout : HKSample {
  var workoutActivityType: HKWorkoutActivityType { get }
  var workoutEvents: [HKWorkoutEvent]? { get }
  var duration: TimeInterval { get }
  var totalEnergyBurned: HKQuantity? { get }
  var totalDistance: HKQuantity? { get }
  @available(iOS 10.0, *)
  var totalSwimmingStrokeCount: HKQuantity? { get }
  @available(iOS 11.0, *)
  var totalFlightsClimbed: HKQuantity? { get }
  convenience init(activityType workoutActivityType: HKWorkoutActivityType, start startDate: Date, end endDate: Date)
  convenience init(activityType workoutActivityType: HKWorkoutActivityType, start startDate: Date, end endDate: Date, workoutEvents: [HKWorkoutEvent]?, totalEnergyBurned: HKQuantity?, totalDistance: HKQuantity?, metadata: [String : Any]?)
  @available(iOS 9.0, *)
  convenience init(activityType workoutActivityType: HKWorkoutActivityType, start startDate: Date, end endDate: Date, workoutEvents: [HKWorkoutEvent]?, totalEnergyBurned: HKQuantity?, totalDistance: HKQuantity?, device: HKDevice?, metadata: [String : Any]?)
  convenience init(activityType workoutActivityType: HKWorkoutActivityType, start startDate: Date, end endDate: Date, duration: TimeInterval, totalEnergyBurned: HKQuantity?, totalDistance: HKQuantity?, metadata: [String : Any]?)
  @available(iOS 9.0, *)
  convenience init(activityType workoutActivityType: HKWorkoutActivityType, start startDate: Date, end endDate: Date, duration: TimeInterval, totalEnergyBurned: HKQuantity?, totalDistance: HKQuantity?, device: HKDevice?, metadata: [String : Any]?)
  @available(iOS 10.0, *)
  convenience init(activityType workoutActivityType: HKWorkoutActivityType, start startDate: Date, end endDate: Date, workoutEvents: [HKWorkoutEvent]?, totalEnergyBurned: HKQuantity?, totalDistance: HKQuantity?, totalSwimmingStrokeCount: HKQuantity?, device: HKDevice?, metadata: [String : Any]?)
  @available(iOS 11.0, *)
  convenience init(activityType workoutActivityType: HKWorkoutActivityType, start startDate: Date, end endDate: Date, workoutEvents: [HKWorkoutEvent]?, totalEnergyBurned: HKQuantity?, totalDistance: HKQuantity?, totalFlightsClimbed: HKQuantity?, device: HKDevice?, metadata: [String : Any]?)
}
@available(iOS 8.0, *)
let HKPredicateKeyPathWorkoutDuration: String
@available(iOS 8.0, *)
let HKPredicateKeyPathWorkoutTotalDistance: String
@available(iOS 8.0, *)
let HKPredicateKeyPathWorkoutTotalEnergyBurned: String
@available(iOS 8.0, *)
let HKPredicateKeyPathWorkoutType: String
@available(iOS 10.0, *)
let HKPredicateKeyPathWorkoutTotalSwimmingStrokeCount: String
@available(iOS 11.0, *)
let HKPredicateKeyPathWorkoutTotalFlightsClimbed: String
@available(iOS 8.0, *)
let HKWorkoutSortIdentifierDuration: String
@available(iOS 8.0, *)
let HKWorkoutSortIdentifierTotalDistance: String
@available(iOS 8.0, *)
let HKWorkoutSortIdentifierTotalEnergyBurned: String
@available(iOS 10.0, *)
let HKWorkoutSortIdentifierTotalSwimmingStrokeCount: String
@available(iOS 11.0, *)
let HKWorkoutSortIdentifierTotalFlightsClimbed: String
