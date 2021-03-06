
typealias CLBeaconMajorValue = UInt16
typealias CLBeaconMinorValue = UInt16
@available(macOS 10.15, *)
class CLBeaconIdentityConstraint : NSObject, NSCopying, NSSecureCoding {
  var uuid: UUID { get }
  @NSCopying var __major: NSNumber? { get }
  @NSCopying var __minor: NSNumber? { get }
  init(uuid: UUID)
  init(uuid: UUID, major: CLBeaconMajorValue)
  init(uuid: UUID, major: CLBeaconMajorValue, minor: CLBeaconMinorValue)
}
