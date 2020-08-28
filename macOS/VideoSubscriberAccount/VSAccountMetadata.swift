
class VSAccountMetadata : NSObject {
  var accountProviderIdentifier: String? { get }
  var authenticationExpirationDate: Date? { get }
  var verificationData: Data? { get }
  var samlAttributeQueryResponse: String? { get }
  var accountProviderResponse: VSAccountProviderResponse? { get }
}
