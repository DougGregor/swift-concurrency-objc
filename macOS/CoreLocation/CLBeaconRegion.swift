
@available(macOS 10.15, *)
class CLBeaconRegion : CLRegion {
  @available(macOS 10.15, *)
  init(uuid: UUID, identifier: String)
  @available(macOS, introduced: 10.15, deprecated: 10.15)
  init(proximityUUID: UUID, identifier: String)
  @available(macOS 10.15, *)
  init(uuid: UUID, major: CLBeaconMajorValue, identifier: String)
  @available(macOS, introduced: 10.15, deprecated: 10.15)
  init(proximityUUID: UUID, major: CLBeaconMajorValue, identifier: String)
  @available(macOS 10.15, *)
  init(uuid: UUID, major: CLBeaconMajorValue, minor: CLBeaconMinorValue, identifier: String)
  @available(macOS, introduced: 10.15, deprecated: 10.15)
  init(proximityUUID: UUID, major: CLBeaconMajorValue, minor: CLBeaconMinorValue, identifier: String)
  @available(macOS 10.15, *)
  init(beaconIdentityConstraint: CLBeaconIdentityConstraint, identifier: String)
  func peripheralData(withMeasuredPower measuredPower: NSNumber?) -> NSMutableDictionary
  @available(macOS 10.15, *)
  @NSCopying var beaconIdentityConstraint: CLBeaconIdentityConstraint { get }
  @available(macOS 10.15, *)
  var uuid: UUID { get }
  @available(macOS, introduced: 10.15, deprecated: 10.15)
  var proximityUUID: UUID { get }
  @NSCopying var major: NSNumber? { get }
  @NSCopying var minor: NSNumber? { get }
  var notifyEntryStateOnDisplay: Bool
}
@available(macOS 10.15, *)
class CLBeacon : NSObject, NSCopying, NSSecureCoding {
  @available(macOS 10.15, *)
  var timestamp: Date { get }
  @available(macOS 10.15, *)
  var uuid: UUID { get }
  @available(macOS, introduced: 10.15, deprecated: 10.15)
  var proximityUUID: UUID { get }
  @NSCopying var major: NSNumber { get }
  @NSCopying var minor: NSNumber { get }
  var proximity: CLProximity { get }
  var accuracy: CLLocationAccuracy { get }
  var rssi: Int { get }
}
