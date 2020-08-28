
struct UILayoutPriority : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(_ rawValue: Float)
  init(rawValue: Float)
  let rawValue: Float
}

extension UILayoutPriority : _UIKitNumericRawRepresentable {
}
extension UILayoutPriority {
  @available(tvOS 6.0, *)
  static let required: UILayoutPriority
  @available(tvOS 6.0, *)
  static let defaultHigh: UILayoutPriority
  static let dragThatCanResizeScene: UILayoutPriority
  static let sceneSizeStayPut: UILayoutPriority
  static let dragThatCannotResizeScene: UILayoutPriority
  @available(tvOS 6.0, *)
  static let defaultLow: UILayoutPriority
  @available(tvOS 6.0, *)
  static let fittingSizeLevel: UILayoutPriority
}
var NSLAYOUTCONSTRAINT_H: Int32 { get }
extension NSLayoutConstraint {
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
    @available(tvOS 8.0, *)
    case firstBaseline
    @available(tvOS 8.0, *)
    case leftMargin
    @available(tvOS 8.0, *)
    case rightMargin
    @available(tvOS 8.0, *)
    case topMargin
    @available(tvOS 8.0, *)
    case bottomMargin
    @available(tvOS 8.0, *)
    case leadingMargin
    @available(tvOS 8.0, *)
    case trailingMargin
    @available(tvOS 8.0, *)
    case centerXWithinMargins
    @available(tvOS 8.0, *)
    case centerYWithinMargins
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
    @available(tvOS 8.0, *)
    static var alignAllFirstBaseline: NSLayoutConstraint.FormatOptions { get }
    static var alignmentMask: NSLayoutConstraint.FormatOptions { get }
    static var directionLeadingToTrailing: NSLayoutConstraint.FormatOptions { get }
    static var directionLeftToRight: NSLayoutConstraint.FormatOptions { get }
    static var directionRightToLeft: NSLayoutConstraint.FormatOptions { get }
    static var directionMask: NSLayoutConstraint.FormatOptions { get }
    @available(tvOS 11.0, *)
    static var spacingBaselineToBaseline: NSLayoutConstraint.FormatOptions { get }
    @available(tvOS 11.0, *)
    static var spacingMask: NSLayoutConstraint.FormatOptions { get }
  }
}
@available(tvOS 9.0, *)
class NSLayoutConstraint : NSObject {
  @available(tvOS 9.0, *)
  class func constraints(withVisualFormat format: String, options opts: NSLayoutConstraint.FormatOptions = [], metrics: [String : Any]?, views: [String : Any]) -> [NSLayoutConstraint]
  @available(tvOS 9.0, *)
  convenience init(item view1: Any, attribute attr1: NSLayoutConstraint.Attribute, relatedBy relation: NSLayoutConstraint.Relation, toItem view2: Any?, attribute attr2: NSLayoutConstraint.Attribute, multiplier: CGFloat, constant c: CGFloat)
  var priority: UILayoutPriority
  var shouldBeArchived: Bool
  unowned(unsafe) var firstItem: @sil_unmanaged AnyObject? { get }
  unowned(unsafe) var secondItem: @sil_unmanaged AnyObject? { get }
  var firstAttribute: NSLayoutConstraint.Attribute { get }
  var secondAttribute: NSLayoutConstraint.Attribute { get }
  @available(tvOS 10.0, *)
  @NSCopying var firstAnchor: NSLayoutAnchor<AnyObject> { get }
  @available(tvOS 10.0, *)
  @NSCopying var secondAnchor: NSLayoutAnchor<AnyObject>? { get }
  var relation: NSLayoutConstraint.Relation { get }
  var multiplier: CGFloat { get }
  var constant: CGFloat
  @available(tvOS 8.0, *)
  var isActive: Bool
  @available(tvOS 8.0, *)
  class func activate(_ constraints: [NSLayoutConstraint])
  @available(tvOS 8.0, *)
  class func deactivate(_ constraints: [NSLayoutConstraint])
}
extension NSLayoutConstraint {
  @available(tvOS 7.0, *)
  var identifier: String?
}
protocol UILayoutSupport : NSObjectProtocol {
  var length: CGFloat { get }
  @available(tvOS 9.0, *)
  var topAnchor: NSLayoutYAxisAnchor { get }
  @available(tvOS 9.0, *)
  var bottomAnchor: NSLayoutYAxisAnchor { get }
  @available(tvOS 9.0, *)
  var heightAnchor: NSLayoutDimension { get }
}
