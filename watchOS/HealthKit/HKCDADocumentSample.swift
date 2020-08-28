
@available(watchOS 3.0, *)
class HKCDADocumentSample : HKDocumentSample {
  var document: HKCDADocument? { get }
}
@available(watchOS 4.0, *)
class HKCDADocument : NSObject {
  @available(watchOS 3.0, *)
  var documentData: Data? { get }
  @available(watchOS 3.0, *)
  var title: String { get }
  @available(watchOS 3.0, *)
  var patientName: String { get }
  @available(watchOS 3.0, *)
  var authorName: String { get }
  @available(watchOS 3.0, *)
  var custodianName: String { get }
}
@available(watchOS 3.0, *)
let HKPredicateKeyPathCDATitle: String
@available(watchOS 3.0, *)
let HKPredicateKeyPathCDAPatientName: String
@available(watchOS 3.0, *)
let HKPredicateKeyPathCDAAuthorName: String
@available(watchOS 3.0, *)
let HKPredicateKeyPathCDACustodianName: String
@available(watchOS 3.0, *)
let HKDetailedCDAValidationErrorKey: String
