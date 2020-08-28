
extension MKScaleView {
  @available(iOS 11.0, *)
  enum Alignment : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case leading
    case trailing
  }
}
@available(iOS 11.0, *)
class MKScaleView : UIView {
  convenience init(mapView: MKMapView?)
  weak var mapView: @sil_weak MKMapView?
  var scaleVisibility: MKFeatureVisibility
  var legendAlignment: MKScaleView.Alignment
}
