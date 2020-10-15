
@available(iOS 13.0, *)
extension CLBeaconIdentityConstraint {
  var major: UInt16? { get }
  var minor: UInt16? { get }
}

extension CLError {
  var alternateRegion: CLRegion? { get }
}

extension CLLocationCoordinate2D : _ObjectiveCBridgeable {
}

