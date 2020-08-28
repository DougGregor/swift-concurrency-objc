
@available(tvOS 10.0, *)
class VSAccountMetadataRequest : NSObject {
  var channelIdentifier: String?
  var supportedAccountProviderIdentifiers: [String]
  @available(tvOS 11.0, *)
  var featuredAccountProviderIdentifiers: [String]
  var verificationToken: String?
  var includeAccountProviderIdentifier: Bool
  var includeAuthenticationExpirationDate: Bool
  var localizedVideoTitle: String?
  var isInterruptionAllowed: Bool
  var forceAuthentication: Bool
  var attributeNames: [String]
  @available(tvOS 10.1, *)
  var supportedAuthenticationSchemes: [VSAccountProviderAuthenticationScheme]
  @available(tvOS 13.0, *)
  var accountProviderAuthenticationToken: String?
}
