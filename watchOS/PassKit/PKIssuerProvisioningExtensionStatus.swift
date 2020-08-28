
@available(watchOS 7.0, *)
class PKIssuerProvisioningExtensionStatus : NSObject {
  var requiresAuthentication: Bool
  var passEntriesAvailable: Bool
  var remotePassEntriesAvailable: Bool
}
