
typealias TVUserIdentifier = String
@available(tvOS 13.0, *)
class TVUserManager : NSObject {
  var currentUserIdentifier: TVUserIdentifier? { get }
  var userIdentifiersForCurrentProfile: [TVUserIdentifier]
  func presentProfilePreferencePanel(currentSettings: [TVUserIdentifier : TVAppProfileDescriptor], availableProfiles: [TVAppProfileDescriptor], completion: @escaping ([TVUserIdentifier : TVAppProfileDescriptor]) -> Void)
  func presentProfilePreferencePanel(currentSettings: [TVUserIdentifier : TVAppProfileDescriptor], availableProfiles: [TVAppProfileDescriptor]) async -> [TVUserIdentifier : TVAppProfileDescriptor]
  func shouldStorePreferenceForCurrentUser(to profile: TVAppProfileDescriptor, completion: @escaping (Bool) -> Void)
  func shouldStorePreferenceForCurrentUser(to profile: TVAppProfileDescriptor) async -> Bool
}
extension TVUserManager {
  class let currentUserIdentifierDidChangeNotification: NSNotification.Name
}
