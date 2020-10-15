
extension NSLayoutConstraint {
  @available(macOS 10.7, *)
  struct Priority : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(_ rawValue: Float)
    init(rawValue: Float)
    let rawValue: Float
  }
  enum Orientation : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case horizontal
    case vertical
  }
  enum Relation : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case lessThanOrEqual
    case equal
    case greaterThanOrEqual
  }
  enum Attribute : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case left
    case right
    case top
    case bottom
    case leading
    case trailing
    case width
    case height
    case centerX
    case centerY
    case lastBaseline
    @available(macOS 10.11, *)
    case firstBaseline
    case notAnAttribute
  }
  struct FormatOptions : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var alignAllLeft: NSLayoutConstraint.FormatOptions { get }
    static var alignAllRight: NSLayoutConstraint.FormatOptions { get }
    static var alignAllTop: NSLayoutConstraint.FormatOptions { get }
    static var alignAllBottom: NSLayoutConstraint.FormatOptions { get }
    static var alignAllLeading: NSLayoutConstraint.FormatOptions { get }
    static var alignAllTrailing: NSLayoutConstraint.FormatOptions { get }
    static var alignAllCenterX: NSLayoutConstraint.FormatOptions { get }
    static var alignAllCenterY: NSLayoutConstraint.FormatOptions { get }
    static var alignAllLastBaseline: NSLayoutConstraint.FormatOptions { get }
    @available(macOS 10.11, *)
    static var alignAllFirstBaseline: NSLayoutConstraint.FormatOptions { get }
    static var alignmentMask: NSLayoutConstraint.FormatOptions { get }
    static var directionLeadingToTrailing: NSLayoutConstraint.FormatOptions { get }
    static var directionLeftToRight: NSLayoutConstraint.FormatOptions { get }
    static var directionRightToLeft: NSLayoutConstraint.FormatOptions { get }
    static var directionMask: NSLayoutConstraint.FormatOptions { get }
  }
}
extension NSLayoutConstraint.Priority {
  @available(macOS 10.7, *)
  static let required: NSLayoutConstraint.Priority
  @available(macOS 10.7, *)
  static let defaultHigh: NSLayoutConstraint.Priority
  @available(macOS 10.7, *)
  static let dragThatCanResizeWindow: NSLayoutConstraint.Priority
  @available(macOS 10.7, *)
  static let windowSizeStayPut: NSLayoutConstraint.Priority
  @available(macOS 10.7, *)
  static let dragThatCannotResizeWindow: NSLayoutConstraint.Priority
  @available(macOS 10.7, *)
  static let defaultLow: NSLayoutConstraint.Priority
  @available(macOS 10.7, *)
  static let fittingSizeCompression: NSLayoutConstraint.Priority
}
@available(macOS 10.7, *)
class NSLayoutConstraint : NSObject {
  @available(macOS 10.7, *)
  class func constraints(withVisualFormat format: String, options opts: NSLayoutConstraint.FormatOptions = [], metrics: [String : Any]?, views: [String : Any]) -> [NSLayoutConstraint]
  @available(macOS 10.7, *)
  convenience init(item view1: Any, attribute attr1: NSLayoutConstraint.Attribute, relatedBy relation: NSLayoutConstraint.Relation, toItem view2: Any?, attribute attr2: NSLayoutConstraint.Attribute, multiplier: CGFloat, constant c: CGFloat)
  var priority: NSLayoutConstraint.Priority
  var shouldBeArchived: Bool
  unowned(unsafe) var firstItem: @sil_unmanaged AnyObject? { get }
  unowned(unsafe) var secondItem: @sil_unmanaged AnyObject? { get }
  var firstAttribute: NSLayoutConstraint.Attribute { get }
  var secondAttribute: NSLayoutConstraint.Attribute { get }
  @available(macOS 10.12, *)
  @NSCopying var firstAnchor: NSLayoutAnchor<AnyObject> { get }
  @available(macOS 10.12, *)
  @NSCopying var secondAnchor: NSLayoutAnchor<AnyObject>? { get }
  var relation: NSLayoutConstraint.Relation { get }
  var multiplier: CGFloat { get }
  var constant: CGFloat
  @available(macOS 10.10, *)
  var isActive: Bool
  @available(macOS 10.10, *)
  class func activate(_ constraints: [NSLayoutConstraint])
  @available(macOS 10.10, *)
  class func deactivate(_ constraints: [NSLayoutConstraint])
}
extension NSLayoutConstraint {
  @available(macOS 10.7, *)
  var identifier: String?
}
extension NSLayoutConstraint : NSAnimatablePropertyContainer {
}
extension NSView {
  @available(macOS 10.11, *)
  var leadingAnchor: NSLayoutXAxisAnchor { get }
  @available(macOS 10.11, *)
  var trailingAnchor: NSLayoutXAxisAnchor { get }
  @available(macOS 10.11, *)
  var leftAnchor: NSLayoutXAxisAnchor { get }
  @available(macOS 10.11, *)
  var rightAnchor: NSLayoutXAxisAnchor { get }
  @available(macOS 10.11, *)
  var topAnchor: NSLayoutYAxisAnchor { get }
  @available(macOS 10.11, *)
  var bottomAnchor: NSLayoutYAxisAnchor { get }
  @available(macOS 10.11, *)
  var widthAnchor: NSLayoutDimension { get }
  @available(macOS 10.11, *)
  var heightAnchor: NSLayoutDimension { get }
  @available(macOS 10.11, *)
  var centerXAnchor: NSLayoutXAxisAnchor { get }
  @available(macOS 10.11, *)
  var centerYAnchor: NSLayoutYAxisAnchor { get }
  @available(macOS 10.11, *)
  var firstBaselineAnchor: NSLayoutYAxisAnchor { get }
  @available(macOS 10.11, *)
  var lastBaselineAnchor: NSLayoutYAxisAnchor { get }
  @available(macOS 10.7, *)
  var constraints: [NSLayoutConstraint] { get }
  @available(macOS 10.7, *)
  func addConstraint(_ constraint: NSLayoutConstraint)
  @available(macOS 10.7, *)
  func addConstraints(_ constraints: [NSLayoutConstraint])
  @available(macOS 10.7, *)
  func removeConstraint(_ constraint: NSLayoutConstraint)
  @available(macOS 10.7, *)
  func removeConstraints(_ constraints: [NSLayoutConstraint])
}
extension NSWindow {
  @available(macOS 10.7, *)
  func updateConstraintsIfNeeded()
  @available(macOS 10.7, *)
  func layoutIfNeeded()
}
extension NSView {
  @available(macOS 10.7, *)
  func updateConstraintsForSubtreeIfNeeded()
  @available(macOS 10.7, *)
  func updateConstraints()
  @available(macOS 10.7, *)
  var needsUpdateConstraints: Bool
}
extension NSView {
  @available(macOS 10.7, *)
  var translatesAutoresizingMaskIntoConstraints: Bool
  @available(macOS 10.7, *)
  class var requiresConstraintBasedLayout: Bool { get }
}
extension NSView {
  @available(macOS 10.7, *)
  func alignmentRect(forFrame frame: NSRect) -> NSRect
  @available(macOS 10.7, *)
  func frame(forAlignmentRect alignmentRect: NSRect) -> NSRect
  @available(macOS 10.7, *)
  var alignmentRectInsets: NSEdgeInsets { get }
  @available(macOS 10.11, *)
  var firstBaselineOffsetFromTop: CGFloat { get }
  @available(macOS 10.11, *)
  var lastBaselineOffsetFromBottom: CGFloat { get }
  @available(macOS 10.7, *)
  var baselineOffsetFromBottom: CGFloat { get }
  @available(macOS 10.7, *)
  var intrinsicContentSize: NSSize { get }
  @available(macOS 10.7, *)
  func invalidateIntrinsicContentSize()
  @available(macOS 10.7, *)
  func contentHuggingPriority(for orientation: NSLayoutConstraint.Orientation) -> NSLayoutConstraint.Priority
  @available(macOS 10.7, *)
  func setContentHuggingPriority(_ priority: NSLayoutConstraint.Priority, for orientation: NSLayoutConstraint.Orientation)
  @available(macOS 10.7, *)
  func contentCompressionResistancePriority(for orientation: NSLayoutConstraint.Orientation) -> NSLayoutConstraint.Priority
  @available(macOS 10.7, *)
  func setContentCompressionResistancePriority(_ priority: NSLayoutConstraint.Priority, for orientation: NSLayoutConstraint.Orientation)
  @available(macOS 10.15, *)
  var isHorizontalContentSizeConstraintActive: Bool
  @available(macOS 10.15, *)
  var isVerticalContentSizeConstraintActive: Bool
}
extension NSView {
  @available(macOS 10.11, *)
  class let noIntrinsicMetric: CGFloat
}
extension NSControl {
  @available(macOS 10.7, *)
  func invalidateIntrinsicContentSize(for cell: NSCell)
}
extension NSWindow {
  func anchorAttribute(for orientation: NSLayoutConstraint.Orientation) -> NSLayoutConstraint.Attribute
  func setAnchorAttribute(_ attr: NSLayoutConstraint.Attribute, for orientation: NSLayoutConstraint.Orientation)
}
extension NSView {
  @available(macOS 10.7, *)
  var fittingSize: NSSize { get }
}
extension NSView {
  @available(macOS 10.7, *)
  func constraintsAffectingLayout(for orientation: NSLayoutConstraint.Orientation) -> [NSLayoutConstraint]
  @available(macOS 10.7, *)
  var hasAmbiguousLayout: Bool { get }
  @available(macOS 10.7, *)
  func exerciseAmbiguityInLayout()
}
extension NSWindow {
  @available(macOS 10.7, *)
  func visualizeConstraints(_ constraints: [NSLayoutConstraint]?)
}
