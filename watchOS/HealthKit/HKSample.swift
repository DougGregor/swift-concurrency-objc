
@available(watchOS 2.0, *)
class HKSample : HKObject {
  @NSCopying var sampleType: HKSampleType { get }
  var startDate: Date { get }
  var endDate: Date { get }
}
@available(watchOS 2.0, *)
let HKSampleSortIdentifierStartDate: String
@available(watchOS 2.0, *)
let HKSampleSortIdentifierEndDate: String
@available(watchOS 2.0, *)
let HKPredicateKeyPathStartDate: String
@available(watchOS 2.0, *)
let HKPredicateKeyPathEndDate: String
