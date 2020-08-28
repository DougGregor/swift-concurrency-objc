
@available(iOS 10.0, *)
class VSAccountMetadataRequest : NSObject {
  var channelIdentifier: String?
  var supportedAccountProviderIdentifiers: [String]
  @available(iOS 11.0, *)
  var featuredAccountProviderIdentifiers: [String]
  var verificationToken: String?
  var includeAccountProviderIdentifier: Bool
  var includeAuthenticationExpirationDate: Bool
  var localizedVideoTitle: String?
  var isInterruptionAllowed: Bool
  var forceAuthentication: Bool
  var attributeNames: [String]
  @available(iOS 10.2, *)
  var supportedAuthenticationSchemes: [VSAccountProviderAuthenticationScheme]
  @available(iOS 13.0, *)
  var accountProviderAuthenticationToken: String?
}
