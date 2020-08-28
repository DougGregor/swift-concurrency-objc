
@available(tvOS 9.2, *)
class MKPointAnnotation : MKShape {
  @available(tvOS 13.0, *)
  convenience init(__coordinate coordinate: CLLocationCoordinate2D)
  @available(tvOS 13.0, *)
  convenience init(__coordinate coordinate: CLLocationCoordinate2D, title: String?, subtitle: String?)
}
