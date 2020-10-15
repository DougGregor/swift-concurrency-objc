
extension NSNotification.Name {
  static let MKAnnotationCalloutInfoDidChange: NSNotification.Name
}
extension MKAnnotationView {
  @available(tvOS 11.0, *)
  enum CollisionMode : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case rectangle
    case circle
    @available(tvOS 14.0, *)
    case none
  }
}
@available(tvOS 11.0, *)
struct MKFeatureDisplayPriority : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(_ rawValue: Float)
  init(rawValue: Float)
  let rawValue: Float
}
extension MKFeatureDisplayPriority {
  @available(tvOS 11.0, *)
  static let required: MKFeatureDisplayPriority
  @available(tvOS 11.0, *)
  static let defaultHigh: MKFeatureDisplayPriority
  @available(tvOS 11.0, *)
  static let defaultLow: MKFeatureDisplayPriority
}
@available(tvOS 14.0, *)
struct MKAnnotationViewZPriority : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(_ rawValue: Float)
  init(rawValue: Float)
  let rawValue: Float
}
extension MKAnnotationViewZPriority {
  @available(tvOS 14.0, *)
  static let max: MKAnnotationViewZPriority
  @available(tvOS 14.0, *)
  static let defaultSelected: MKAnnotationViewZPriority
  @available(tvOS 14.0, *)
  static let defaultUnselected: MKAnnotationViewZPriority
  @available(tvOS 14.0, *)
  static let min: MKAnnotationViewZPriority
}
@available(tvOS 9.2, *)
class MKAnnotationView : UIView {
  init(annotation: MKAnnotation?, reuseIdentifier: String?)
  var reuseIdentifier: String? { get }
  func prepareForReuse()
  @available(tvOS 11.0, *)
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
  @available(tvOS 9.0, *)
  var detailCalloutAccessoryView: UIView?
  @available(tvOS 11.0, *)
  var clusteringIdentifier: String?
  @available(tvOS 11.0, *)
  weak var cluster: @sil_weak MKAnnotationView? { get }
  @available(tvOS 11.0, *)
  var displayPriority: MKFeatureDisplayPriority
  @available(tvOS 14.0, *)
  var zPriority: MKAnnotationViewZPriority
  @available(tvOS 14.0, *)
  var selectedZPriority: MKAnnotationViewZPriority
  @available(tvOS 11.0, *)
  var collisionMode: MKAnnotationView.CollisionMode
}
