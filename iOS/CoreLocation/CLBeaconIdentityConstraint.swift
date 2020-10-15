
typealias CLBeaconMajorValue = UInt16
typealias CLBeaconMinorValue = UInt16
@available(iOS 13.0, *)
class CLBeaconIdentityConstraint : NSObject, NSCopying, NSSecureCoding {
  var uuid: UUID { get }
  @NSCopying var __major: NSNumber? { get }
  @NSCopying var __minor: NSNumber? { get }
  init(uuid: UUID)
  init(uuid: UUID, major: CLBeaconMajorValue)
  init(uuid: UUID, major: CLBeaconMajorValue, minor: CLBeaconMinorValue)
}

@available(iOS 13.0, *)
extension CLBeaconIdentityConstraint {
  var major: UInt16? { get }
  var minor: UInt16? { get }
}
