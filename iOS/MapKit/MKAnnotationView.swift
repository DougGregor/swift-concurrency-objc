
extension NSNotification.Name {
  static let MKAnnotationCalloutInfoDidChange: NSNotification.Name
}
extension MKAnnotationView {
  @available(iOS 4.0, *)
  enum DragState : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case none
    case starting
    case dragging
    case canceling
    case ending
  }
  @available(iOS 11.0, *)
  enum CollisionMode : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case rectangle
    case circle
    @available(iOS 14.0, *)
    case none
  }
}
@available(iOS 11.0, *)
struct MKFeatureDisplayPriority : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(_ rawValue: Float)
  init(rawValue: Float)
  let rawValue: Float
}
extension MKFeatureDisplayPriority {
  @available(iOS 11.0, *)
  static let required: MKFeatureDisplayPriority
  @available(iOS 11.0, *)
  static let defaultHigh: MKFeatureDisplayPriority
  @available(iOS 11.0, *)
  static let defaultLow: MKFeatureDisplayPriority
}
@available(iOS 14.0, *)
struct MKAnnotationViewZPriority : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(_ rawValue: Float)
  init(rawValue: Float)
  let rawValue: Float
}
extension MKAnnotationViewZPriority {
  @available(iOS 14.0, *)
  static let max: MKAnnotationViewZPriority
  @available(iOS 14.0, *)
  static let defaultSelected: MKAnnotationViewZPriority
  @available(iOS 14.0, *)
  static let defaultUnselected: MKAnnotationViewZPriority
  @available(iOS 14.0, *)
  static let min: MKAnnotationViewZPriority
}
@available(iOS 3.0, *)
class MKAnnotationView : UIView {
  init(annotation: MKAnnotation?, reuseIdentifier: String?)
  var reuseIdentifier: String? { get }
  func prepareForReuse()
  @available(iOS 11.0, *)
  func prepareForDisplay()
  var annotation: MKAnnotation?
  var image: UIImage?
  var centerOffset: CGPoint
  var calloutOffset: CGPoint
  var isEnabled: Bool
  var isHighlighted: Bool
  var isSelected: Bool
  func setSelected(_ selected: Bool, animated: Bool)
  var canShowCallout: Bool
  var leftCalloutAccessoryView: UIView?
  var rightCalloutAccessoryView: UIView?
  @available(iOS 9.0, *)
  var detailCalloutAccessoryView: UIView?
  @available(iOS 4.0, *)
  var isDraggable: Bool
  @available(iOS 4.0, *)
  var dragState: MKAnnotationView.DragState
  @available(iOS 4.2, *)
  func setDragState(_ newDragState: MKAnnotationView.DragState, animated: Bool)
  @available(iOS 11.0, *)
  var clusteringIdentifier: String?
  @available(iOS 11.0, *)
  weak var cluster: @sil_weak MKAnnotationView? { get }
  @available(iOS 11.0, *)
  var displayPriority: MKFeatureDisplayPriority
  @available(iOS 14.0, *)
  var zPriority: MKAnnotationViewZPriority
  @available(iOS 14.0, *)
  var selectedZPriority: MKAnnotationViewZPriority
  @available(iOS 11.0, *)
  var collisionMode: MKAnnotationView.CollisionMode
}
