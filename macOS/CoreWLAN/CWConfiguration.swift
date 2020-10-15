
@available(macOS 10.6, *)
class CWConfiguration : NSObject, NSCopying, NSMutableCopying, NSSecureCoding {
  @available(macOS 10.7, *)
  @NSCopying var networkProfiles: NSOrderedSet { get }
  @available(macOS 10.7, *)
  var requireAdministratorForAssociation: Bool { get }
  @available(macOS 10.7, *)
  var requireAdministratorForPower: Bool { get }
  @available(macOS 10.7, *)
  var requireAdministratorForIBSSMode: Bool { get }
  @available(macOS 10.7, *)
  var rememberJoinedNetworks: Bool { get }
  @available(macOS 10.7, *)
  init(configuration: CWConfiguration)
  @available(macOS 10.6, *)
  func isEqual(to configuration: CWConfiguration) -> Bool
}
@available(macOS 10.6, *)
class CWMutableConfiguration : CWConfiguration {
}
