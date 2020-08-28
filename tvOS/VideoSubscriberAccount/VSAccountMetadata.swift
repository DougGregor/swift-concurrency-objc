
@available(tvOS 10.0, *)
class VSAccountMetadata : NSObject {
  var accountProviderIdentifier: String? { get }
  var authenticationExpirationDate: Date? { get }
  var verificationData: Data? { get }
  var samlAttributeQueryResponse: String? { get }
  @available(tvOS 10.1, *)
  var accountProviderResponse: VSAccountProviderResponse? { get }
}
