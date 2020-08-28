
@available(watchOS 2.0, *)
class MKPointAnnotation : MKShape {
  @available(watchOS 6.0, *)
  convenience init(__coordinate coordinate: CLLocationCoordinate2D)
  @available(watchOS 6.0, *)
  convenience init(__coordinate coordinate: CLLocationCoordinate2D, title: String?, subtitle: String?)
}
