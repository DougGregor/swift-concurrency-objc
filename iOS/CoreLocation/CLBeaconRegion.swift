
@available(iOS 7.0, *)
class CLBeaconRegion : CLRegion {
  @available(iOS 13.0, *)
  init(uuid: UUID, identifier: String)
  @available(iOS, introduced: 7.0, deprecated: 13.0)
  init(proximityUUID: UUID, identifier: String)
  @available(iOS 13.0, *)
  init(uuid: UUID, major: CLBeaconMajorValue, identifier: String)
  @available(iOS, introduced: 7.0, deprecated: 13.0)
  init(proximityUUID: UUID, major: CLBeaconMajorValue, identifier: String)
  @available(iOS 13.0, *)
  init(uuid: UUID, major: CLBeaconMajorValue, minor: CLBeaconMinorValue, identifier: String)
  @available(iOS, introduced: 7.0, deprecated: 13.0)
  init(proximityUUID: UUID, major: CLBeaconMajorValue, minor: CLBeaconMinorValue, identifier: String)
  @available(iOS 13.0, *)
  init(beaconIdentityConstraint: CLBeaconIdentityConstraint, identifier: String)
  func peripheralData(withMeasuredPower measuredPower: NSNumber?) -> NSMutableDictionary
  @available(iOS 13.0, *)
  @NSCopying var beaconIdentityConstraint: CLBeaconIdentityConstraint { get }
  @available(iOS 13.0, *)
  var uuid: UUID { get }
  @available(iOS, introduced: 7.0, deprecated: 13.0)
  var proximityUUID: UUID { get }
  @NSCopying var major: NSNumber? { get }
  @NSCopying var minor: NSNumber? { get }
  var notifyEntryStateOnDisplay: Bool
}
@available(iOS 7.0, *)
class CLBeacon : NSObject, NSCopying, NSSecureCoding {
  @available(iOS 13.0, *)
  var timestamp: Date { get }
  @available(iOS 13.0, *)
  var uuid: UUID { get }
  @available(iOS, introduced: 7.0, deprecated: 13.0)
  var proximityUUID: UUID { get }
  @NSCopying var major: NSNumber { get }
  @NSCopying var minor: NSNumber { get }
  var proximity: CLProximity { get }
  var accuracy: CLLocationAccuracy { get }
  var rssi: Int { get }
}
