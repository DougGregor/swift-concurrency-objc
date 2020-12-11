
@available(iOS 14.0, *)
class PKShareablePassMetadata : NSObject {
  init?(provisioningCredentialIdentifier credentialIdentifier: String, cardConfigurationIdentifier: String, sharingInstanceIdentifier: String, passThumbnailImage: CGImage, ownerDisplayName: String, localizedDescription: String)
  var credentialIdentifier: String { get }
  var cardConfigurationIdentifier: String { get }
  var sharingInstanceIdentifier: String { get }
  var passThumbnailImage: CGImage { get }
  var localizedDescription: String { get }
  var ownerDisplayName: String { get }
}
@available(iOS 14.0, *)
enum PKAddShareablePassConfigurationPrimaryAction : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case add
  case share
}
@available(iOS 14.0, *)
class PKAddShareablePassConfiguration : PKAddSecureElementPassConfiguration {
  class func forPassMetaData(_ passMetadata: [PKShareablePassMetadata], provisioningPolicyIdentifier: String, action: PKAddShareablePassConfigurationPrimaryAction, completion: @escaping (PKAddShareablePassConfiguration?, Error?) -> Void)
  class func forPassMetaData(_ passMetadata: [PKShareablePassMetadata], provisioningPolicyIdentifier: String, action: PKAddShareablePassConfigurationPrimaryAction) async throws -> PKAddShareablePassConfiguration
  var primaryAction: PKAddShareablePassConfigurationPrimaryAction { get }
  var credentialsMetadata: [PKShareablePassMetadata] { get }
  var provisioningPolicyIdentifier: String { get }
}
