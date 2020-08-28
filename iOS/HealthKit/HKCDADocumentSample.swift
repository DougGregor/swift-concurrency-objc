
@available(iOS 10.0, *)
class HKCDADocumentSample : HKDocumentSample {
  var document: HKCDADocument? { get }
  convenience init(data documentData: Data, start startDate: Date, end endDate: Date, metadata: [String : Any]?) throws
}
@available(iOS 11.0, *)
class HKCDADocument : NSObject {
  @available(iOS 10.0, *)
  var documentData: Data? { get }
  @available(iOS 10.0, *)
  var title: String { get }
  @available(iOS 10.0, *)
  var patientName: String { get }
  @available(iOS 10.0, *)
  var authorName: String { get }
  @available(iOS 10.0, *)
  var custodianName: String { get }
}
@available(iOS 10.0, *)
let HKPredicateKeyPathCDATitle: String
@available(iOS 10.0, *)
let HKPredicateKeyPathCDAPatientName: String
@available(iOS 10.0, *)
let HKPredicateKeyPathCDAAuthorName: String
@available(iOS 10.0, *)
let HKPredicateKeyPathCDACustodianName: String
@available(iOS 10.0, *)
let HKDetailedCDAValidationErrorKey: String
