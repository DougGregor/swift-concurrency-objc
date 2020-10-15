
extension HKElectrocardiogram {
  @available(watchOS 7.0, *)
  enum Lead : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case appleWatchSimilarToLeadI
  }
  @available(watchOS 7.0, *)
  enum Classification : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case notSet
    case sinusRhythm
    case atrialFibrillation
    case inconclusiveLowHeartRate
    case inconclusiveHighHeartRate
    case inconclusivePoorReading
    case inconclusiveOther
    case unrecognized
  }
  @available(watchOS 7.0, *)
  enum SymptomsStatus : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case notSet
    case none
    case present
  }
}
@available(watchOS 7.0, *)
class HKElectrocardiogram : HKSample {
  var numberOfVoltageMeasurements: Int { get }
  @NSCopying var samplingFrequency: HKQuantity? { get }
  var classification: HKElectrocardiogram.Classification { get }
  @NSCopying var averageHeartRate: HKQuantity? { get }
  var symptomsStatus: HKElectrocardiogram.SymptomsStatus { get }
}
@available(watchOS 7.0, *)
let HKPredicateKeyPathAverageHeartRate: String
@available(watchOS 7.0, *)
let HKPredicateKeyPathECGClassification: String
@available(watchOS 7.0, *)
let HKPredicateKeyPathECGSymptomsStatus: String
