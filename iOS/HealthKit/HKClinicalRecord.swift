
@available(iOS 12.0, *)
let HKPredicateKeyPathClinicalRecordFHIRResourceIdentifier: String
@available(iOS 12.0, *)
let HKPredicateKeyPathClinicalRecordFHIRResourceType: String
@available(iOS 12.0, *)
class HKClinicalRecord : HKSample, NSSecureCoding, NSCopying {
  @NSCopying var clinicalType: HKClinicalType { get }
  var displayName: String { get }
  @NSCopying var fhirResource: HKFHIRResource? { get }
}
