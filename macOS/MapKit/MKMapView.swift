
@available(macOS 11.0, *)
enum MKUserTrackingMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case none
  case follow
}
@available(macOS 10.13, *)
let MKMapViewDefaultAnnotationViewReuseIdentifier: String
@available(macOS 10.13, *)
let MKMapViewDefaultClusterAnnotationViewReuseIdentifier: String
@available(macOS 10.9, *)
class MKMapView : NSView, NSCoding {
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
  func setVisibleMapRect(_ mapRect: MKMapRect, edgePadding insets: NSEdgeInsets, animated animate: Bool)
  func mapRectThatFits(_ mapRect: MKMapRect, edgePadding insets: NSEdgeInsets) -> MKMapRect
  @available(macOS 10.9, *)
  @NSCopying var camera: MKMapCamera
  @available(macOS 10.9, *)
  func setCamera(_ camera: MKMapCamera, animated: Bool)
  @available(macOS 10.15, *)
  @NSCopying var cameraZoomRange: MKMapView.CameraZoomRange!
  @available(macOS 10.15, *)
  func setCameraZoomRange(_ cameraZoomRange: MKMapView.CameraZoomRange?, animated: Bool)
  @available(macOS 10.15, *)
  @NSCopying var cameraBoundary: MKMapView.CameraBoundary?
  @available(macOS 10.15, *)
  func setCameraBoundary(_ cameraBoundary: MKMapView.CameraBoundary?, animated: Bool)
  func convert(_ coordinate: CLLocationCoordinate2D, toPointTo view: NSView?) -> CGPoint
  func convert(_ point: CGPoint, toCoordinateFrom view: NSView?) -> CLLocationCoordinate2D
  func convert(_ region: MKCoordinateRegion, toRectTo view: NSView?) -> CGRect
  func convert(_ rect: CGRect, toRegionFrom view: NSView?) -> MKCoordinateRegion
  var isZoomEnabled: Bool
  var isScrollEnabled: Bool
  @available(macOS 10.9, *)
  var isRotateEnabled: Bool
  @available(macOS 10.9, *)
  var isPitchEnabled: Bool
  @available(macOS 11.0, *)
  var showsPitchControl: Bool
  @available(macOS 10.9, *)
  var showsZoomControls: Bool
  @available(macOS 10.9, *)
  var showsCompass: Bool
  @available(macOS 10.10, *)
  var showsScale: Bool
  @available(macOS 10.15, *)
  @NSCopying var pointOfInterestFilter: MKPointOfInterestFilter?
  @available(macOS, introduced: 10.9, deprecated: 10.15, message: "Use pointOfInterestFilter")
  var showsPointsOfInterest: Bool
  @available(macOS 10.9, *)
  var showsBuildings: Bool
  @available(macOS 10.11, *)
  var showsTraffic: Bool
  var showsUserLocation: Bool
  var userLocation: MKUserLocation { get }
  @available(macOS 11.0, *)
  var userTrackingMode: MKUserTrackingMode
  @available(macOS 11.0, *)
  func setUserTrackingMode(_ mode: MKUserTrackingMode, animated: Bool)
  var isUserLocationVisible: Bool { get }
  func addAnnotation(_ annotation: MKAnnotation)
  func addAnnotations(_ annotations: [MKAnnotation])
  func removeAnnotation(_ annotation: MKAnnotation)
  func removeAnnotations(_ annotations: [MKAnnotation])
  var annotations: [MKAnnotation] { get }
  @available(macOS 10.9, *)
  func annotations(in mapRect: MKMapRect) -> Set<AnyHashable>
  func view(for annotation: MKAnnotation) -> MKAnnotationView?
  func dequeueReusableAnnotationView(withIdentifier identifier: String) -> MKAnnotationView?
  @available(macOS 10.13, *)
  func dequeueReusableAnnotationView(withIdentifier identifier: String, for annotation: MKAnnotation) -> MKAnnotationView
  @available(macOS 10.13, *)
  func register(_ viewClass: AnyClass?, forAnnotationViewWithReuseIdentifier identifier: String)
  func selectAnnotation(_ annotation: MKAnnotation, animated: Bool)
  func deselectAnnotation(_ annotation: MKAnnotation?, animated: Bool)
  var selectedAnnotations: [MKAnnotation]
  var annotationVisibleRect: CGRect { get }
  @available(macOS 10.9, *)
  func showAnnotations(_ annotations: [MKAnnotation], animated: Bool)
}
@available(macOS 10.9, *)
enum MKOverlayLevel : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case aboveRoads
  case aboveLabels
}
extension MKMapView {
  @available(macOS 10.9, *)
  func addOverlay(_ overlay: MKOverlay, level: MKOverlayLevel)
  @available(macOS 10.9, *)
  func addOverlays(_ overlays: [MKOverlay], level: MKOverlayLevel)
  @available(macOS 10.9, *)
  func removeOverlay(_ overlay: MKOverlay)
  @available(macOS 10.9, *)
  func removeOverlays(_ overlays: [MKOverlay])
  @available(macOS 10.9, *)
  func insertOverlay(_ overlay: MKOverlay, at index: Int, level: MKOverlayLevel)
  @available(macOS 10.9, *)
  func insertOverlay(_ overlay: MKOverlay, above sibling: MKOverlay)
  @available(macOS 10.9, *)
  func insertOverlay(_ overlay: MKOverlay, below sibling: MKOverlay)
  @available(macOS 10.9, *)
  func exchangeOverlay(_ overlay1: MKOverlay, with overlay2: MKOverlay)
  @available(macOS 10.9, *)
  var overlays: [MKOverlay] { get }
  @available(macOS 10.9, *)
  func overlays(in level: MKOverlayLevel) -> [MKOverlay]
  @available(macOS 10.9, *)
  func renderer(for overlay: MKOverlay) -> MKOverlayRenderer?
  @available(macOS 10.9, *)
  func addOverlay(_ overlay: MKOverlay)
  @available(macOS 10.9, *)
  func addOverlays(_ overlays: [MKOverlay])
  @available(macOS 10.9, *)
  func insertOverlay(_ overlay: MKOverlay, at index: Int)
  @available(macOS 10.9, *)
  func exchangeOverlay(at index1: Int, withOverlayAt index2: Int)
}
protocol MKMapViewDelegate : NSObjectProtocol {
  @available(macOS 10.9, *)
  optional func mapView(_ mapView: MKMapView, regionWillChangeAnimated animated: Bool)
  @available(macOS 10.9, *)
  optional func mapView(_ mapView: MKMapView, regionDidChangeAnimated animated: Bool)
  @available(macOS 10.13, *)
  @asyncHandler optional func mapViewDidChangeVisibleRegion(_ mapView: MKMapView)
  @available(macOS 10.9, *)
  optional func mapViewWillStartLoadingMap(_ mapView: MKMapView)
  @available(macOS 10.9, *)
  @asyncHandler optional func mapViewDidFinishLoadingMap(_ mapView: MKMapView)
  @available(macOS 10.9, *)
  @asyncHandler optional func mapViewDidFailLoadingMap(_ mapView: MKMapView, withError error: Error)
  @available(macOS 10.9, *)
  optional func mapViewWillStartRenderingMap(_ mapView: MKMapView)
  @available(macOS 10.9, *)
  @asyncHandler optional func mapViewDidFinishRenderingMap(_ mapView: MKMapView, fullyRendered: Bool)
  @available(macOS 10.9, *)
  optional func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView?
  @available(macOS 10.9, *)
  @asyncHandler optional func mapView(_ mapView: MKMapView, didAdd views: [MKAnnotationView])
  @available(macOS 10.9, *)
  @asyncHandler optional func mapView(_ mapView: MKMapView, didSelect view: MKAnnotationView)
  @available(macOS 10.9, *)
  @asyncHandler optional func mapView(_ mapView: MKMapView, didDeselect view: MKAnnotationView)
  @available(macOS 10.9, *)
  optional func mapViewWillStartLocatingUser(_ mapView: MKMapView)
  @available(macOS 10.9, *)
  @asyncHandler optional func mapViewDidStopLocatingUser(_ mapView: MKMapView)
  @available(macOS 10.9, *)
  @asyncHandler optional func mapView(_ mapView: MKMapView, didUpdate userLocation: MKUserLocation)
  @available(macOS 10.9, *)
  @asyncHandler optional func mapView(_ mapView: MKMapView, didFailToLocateUserWithError error: Error)
  @available(macOS 10.9, *)
  @asyncHandler optional func mapView(_ mapView: MKMapView, annotationView view: MKAnnotationView, didChange newState: MKAnnotationView.DragState, fromOldState oldState: MKAnnotationView.DragState)
  @available(macOS 11.0, *)
  @asyncHandler optional func mapView(_ mapView: MKMapView, didChange mode: MKUserTrackingMode, animated: Bool)
  @available(macOS 10.9, *)
  optional func mapView(_ mapView: MKMapView, rendererFor overlay: MKOverlay) -> MKOverlayRenderer
  @available(macOS 10.9, *)
  @asyncHandler optional func mapView(_ mapView: MKMapView, didAdd renderers: [MKOverlayRenderer])
  @available(macOS 10.13, *)
  optional func mapView(_ mapView: MKMapView, clusterAnnotationForMemberAnnotations memberAnnotations: [MKAnnotation]) -> MKClusterAnnotation
}
