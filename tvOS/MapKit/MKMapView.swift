
@available(tvOS 9.2, *)
enum MKUserTrackingMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case none
  case follow
}
@available(tvOS 11.0, *)
let MKMapViewDefaultAnnotationViewReuseIdentifier: String
@available(tvOS 11.0, *)
let MKMapViewDefaultClusterAnnotationViewReuseIdentifier: String
@available(tvOS 9.2, *)
class MKMapView : UIView, NSCoding {
  @IBOutlet weak var delegate: @sil_weak MKMapViewDelegate?
  var mapType: MKMapType
  var region: MKCoordinateRegion
  func setRegion(_ region: MKCoordinateRegion, animated: Bool)
  var centerCoordinate: CLLocationCoordinate2D
  func setCenter(_ coordinate: CLLocationCoordinate2D, animated: Bool)
  func regionThatFits(_ region: MKCoordinateRegion) -> MKCoordinateRegion
  var visibleMapRect: MKMapRect
  func setVisibleMapRect(_ mapRect: MKMapRect, animated animate: Bool)
  func mapRectThatFits(_ mapRect: MKMapRect) -> MKMapRect
  func setVisibleMapRect(_ mapRect: MKMapRect, edgePadding insets: UIEdgeInsets, animated animate: Bool)
  func mapRectThatFits(_ mapRect: MKMapRect, edgePadding insets: UIEdgeInsets) -> MKMapRect
  @available(tvOS 7.0, *)
  @NSCopying var camera: MKMapCamera
  @available(tvOS 7.0, *)
  func setCamera(_ camera: MKMapCamera, animated: Bool)
  @available(tvOS 13.0, *)
  @NSCopying var cameraZoomRange: MKMapView.CameraZoomRange!
  @available(tvOS 13.0, *)
  func setCameraZoomRange(_ cameraZoomRange: MKMapView.CameraZoomRange?, animated: Bool)
  @available(tvOS 13.0, *)
  @NSCopying var cameraBoundary: MKMapView.CameraBoundary?
  @available(tvOS 13.0, *)
  func setCameraBoundary(_ cameraBoundary: MKMapView.CameraBoundary?, animated: Bool)
  func convert(_ coordinate: CLLocationCoordinate2D, toPointTo view: UIView?) -> CGPoint
  func convert(_ point: CGPoint, toCoordinateFrom view: UIView?) -> CLLocationCoordinate2D
  func convert(_ region: MKCoordinateRegion, toRectTo view: UIView?) -> CGRect
  func convert(_ rect: CGRect, toRegionFrom view: UIView?) -> MKCoordinateRegion
  var isZoomEnabled: Bool
  var isScrollEnabled: Bool
  @available(tvOS 9.0, *)
  var showsScale: Bool
  @available(tvOS 13.0, *)
  @NSCopying var pointOfInterestFilter: MKPointOfInterestFilter?
  @available(tvOS, introduced: 9.0, deprecated: 13.0, message: "Use pointOfInterestFilter")
  var showsPointsOfInterest: Bool
  @available(tvOS 7.0, *)
  var showsBuildings: Bool
  @available(tvOS 9.0, *)
  var showsTraffic: Bool
  var showsUserLocation: Bool
  var userLocation: MKUserLocation { get }
  @available(tvOS 9.2, *)
  var userTrackingMode: MKUserTrackingMode
  @available(tvOS 9.2, *)
  func setUserTrackingMode(_ mode: MKUserTrackingMode, animated: Bool)
  var isUserLocationVisible: Bool { get }
  func addAnnotation(_ annotation: MKAnnotation)
  func addAnnotations(_ annotations: [MKAnnotation])
  func removeAnnotation(_ annotation: MKAnnotation)
  func removeAnnotations(_ annotations: [MKAnnotation])
  var annotations: [MKAnnotation] { get }
  @available(tvOS 4.2, *)
  func annotations(in mapRect: MKMapRect) -> Set<AnyHashable>
  func view(for annotation: MKAnnotation) -> MKAnnotationView?
  func dequeueReusableAnnotationView(withIdentifier identifier: String) -> MKAnnotationView?
  @available(tvOS 11.0, *)
  func dequeueReusableAnnotationView(withIdentifier identifier: String, for annotation: MKAnnotation) -> MKAnnotationView
  @available(tvOS 11.0, *)
  func register(_ viewClass: AnyClass?, forAnnotationViewWithReuseIdentifier identifier: String)
  func selectAnnotation(_ annotation: MKAnnotation, animated: Bool)
  func deselectAnnotation(_ annotation: MKAnnotation?, animated: Bool)
  var selectedAnnotations: [MKAnnotation]
  var annotationVisibleRect: CGRect { get }
  @available(tvOS 7.0, *)
  func showAnnotations(_ annotations: [MKAnnotation], animated: Bool)
}
@available(tvOS 9.2, *)
enum MKOverlayLevel : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case aboveRoads
  case aboveLabels
}
extension MKMapView {
  @available(tvOS 7.0, *)
  func addOverlay(_ overlay: MKOverlay, level: MKOverlayLevel)
  @available(tvOS 7.0, *)
  func addOverlays(_ overlays: [MKOverlay], level: MKOverlayLevel)
  @available(tvOS 4.0, *)
  func removeOverlay(_ overlay: MKOverlay)
  @available(tvOS 4.0, *)
  func removeOverlays(_ overlays: [MKOverlay])
  @available(tvOS 7.0, *)
  func insertOverlay(_ overlay: MKOverlay, at index: Int, level: MKOverlayLevel)
  @available(tvOS 4.0, *)
  func insertOverlay(_ overlay: MKOverlay, above sibling: MKOverlay)
  @available(tvOS 4.0, *)
  func insertOverlay(_ overlay: MKOverlay, below sibling: MKOverlay)
  @available(tvOS 7.0, *)
  func exchangeOverlay(_ overlay1: MKOverlay, with overlay2: MKOverlay)
  @available(tvOS 4.0, *)
  var overlays: [MKOverlay] { get }
  @available(tvOS 7.0, *)
  func overlays(in level: MKOverlayLevel) -> [MKOverlay]
  @available(tvOS 7.0, *)
  func renderer(for overlay: MKOverlay) -> MKOverlayRenderer?
  @available(tvOS 4.0, *)
  func addOverlay(_ overlay: MKOverlay)
  @available(tvOS 4.0, *)
  func addOverlays(_ overlays: [MKOverlay])
  @available(tvOS 4.0, *)
  func insertOverlay(_ overlay: MKOverlay, at index: Int)
  @available(tvOS 4.0, *)
  func exchangeOverlay(at index1: Int, withOverlayAt index2: Int)
}
protocol MKMapViewDelegate : NSObjectProtocol {
  @available(tvOS 9.2, *)
  optional func mapView(_ mapView: MKMapView, regionWillChangeAnimated animated: Bool)
  @available(tvOS 9.2, *)
  optional func mapView(_ mapView: MKMapView, regionDidChangeAnimated animated: Bool)
  @available(tvOS 11, *)
  optional func mapViewDidChangeVisibleRegion(_ mapView: MKMapView)
  @available(tvOS 9.2, *)
  optional func mapViewWillStartLoadingMap(_ mapView: MKMapView)
  @available(tvOS 9.2, *)
  optional func mapViewDidFinishLoadingMap(_ mapView: MKMapView)
  @available(tvOS 9.2, *)
  optional func mapViewDidFailLoadingMap(_ mapView: MKMapView, withError error: Error)
  @available(tvOS 7.0, *)
  optional func mapViewWillStartRenderingMap(_ mapView: MKMapView)
  @available(tvOS 7.0, *)
  optional func mapViewDidFinishRenderingMap(_ mapView: MKMapView, fullyRendered: Bool)
  @available(tvOS 9.2, *)
  optional func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView?
  @available(tvOS 9.2, *)
  optional func mapView(_ mapView: MKMapView, didAdd views: [MKAnnotationView])
  @available(tvOS 4.0, *)
  optional func mapView(_ mapView: MKMapView, didSelect view: MKAnnotationView)
  @available(tvOS 4.0, *)
  optional func mapView(_ mapView: MKMapView, didDeselect view: MKAnnotationView)
  @available(tvOS 4.0, *)
  optional func mapViewWillStartLocatingUser(_ mapView: MKMapView)
  @available(tvOS 4.0, *)
  optional func mapViewDidStopLocatingUser(_ mapView: MKMapView)
  @available(tvOS 4.0, *)
  optional func mapView(_ mapView: MKMapView, didUpdate userLocation: MKUserLocation)
  @available(tvOS 4.0, *)
  optional func mapView(_ mapView: MKMapView, didFailToLocateUserWithError error: Error)
  @available(tvOS 9.2, *)
  optional func mapView(_ mapView: MKMapView, didChange mode: MKUserTrackingMode, animated: Bool)
  @available(tvOS 7.0, *)
  optional func mapView(_ mapView: MKMapView, rendererFor overlay: MKOverlay) -> MKOverlayRenderer
  @available(tvOS 7.0, *)
  optional func mapView(_ mapView: MKMapView, didAdd renderers: [MKOverlayRenderer])
  @available(tvOS 11.0, *)
  optional func mapView(_ mapView: MKMapView, clusterAnnotationForMemberAnnotations memberAnnotations: [MKAnnotation]) -> MKClusterAnnotation
}
