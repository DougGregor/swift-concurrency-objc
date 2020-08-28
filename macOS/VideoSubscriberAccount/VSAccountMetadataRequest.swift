
class VSAccountMetadataRequest : NSObject {
  var channelIdentifier: String?
  var supportedAccountProviderIdentifiers: [String]
  var featuredAccountProviderIdentifiers: [String]
  var verificationToken: String?
  var includeAccountProviderIdentifier: Bool
  var includeAuthenticationExpirationDate: Bool
  var localizedVideoTitle: String?
  var isInterruptionAllowed: Bool
  var forceAuthentication: Bool
  var attributeNames: [String]
  var supportedAuthenticationSchemes: [VSAccountProviderAuthenticationScheme]
  var accountProviderAuthenticationToken: String?
}
