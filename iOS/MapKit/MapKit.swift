
@available(iOS 14.0, tvOS 14.0, macOS 11.0, *)
extension MKGradientPolylineRenderer {
  var locations: [CGFloat] { get }
  func setColors(_ colors: [UIColor], locations: [CGFloat])
}

extension MKCoordinateSpan : _ObjectiveCBridgeable {
}

@available(iOS 14.0, tvOS 14.0, macOS 11.0, *)
extension MKMultiPoint {
  func locations(at indexes: IndexSet) -> [CGFloat]
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, *)
extension MKLocalSearch.Request {
  typealias ResultType = MKLocalSearch.ResultType
}


// MARK: - SwiftUI Additions


// Available when SwiftUI is imported with MapKit
@available(iOS 14.0, tvOS 14.0, macOS 11.0, watchOS 7.0, *)
struct Map<Content> : View where Content : View {
  init<Items, Annotation>(mapRect: Binding<MKMapRect>, interactionModes: MapInteractionModes = .all, showsUserLocation: Bool = false, userTrackingMode: Binding<MapUserTrackingMode>? = nil, annotationItems: Items, annotationContent: @escaping (Items.Element) -> Annotation) where Content == _DefaultAnnotatedMapContent<Items>, Items : RandomAccessCollection, Annotation : MapAnnotationProtocol, Items.Element : Identifiable
  init<Items, Annotation>(coordinateRegion: Binding<MKCoordinateRegion>, interactionModes: MapInteractionModes = .all, showsUserLocation: Bool = false, userTrackingMode: Binding<MapUserTrackingMode>? = nil, annotationItems: Items, annotationContent: @escaping (Items.Element) -> Annotation) where Content == _DefaultAnnotatedMapContent<Items>, Items : RandomAccessCollection, Annotation : MapAnnotationProtocol, Items.Element : Identifiable
  init(mapRect: Binding<MKMapRect>, interactionModes: MapInteractionModes = .all, showsUserLocation: Bool = false, userTrackingMode: Binding<MapUserTrackingMode>? = nil) where Content == _DefaultMapContent
  init(coordinateRegion: Binding<MKCoordinateRegion>, interactionModes: MapInteractionModes = .all, showsUserLocation: Bool = false, userTrackingMode: Binding<MapUserTrackingMode>? = nil) where Content == _DefaultMapContent
}

// Available when SwiftUI is imported with MapKit
@available(iOS 14.0, tvOS 14.0, macOS 11.0, watchOS 7.0, *)
struct MapAnnotation<Content> : MapAnnotationProtocol where Content : View {
  init(coordinate: CLLocationCoordinate2D, anchorPoint: CGPoint = CGPoint(x: 0.5, y: 0.5), @ViewBuilder content: () -> Content)
}

// Available when SwiftUI is imported with MapKit
@available(iOS 14.0, tvOS 14.0, macOS 11.0, watchOS 7.0, *)
protocol MapAnnotationProtocol {
  var _annotationData: _MapAnnotationData { get }
}

// Available when SwiftUI is imported with MapKit
@available(iOS 14.0, tvOS 14.0, macOS 11.0, watchOS 7.0, *)
struct MapInteractionModes : OptionSet {
  static let pan: MapInteractionModes
  static let zoom: MapInteractionModes
  static let all: MapInteractionModes
}

// Available when SwiftUI is imported with MapKit
@available(iOS 14.0, tvOS 14.0, macOS 11.0, watchOS 7.0, *)
struct MapMarker : MapAnnotationProtocol {
  init(coordinate: CLLocationCoordinate2D, tint: Color? = nil)
}

// Available when SwiftUI is imported with MapKit
@available(iOS 14.0, tvOS 14.0, macOS 11.0, watchOS 7.0, *)
struct MapPin : MapAnnotationProtocol {
  init(coordinate: CLLocationCoordinate2D, tint: Color? = nil)
}

// Available when SwiftUI is imported with MapKit
@available(iOS 14.0, tvOS 14.0, macOS 11.0, watchOS 7.0, *)
enum MapUserTrackingMode {
  case none
  case follow
}

// Available when SwiftUI is imported with MapKit
@available(iOS 14.0, tvOS 14.0, macOS 11.0, watchOS 7.0, *)
extension MapUserTrackingMode : Equatable {
}

// Available when SwiftUI is imported with MapKit
@available(iOS 14.0, tvOS 14.0, macOS 11.0, watchOS 7.0, *)
extension MapUserTrackingMode : Hashable {
}

// Available when SwiftUI is imported with MapKit
@available(iOS 14.0, tvOS 14.0, macOS 11.0, watchOS 7.0, *)
struct _DefaultAnnotatedMapContent<Items> : View where Items : RandomAccessCollection, Items.Element : Identifiable {
}

// Available when SwiftUI is imported with MapKit
@available(iOS 14.0, tvOS 14.0, macOS 11.0, watchOS 7.0, *)
struct _DefaultMapContent : View {
}

// Available when SwiftUI is imported with MapKit
@available(iOS 14.0, tvOS 14.0, macOS 11.0, watchOS 7.0, *)
struct _MapAnnotationData {
}

