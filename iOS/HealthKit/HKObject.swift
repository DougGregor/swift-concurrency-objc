
@available(iOS 8.0, *)
class HKObject : NSObject, NSSecureCoding {
  var uuid: UUID { get }
  @available(iOS, introduced: 8.0, deprecated: 9.0)
  var source: HKSource { get }
  @available(iOS 9.0, *)
  var sourceRevision: HKSourceRevision { get }
  @available(iOS 9.0, *)
  var device: HKDevice? { get }
  var metadata: [String : Any]? { get }
}
@available(iOS 8.0, *)
let HKPredicateKeyPathUUID: String
@available(iOS 8.0, *)
let HKPredicateKeyPathSource: String
@available(iOS 8.0, *)
let HKPredicateKeyPathMetadata: String
@available(iOS 8.0, *)
let HKPredicateKeyPathCorrelation: String
@available(iOS 8.0, *)
let HKPredicateKeyPathWorkout: String
@available(iOS 9.0, *)
let HKPredicateKeyPathDevice: String
@available(iOS 9.0, *)
let HKPredicateKeyPathSourceRevision: String
