
@available(iOS 10.0, *)
class VSAccountMetadata : NSObject {
  var accountProviderIdentifier: String? { get }
  var authenticationExpirationDate: Date? { get }
  var verificationData: Data? { get }
  var samlAttributeQueryResponse: String? { get }
  @available(iOS 10.2, *)
  var accountProviderResponse: VSAccountProviderResponse? { get }
}
