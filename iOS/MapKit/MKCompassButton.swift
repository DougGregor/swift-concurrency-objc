
@available(iOS 11, *)
class MKCompassButton : UIView {
  convenience init(mapView: MKMapView?)
  weak var mapView: @sil_weak MKMapView?
  var compassVisibility: MKFeatureVisibility
}
