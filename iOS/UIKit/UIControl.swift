
extension UIControl {
  struct Event : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var touchDown: UIControl.Event { get }
    static var touchDownRepeat: UIControl.Event { get }
    static var touchDragInside: UIControl.Event { get }
    static var touchDragOutside: UIControl.Event { get }
    static var touchDragEnter: UIControl.Event { get }
    static var touchDragExit: UIControl.Event { get }
    static var touchUpInside: UIControl.Event { get }
    static var touchUpOutside: UIControl.Event { get }
    static var touchCancel: UIControl.Event { get }
    static var valueChanged: UIControl.Event { get }
    @available(iOS 9.0, *)
    static var primaryActionTriggered: UIControl.Event { get }
    @available(iOS 14.0, *)
    static var menuActionTriggered: UIControl.Event { get }
    static var editingDidBegin: UIControl.Event { get }
    static var editingChanged: UIControl.Event { get }
    static var editingDidEnd: UIControl.Event { get }
    static var editingDidEndOnExit: UIControl.Event { get }
    static var allTouchEvents: UIControl.Event { get }
    static var allEditingEvents: UIControl.Event { get }
    static var applicationReserved: UIControl.Event { get }
    static var systemReserved: UIControl.Event { get }
    static var allEvents: UIControl.Event { get }
  }
  enum ContentVerticalAlignment : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case center
    case top
    case bottom
    case fill
  }
  enum ContentHorizontalAlignment : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case center
    case left
    case right
    case fill
    @available(iOS 11.0, *)
    case leading
    @available(iOS 11.0, *)
    case trailing
  }
  struct State : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var normal: UIControl.State { get }
    static var highlighted: UIControl.State { get }
    static var disabled: UIControl.State { get }
    static var selected: UIControl.State { get }
    @available(iOS 9.0, *)
    static var focused: UIControl.State { get }
    static var application: UIControl.State { get }
    static var reserved: UIControl.State { get }
  }
}
@available(iOS 2.0, *)
class UIControl : UIView {
  @available(iOS 14.0, *)
  convenience init(frame: CGRect, primaryAction: UIAction?)
  var isEnabled: Bool
  var isSelected: Bool
  var isHighlighted: Bool
  var contentVerticalAlignment: UIControl.ContentVerticalAlignment
  var contentHorizontalAlignment: UIControl.ContentHorizontalAlignment
  var effectiveContentHorizontalAlignment: UIControl.ContentHorizontalAlignment { get }
  var state: UIControl.State { get }
  var isTracking: Bool { get }
  var isTouchInside: Bool { get }
  func beginTracking(_ touch: UITouch, with event: UIEvent?) -> Bool
  func continueTracking(_ touch: UITouch, with event: UIEvent?) -> Bool
  func endTracking(_ touch: UITouch?, with event: UIEvent?)
  func cancelTracking(with event: UIEvent?)
  func addTarget(_ target: Any?, action: Selector, for controlEvents: UIControl.Event)
  func removeTarget(_ target: Any?, action: Selector?, for controlEvents: UIControl.Event)
  @available(iOS 14.0, *)
  func addAction(_ action: UIAction, for controlEvents: UIControl.Event)
  @available(iOS 14.0, *)
  func removeAction(_ action: UIAction, for controlEvents: UIControl.Event)
  @available(iOS 14.0, *)
  func removeAction(identifiedBy actionIdentifier: UIAction.Identifier, for controlEvents: UIControl.Event)
  var allTargets: Set<AnyHashable> { get }
  var allControlEvents: UIControl.Event { get }
  func actions(forTarget target: Any?, forControlEvent controlEvent: UIControl.Event) -> [String]?
  @available(iOS 14.0, *)
  func __enumerateEventHandlers(_ iterator: (UIAction?, Any?, Selector?, UIControl.Event, UnsafeMutablePointer<ObjCBool>) -> Void)
  func sendAction(_ action: Selector, to target: Any?, for event: UIEvent?)
  @available(iOS 14.0, *)
  func sendAction(_ action: UIAction)
  func sendActions(for controlEvents: UIControl.Event)
  @available(iOS 14.0, *)
  var contextMenuInteraction: UIContextMenuInteraction? { get }
  @available(iOS 14.0, *)
  var isContextMenuInteractionEnabled: Bool
  @available(iOS 14.0, *)
  var showsMenuAsPrimaryAction: Bool
  @available(iOS 14.0, *)
  func menuAttachmentPoint(for configuration: UIContextMenuConfiguration) -> CGPoint
}

extension UIControl {
  @available(iOS 14.0, *)
  func enumerateEventHandlers(_ iterator: (UIAction?, (Any?, Selector)?, UIControl.Event, inout Bool) -> Void)
}
extension UIControl : UIContextMenuInteractionDelegate {
}
