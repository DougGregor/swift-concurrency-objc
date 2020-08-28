
class PKTicketMetadata : NSObject {
  init?(provisioningCredentialIdentifier credentialIdentifier: String, cardConfigurationIdentifier: String, sharingInstanceIdentifier: String, passThumbnailImage: CGImage?, ownerDisplayName: String, localizedDescription: String)
  var credentialIdentifier: String { get }
  var cardConfigurationIdentifier: String { get }
  var sharingInstanceIdentifier: String { get }
  var passThumbnailImage: CGImage { get }
  var localizedDescription: String { get }
  var ownerDisplayName: String { get }
}
enum PKAddTicketConfigurationPrimaryAction : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case add
  case share
}
class PKAddTicketConfiguration : PKAddSecureElementPassConfiguration {
  init(primaryAction action: PKAddTicketConfigurationPrimaryAction, ticketsMetadata metadata: [PKTicketMetadata], provisioningPolicyIdentifier policyIdentifier: String)
  func preflight(completion: @escaping (Bool) -> Void)
  func preflight() async -> Bool
  var primaryAction: PKAddTicketConfigurationPrimaryAction { get }
  var ticketsMetadata: [PKTicketMetadata] { get }
  var provisioningPolicyIdentifier: String { get }
}
