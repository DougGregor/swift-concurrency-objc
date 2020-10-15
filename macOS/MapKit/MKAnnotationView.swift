
extension NSNotification.Name {
  static let MKAnnotationCalloutInfoDidChange: NSNotification.Name
}
extension MKAnnotationView {
  @available(macOS 10.9, *)
  enum DragState : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case none
    case starting
    case dragging
    case canceling
    case ending
  }
  @available(macOS 10.13, *)
  enum CollisionMode : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case rectangle
    case circle
    @available(macOS 11.0, *)
    case none
  }
}
@available(macOS 10.13, *)
struct MKFeatureDisplayPriority : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(_ rawValue: Float)
  init(rawValue: Float)
  let rawValue: Float
}
extension MKFeatureDisplayPriority {
  @available(macOS 10.13, *)
  static let required: MKFeatureDisplayPriority
  @available(macOS 10.13, *)
  static let defaultHigh: MKFeatureDisplayPriority
  @available(macOS 10.13, *)
  static let defaultLow: MKFeatureDisplayPriority
}
@available(macOS 11.0, *)
struct MKAnnotationViewZPriority : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(_ rawValue: Float)
  init(rawValue: Float)
  let rawValue: Float
}
extension MKAnnotationViewZPriority {
  @available(macOS 11.0, *)
  static let max: MKAnnotationViewZPriority
  @available(macOS 11.0, *)
  static let defaultSelected: MKAnnotationViewZPriority
  @available(macOS 11.0, *)
  static let defaultUnselected: MKAnnotationViewZPriority
  @available(macOS 11.0, *)
  static let min: MKAnnotationViewZPriority
}
@available(macOS 10.9, *)
class MKAnnotationView : NSView {
  init(annotation: MKAnnotation?, reuseIdentifier: String?)
  var reuseIdentifier: String? { get }
  @available(macOS 10.13, *)
  func prepareForDisplay()
  var annotation: MKAnnotation?
  var image: NSImage?
  var centerOffset: CGPoint
  var calloutOffset: CGPoint
  @available(macOS 10.9, *)
  var leftCalloutOffset: CGPoint
  @available(macOS 10.9, *)
  var rightCalloutOffset: CGPoint
  var isEnabled: Bool
  var isHighlighted: Bool
  var isSelected: Bool
  func setSelected(_ selected: Bool, animated: Bool)
  var canShowCallout: Bool
  var leftCalloutAccessoryView: NSView?
  var rightCalloutAccessoryView: NSView?
  @available(macOS 10.11, *)
  var detailCalloutAccessoryView: NSView?
  @available(macOS 10.9, *)
  var isDraggable: Bool
  @available(macOS 10.9, *)
  var dragState: MKAnnotationView.DragState
  @available(macOS 10.9, *)
  func setDragState(_ newDragState: MKAnnotationView.DragState, animated: Bool)
  @available(macOS 10.13, *)
  var clusteringIdentifier: String?
  @available(macOS 10.13, *)
  weak var cluster: @sil_weak MKAnnotationView? { get }
  @available(macOS 10.13, *)
  var displayPriority: MKFeatureDisplayPriority
  @available(macOS 11.0, *)
  var zPriority: MKAnnotationViewZPriority
  @available(macOS 11.0, *)
  var selectedZPriority: MKAnnotationViewZPriority
  @available(macOS 10.13, *)
  var collisionMode: MKAnnotationView.CollisionMode
}
