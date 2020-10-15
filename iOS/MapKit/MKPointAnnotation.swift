
@available(iOS 4.0, *)
class MKPointAnnotation : MKShape {
  @available(iOS 13.0, *)
  convenience init(__coordinate coordinate: CLLocationCoordinate2D)
  @available(iOS 13.0, *)
  convenience init(__coordinate coordinate: CLLocationCoordinate2D, title: String?, subtitle: String?)
}
