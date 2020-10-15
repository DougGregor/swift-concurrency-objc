
@available(watchOS 2.0, *)
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
  @available(watchOS, introduced: 2.0, deprecated: 7.0, message: "Use HKWorkoutActivityTypeSocialDance or HKWorkoutActivityTypeCardioDance")
  case dance
  @available(watchOS, introduced: 2.0, deprecated: 3.0, message: "Use HKWorkoutActivityTypeSocialDance, HKWorkoutActivityTypeCardioDance, HKWorkoutActivityTypeBarre or HKWorkoutActivityTypePilates")
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
  @available(watchOS, introduced: 2.0, deprecated: 4.0, message: "Use HKWorkoutActivityTypeMixedCardio or HKWorkoutActivityTypeHighIntensityIntervalTraining")
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
  @available(watchOS 3.0, *)
  case barre
  @available(watchOS 3.0, *)
  case coreTraining
  @available(watchOS 3.0, *)
  case crossCountrySkiing
  @available(watchOS 3.0, *)
  case downhillSkiing
  @available(watchOS 3.0, *)
  case flexibility
  @available(watchOS 3.0, *)
  case highIntensityIntervalTraining
  @available(watchOS 3.0, *)
  case jumpRope
  @available(watchOS 3.0, *)
  case kickboxing
  @available(watchOS 3.0, *)
  case pilates
  @available(watchOS 3.0, *)
  case snowboarding
  @available(watchOS 3.0, *)
  case stairs
  @available(watchOS 3.0, *)
  case stepTraining
  @available(watchOS 3.0, *)
  case wheelchairWalkPace
  @available(watchOS 3.0, *)
  case wheelchairRunPace
  @available(watchOS 4.0, *)
  case taiChi
  @available(watchOS 4.0, *)
  case mixedCardio
  @available(watchOS 4.0, *)
  case handCycling
  @available(watchOS 6.0, *)
  case discSports
  @available(watchOS 6.0, *)
  case fitnessGaming
  @available(watchOS 7.0, *)
  case cardioDance
  @available(watchOS 7.0, *)
  case socialDance
  @available(watchOS 7.0, *)
  case pickleball
  @available(watchOS 7.0, *)
  case cooldown
  case other
}
@available(watchOS 2.0, *)
enum HKWorkoutEventType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case pause
  case resume
  @available(watchOS 3.0, *)
  case lap
  @available(watchOS 3.0, *)
  case marker
  @available(watchOS 3.0, *)
  case motionPaused
  @available(watchOS 3.0, *)
  case motionResumed
  @available(watchOS 4.0, *)
  case segment
  @available(watchOS 4.0, *)
  case pauseOrResumeRequest
}
@available(watchOS 2.0, *)
class HKWorkoutEvent : NSObject, NSSecureCoding, NSCopying {
  var type: HKWorkoutEventType { get }
  @available(watchOS, introduced: 2.0, deprecated: 4.0)
  var date: Date { get }
  @available(watchOS 4.0, *)
  var dateInterval: DateInterval { get }
  @available(watchOS 3.0, *)
  var metadata: [String : Any]? { get }
  @available(watchOS, introduced: 2.0, deprecated: 4.0)
  convenience init(type: HKWorkoutEventType, date: Date)
  @available(watchOS, introduced: 3.0, deprecated: 4.0)
  convenience init(type: HKWorkoutEventType, date: Date, metadata: [String : Any])
  @available(watchOS 4.0, *)
  convenience init(type: HKWorkoutEventType, dateInterval: DateInterval, metadata: [String : Any]?)
}
@available(watchOS 2.0, *)
class HKWorkout : HKSample {
  var workoutActivityType: HKWorkoutActivityType { get }
  var workoutEvents: [HKWorkoutEvent]? { get }
  var duration: TimeInterval { get }
  var totalEnergyBurned: HKQuantity? { get }
  var totalDistance: HKQuantity? { get }
  @available(watchOS 3.0, *)
  var totalSwimmingStrokeCount: HKQuantity? { get }
  @available(watchOS 4.0, *)
  var totalFlightsClimbed: HKQuantity? { get }
  convenience init(activityType workoutActivityType: HKWorkoutActivityType, start startDate: Date, end endDate: Date)
  convenience init(activityType workoutActivityType: HKWorkoutActivityType, start startDate: Date, end endDate: Date, workoutEvents: [HKWorkoutEvent]?, totalEnergyBurned: HKQuantity?, totalDistance: HKQuantity?, metadata: [String : Any]?)
  @available(watchOS 2.0, *)
  convenience init(activityType workoutActivityType: HKWorkoutActivityType, start startDate: Date, end endDate: Date, workoutEvents: [HKWorkoutEvent]?, totalEnergyBurned: HKQuantity?, totalDistance: HKQuantity?, device: HKDevice?, metadata: [String : Any]?)
  convenience init(activityType workoutActivityType: HKWorkoutActivityType, start startDate: Date, end endDate: Date, duration: TimeInterval, totalEnergyBurned: HKQuantity?, totalDistance: HKQuantity?, metadata: [String : Any]?)
  @available(watchOS 2.0, *)
  convenience init(activityType workoutActivityType: HKWorkoutActivityType, start startDate: Date, end endDate: Date, duration: TimeInterval, totalEnergyBurned: HKQuantity?, totalDistance: HKQuantity?, device: HKDevice?, metadata: [String : Any]?)
  @available(watchOS 3.0, *)
  convenience init(activityType workoutActivityType: HKWorkoutActivityType, start startDate: Date, end endDate: Date, workoutEvents: [HKWorkoutEvent]?, totalEnergyBurned: HKQuantity?, totalDistance: HKQuantity?, totalSwimmingStrokeCount: HKQuantity?, device: HKDevice?, metadata: [String : Any]?)
  @available(watchOS 4.0, *)
  convenience init(activityType workoutActivityType: HKWorkoutActivityType, start startDate: Date, end endDate: Date, workoutEvents: [HKWorkoutEvent]?, totalEnergyBurned: HKQuantity?, totalDistance: HKQuantity?, totalFlightsClimbed: HKQuantity?, device: HKDevice?, metadata: [String : Any]?)
}
@available(watchOS 2.0, *)
let HKPredicateKeyPathWorkoutDuration: String
@available(watchOS 2.0, *)
let HKPredicateKeyPathWorkoutTotalDistance: String
@available(watchOS 2.0, *)
let HKPredicateKeyPathWorkoutTotalEnergyBurned: String
@available(watchOS 2.0, *)
let HKPredicateKeyPathWorkoutType: String
@available(watchOS 3.0, *)
let HKPredicateKeyPathWorkoutTotalSwimmingStrokeCount: String
@available(watchOS 4.0, *)
let HKPredicateKeyPathWorkoutTotalFlightsClimbed: String
@available(watchOS 2.0, *)
let HKWorkoutSortIdentifierDuration: String
@available(watchOS 2.0, *)
let HKWorkoutSortIdentifierTotalDistance: String
@available(watchOS 2.0, *)
let HKWorkoutSortIdentifierTotalEnergyBurned: String
@available(watchOS 3.0, *)
let HKWorkoutSortIdentifierTotalSwimmingStrokeCount: String
@available(watchOS 4.0, *)
let HKWorkoutSortIdentifierTotalFlightsClimbed: String
