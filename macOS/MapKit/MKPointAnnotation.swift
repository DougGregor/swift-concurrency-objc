
@available(macOS 10.9, *)
class MKPointAnnotation : MKShape {
  @available(macOS 10.15, *)
  convenience init(__coordinate coordinate: CLLocationCoordinate2D)
  @available(macOS 10.15, *)
  convenience init(__coordinate coordinate: CLLocationCoordinate2D, title: String?, subtitle: String?)
}
