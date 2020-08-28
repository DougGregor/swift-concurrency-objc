
@available(watchOS 2.0, *)
class CLBeaconRegion : CLRegion {
  @available(watchOS 6.0, *)
  init(uuid: UUID, identifier: String)
  @available(watchOS, introduced: 2.0, deprecated: 6.0)
  init(proximityUUID: UUID, identifier: String)
  @available(watchOS 6.0, *)
  init(uuid: UUID, major: CLBeaconMajorValue, identifier: String)
  @available(watchOS, introduced: 2.0, deprecated: 6.0)
  init(proximityUUID: UUID, major: CLBeaconMajorValue, identifier: String)
  @available(watchOS 6.0, *)
  init(uuid: UUID, major: CLBeaconMajorValue, minor: CLBeaconMinorValue, identifier: String)
  @available(watchOS, introduced: 2.0, deprecated: 6.0)
  init(proximityUUID: UUID, major: CLBeaconMajorValue, minor: CLBeaconMinorValue, identifier: String)
  @available(watchOS 6.0, *)
  init(beaconIdentityConstraint: CLBeaconIdentityConstraint, identifier: String)
  func peripheralData(withMeasuredPower measuredPower: NSNumber?) -> NSMutableDictionary
  @available(watchOS 6.0, *)
  @NSCopying var beaconIdentityConstraint: CLBeaconIdentityConstraint { get }
  @available(watchOS 6.0, *)
  var uuid: UUID { get }
  @available(watchOS, introduced: 2.0, deprecated: 6.0)
  var proximityUUID: UUID { get }
  @NSCopying var major: NSNumber? { get }
  @NSCopying var minor: NSNumber? { get }
  var notifyEntryStateOnDisplay: Bool
}
@available(watchOS 2.0, *)
class CLBeacon : NSObject, NSCopying, NSSecureCoding {
  @available(watchOS 6.0, *)
  var timestamp: Date { get }
  @available(watchOS 6.0, *)
  var uuid: UUID { get }
  @available(watchOS, introduced: 2.0, deprecated: 6.0)
  var proximityUUID: UUID { get }
  @NSCopying var major: NSNumber { get }
  @NSCopying var minor: NSNumber { get }
  var proximity: CLProximity { get }
  var accuracy: CLLocationAccuracy { get }
  var rssi: Int { get }
}
