
@available(iOS 5.0, *)
enum MKUserTrackingMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case none
  case follow
  case followWithHeading
}
@available(iOS 11.0, *)
let MKMapViewDefaultAnnotationViewReuseIdentifier: String
@available(iOS 11.0, *)
let MKMapViewDefaultClusterAnnotationViewReuseIdentifier: String
@available(iOS 3.0, *)
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
  @available(iOS 7.0, *)
  @NSCopying var camera: MKMapCamera
  @available(iOS 7.0, *)
  func setCamera(_ camera: MKMapCamera, animated: Bool)
  @available(iOS 13.0, *)
  @NSCopying var cameraZoomRange: MKMapView.CameraZoomRange!
  @available(iOS 13.0, *)
  func setCameraZoomRange(_ cameraZoomRange: MKMapView.CameraZoomRange?, animated: Bool)
  @available(iOS 13.0, *)
  @NSCopying var cameraBoundary: MKMapView.CameraBoundary?
  @available(iOS 13.0, *)
  func setCameraBoundary(_ cameraBoundary: MKMapView.CameraBoundary?, animated: Bool)
  func convert(_ coordinate: CLLocationCoordinate2D, toPointTo view: UIView?) -> CGPoint
  func convert(_ point: CGPoint, toCoordinateFrom view: UIView?) -> CLLocationCoordinate2D
  func convert(_ region: MKCoordinateRegion, toRectTo view: UIView?) -> CGRect
  func convert(_ rect: CGRect, toRegionFrom view: UIView?) -> MKCoordinateRegion
  var isZoomEnabled: Bool
  var isScrollEnabled: Bool
  @available(iOS 7.0, *)
  var isRotateEnabled: Bool
  @available(iOS 7.0, *)
  var isPitchEnabled: Bool
  @available(iOS 9.0, *)
  var showsCompass: Bool
  @available(iOS 9.0, *)
  var showsScale: Bool
  @available(iOS 13.0, *)
  @NSCopying var pointOfInterestFilter: MKPointOfInterestFilter?
  @available(iOS, introduced: 7.0, deprecated: 13.0, message: "Use pointOfInterestFilter")
  var showsPointsOfInterest: Bool
  @available(iOS 7.0, *)
  var showsBuildings: Bool
  @available(iOS 9.0, *)
  var showsTraffic: Bool
  var showsUserLocation: Bool
  var userLocation: MKUserLocation { get }
  @available(iOS 5.0, *)
  var userTrackingMode: MKUserTrackingMode
  @available(iOS 5.0, *)
  func setUserTrackingMode(_ mode: MKUserTrackingMode, animated: Bool)
  var isUserLocationVisible: Bool { get }
  func addAnnotation(_ annotation: MKAnnotation)
  func addAnnotations(_ annotations: [MKAnnotation])
  func removeAnnotation(_ annotation: MKAnnotation)
  func removeAnnotations(_ annotations: [MKAnnotation])
  var annotations: [MKAnnotation] { get }
  @available(iOS 4.2, *)
  func annotations(in mapRect: MKMapRect) -> Set<AnyHashable>
  func view(for annotation: MKAnnotation) -> MKAnnotationView?
  func dequeueReusableAnnotationView(withIdentifier identifier: String) -> MKAnnotationView?
  @available(iOS 11.0, *)
  func dequeueReusableAnnotationView(withIdentifier identifier: String, for annotation: MKAnnotation) -> MKAnnotationView
  @available(iOS 11.0, *)
  func register(_ viewClass: AnyClass?, forAnnotationViewWithReuseIdentifier identifier: String)
  func selectAnnotation(_ annotation: MKAnnotation, animated: Bool)
  func deselectAnnotation(_ annotation: MKAnnotation?, animated: Bool)
  var selectedAnnotations: [MKAnnotation]
  var annotationVisibleRect: CGRect { get }
  @available(iOS 7.0, *)
  func showAnnotations(_ annotations: [MKAnnotation], animated: Bool)
}
@available(iOS 7.0, *)
enum MKOverlayLevel : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case aboveRoads
  case aboveLabels
}
extension MKMapView {
  @available(iOS 7.0, *)
  func addOverlay(_ overlay: MKOverlay, level: MKOverlayLevel)
  @available(iOS 7.0, *)
  func addOverlays(_ overlays: [MKOverlay], level: MKOverlayLevel)
  @available(iOS 4.0, *)
  func removeOverlay(_ overlay: MKOverlay)
  @available(iOS 4.0, *)
  func removeOverlays(_ overlays: [MKOverlay])
  @available(iOS 7.0, *)
  func insertOverlay(_ overlay: MKOverlay, at index: Int, level: MKOverlayLevel)
  @available(iOS 4.0, *)
  func insertOverlay(_ overlay: MKOverlay, above sibling: MKOverlay)
  @available(iOS 4.0, *)
  func insertOverlay(_ overlay: MKOverlay, below sibling: MKOverlay)
  @available(iOS 7.0, *)
  func exchangeOverlay(_ overlay1: MKOverlay, with overlay2: MKOverlay)
  @available(iOS 4.0, *)
  var overlays: [MKOverlay] { get }
  @available(iOS 7.0, *)
  func overlays(in level: MKOverlayLevel) -> [MKOverlay]
  @available(iOS 7.0, *)
  func renderer(for overlay: MKOverlay) -> MKOverlayRenderer?
  @available(iOS, introduced: 4.0, deprecated: 13.0)
  func view(for overlay: MKOverlay) -> MKOverlayView
  @available(iOS 4.0, *)
  func addOverlay(_ overlay: MKOverlay)
  @available(iOS 4.0, *)
  func addOverlays(_ overlays: [MKOverlay])
  @available(iOS 4.0, *)
  func insertOverlay(_ overlay: MKOverlay, at index: Int)
  @available(iOS 4.0, *)
  func exchangeOverlay(at index1: Int, withOverlayAt index2: Int)
}
protocol MKMapViewDelegate : NSObjectProtocol {
  @available(iOS 3.0, *)
  optional func mapView(_ mapView: MKMapView, regionWillChangeAnimated animated: Bool)
  @available(iOS 3.0, *)
  optional func mapView(_ mapView: MKMapView, regionDidChangeAnimated animated: Bool)
  @available(iOS 11, *)
  @asyncHandler optional func mapViewDidChangeVisibleRegion(_ mapView: MKMapView)
  @available(iOS 3.0, *)
  optional func mapViewWillStartLoadingMap(_ mapView: MKMapView)
  @available(iOS 3.0, *)
  @asyncHandler optional func mapViewDidFinishLoadingMap(_ mapView: MKMapView)
  @available(iOS 3.0, *)
  @asyncHandler optional func mapViewDidFailLoadingMap(_ mapView: MKMapView, withError error: Error)
  @available(iOS 7.0, *)
  optional func mapViewWillStartRenderingMap(_ mapView: MKMapView)
  @available(iOS 7.0, *)
  @asyncHandler optional func mapViewDidFinishRenderingMap(_ mapView: MKMapView, fullyRendered: Bool)
  @available(iOS 3.0, *)
  optional func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView?
  @available(iOS 3.0, *)
  @asyncHandler optional func mapView(_ mapView: MKMapView, didAdd views: [MKAnnotationView])
  @available(iOS 3.0, *)
  optional func mapView(_ mapView: MKMapView, annotationView view: MKAnnotationView, calloutAccessoryControlTapped control: UIControl)
  @available(iOS 4.0, *)
  @asyncHandler optional func mapView(_ mapView: MKMapView, didSelect view: MKAnnotationView)
  @available(iOS 4.0, *)
  @asyncHandler optional func mapView(_ mapView: MKMapView, didDeselect view: MKAnnotationView)
  @available(iOS 4.0, *)
  optional func mapViewWillStartLocatingUser(_ mapView: MKMapView)
  @available(iOS 4.0, *)
  @asyncHandler optional func mapViewDidStopLocatingUser(_ mapView: MKMapView)
  @available(iOS 4.0, *)
  @asyncHandler optional func mapView(_ mapView: MKMapView, didUpdate userLocation: MKUserLocation)
  @available(iOS 4.0, *)
  @asyncHandler optional func mapView(_ mapView: MKMapView, didFailToLocateUserWithError error: Error)
  @available(iOS 4.0, *)
  @asyncHandler optional func mapView(_ mapView: MKMapView, annotationView view: MKAnnotationView, didChange newState: MKAnnotationView.DragState, fromOldState oldState: MKAnnotationView.DragState)
  @available(iOS 5.0, *)
  @asyncHandler optional func mapView(_ mapView: MKMapView, didChange mode: MKUserTrackingMode, animated: Bool)
  @available(iOS 7.0, *)
  optional func mapView(_ mapView: MKMapView, rendererFor overlay: MKOverlay) -> MKOverlayRenderer
  @available(iOS 7.0, *)
  @asyncHandler optional func mapView(_ mapView: MKMapView, didAdd renderers: [MKOverlayRenderer])
  @available(iOS, introduced: 4.0, deprecated: 13.0)
  optional func mapView(_ mapView: MKMapView, viewFor overlay: MKOverlay) -> MKOverlayView
  @available(iOS, introduced: 4.0, deprecated: 13.0)
  @asyncHandler optional func mapView(_ mapView: MKMapView, didAddOverlayViews overlayViews: [Any])
  @available(iOS 11.0, *)
  optional func mapView(_ mapView: MKMapView, clusterAnnotationForMemberAnnotations memberAnnotations: [MKAnnotation]) -> MKClusterAnnotation
}
