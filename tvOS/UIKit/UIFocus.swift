
@available(tvOS 9.0, *)
struct UIFocusHeading : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var up: UIFocusHeading { get }
  static var down: UIFocusHeading { get }
  static var left: UIFocusHeading { get }
  static var right: UIFocusHeading { get }
  static var next: UIFocusHeading { get }
  static var previous: UIFocusHeading { get }
}
struct UIFocusSoundIdentifier : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(_ rawValue: String)
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
@available(tvOS 9.0, *)
protocol UIFocusEnvironment : NSObjectProtocol {
  var preferredFocusEnvironments: [UIFocusEnvironment] { get }
  @available(tvOS 12.0, *)
  weak var parentFocusEnvironment: @sil_weak UIFocusEnvironment? { get }
  @available(tvOS 12.0, *)
  var focusItemContainer: UIFocusItemContainer? { get }
  func setNeedsFocusUpdate()
  func updateFocusIfNeeded()
  func shouldUpdateFocus(in context: UIFocusUpdateContext) -> Bool
  func didUpdateFocus(in context: UIFocusUpdateContext, with coordinator: UIFocusAnimationCoordinator)
  @available(tvOS 11.0, *)
  optional func soundIdentifierForFocusUpdate(in context: UIFocusUpdateContext) -> UIFocusSoundIdentifier?
  @available(tvOS, introduced: 9.0, deprecated: 10.0)
  weak optional var preferredFocusedView: @sil_weak UIView? { get }
}

@available(iOS 11.0, tvOS 11.0, *)
extension UIFocusEnvironment {
  @available(iOS 11.0, tvOS 11.0, *)
  func contains(_ environment: UIFocusEnvironment) -> Bool
}
@available(tvOS 10.0, *)
protocol UIFocusItem : UIFocusEnvironment {
  var canBecomeFocused: Bool { get }
  @available(tvOS 12.0, *)
  var frame: CGRect { get }
  @available(tvOS 12.0, *)
  optional func didHintFocusMovement(_ hint: UIFocusMovementHint)
}

@available(iOS 11.0, tvOS 11.0, *)
extension UIFocusItem {
  @available(iOS 11.0, tvOS 11.0, *)
  var isFocused: Bool { get }
}
@available(tvOS 12.0, *)
protocol UIFocusItemContainer : NSObjectProtocol {
  var coordinateSpace: UICoordinateSpace { get }
  func focusItems(in rect: CGRect) -> [UIFocusItem]
}
@available(tvOS 12.0, *)
protocol UIFocusItemScrollableContainer : UIFocusItemContainer {
  var contentOffset: CGPoint { get set }
  var contentSize: CGSize { get }
  var visibleSize: CGSize { get }
}
@available(tvOS 9.0, *)
class UIFocusUpdateContext : NSObject {
  @available(tvOS 10.0, *)
  weak var previouslyFocusedItem: @sil_weak UIFocusItem? { get }
  @available(tvOS 10.0, *)
  weak var nextFocusedItem: @sil_weak UIFocusItem? { get }
  weak var previouslyFocusedView: @sil_weak UIView? { get }
  weak var nextFocusedView: @sil_weak UIView? { get }
  var focusHeading: UIFocusHeading { get }
}
extension UIFocusSystem {
  @available(tvOS 11.0, *)
  class let didUpdateNotification: NSNotification.Name
  @available(tvOS 11.0, *)
  class let movementDidFailNotification: NSNotification.Name
  @available(tvOS 11.0, *)
  class let focusUpdateContextUserInfoKey: String
  @available(tvOS 11.0, *)
  class let animationCoordinatorUserInfoKey: String
}
extension UIFocusSoundIdentifier {
  @available(tvOS 11.0, *)
  static let none: UIFocusSoundIdentifier
  @available(tvOS 11.0, *)
  static let `default`: UIFocusSoundIdentifier
}
