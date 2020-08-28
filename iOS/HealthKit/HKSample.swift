
@available(iOS 8.0, *)
class HKSample : HKObject {
  @NSCopying var sampleType: HKSampleType { get }
  var startDate: Date { get }
  var endDate: Date { get }
}
@available(iOS 8.0, *)
let HKSampleSortIdentifierStartDate: String
@available(iOS 8.0, *)
let HKSampleSortIdentifierEndDate: String
@available(iOS 8.0, *)
let HKPredicateKeyPathStartDate: String
@available(iOS 8.0, *)
let HKPredicateKeyPathEndDate: String
