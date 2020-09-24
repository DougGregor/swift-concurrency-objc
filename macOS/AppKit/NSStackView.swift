
extension NSStackView {
  @available(macOS 10.9, *)
  enum Gravity : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case top
    static var leading: NSStackView.Gravity { get }
    case center
    case bottom
    static var trailing: NSStackView.Gravity { get }
  }
  @available(macOS 10.11, *)
  enum Distribution : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case gravityAreas
    case fill
    case fillEqually
    case fillProportionally
    case equalSpacing
    case equalCentering
  }
  @available(macOS 10.9, *)
  struct VisibilityPriority : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(_ rawValue: Float)
    init(rawValue: Float)
    let rawValue: Float
  }
  @available(macOS 10.9, *)
  class let useDefaultSpacing: CGFloat
}
extension NSStackView.VisibilityPriority {
  @available(macOS 10.9, *)
  static let mustHold: NSStackView.VisibilityPriority
  @available(macOS 10.9, *)
  static let detachOnlyIfNecessary: NSStackView.VisibilityPriority
  @available(macOS 10.9, *)
  static let notVisible: NSStackView.VisibilityPriority
}
@available(macOS 10.9, *)
class NSStackView : NSView {
  convenience init(views: [NSView])
  weak var delegate: @sil_weak NSStackViewDelegate?
  var orientation: NSUserInterfaceLayoutOrientation
  var alignment: NSLayoutConstraint.Attribute
  var edgeInsets: NSEdgeInsets
  @available(macOS 10.11, *)
  var distribution: NSStackView.Distribution
  var spacing: CGFloat
  func setCustomSpacing(_ spacing: CGFloat, after view: NSView)
  func customSpacing(after view: NSView) -> CGFloat
  @available(macOS 10.11, *)
  var detachesHiddenViews: Bool
  @available(macOS 10.11, *)
  var arrangedSubviews: [NSView] { get }
  @available(macOS 10.11, *)
  func addArrangedSubview(_ view: NSView)
  @available(macOS 10.11, *)
  func insertArrangedSubview(_ view: NSView, at index: Int)
  @available(macOS 10.11, *)
  func removeArrangedSubview(_ view: NSView)
  var detachedViews: [NSView] { get }
  func setVisibilityPriority(_ priority: NSStackView.VisibilityPriority, for view: NSView)
  func visibilityPriority(for view: NSView) -> NSStackView.VisibilityPriority
  func clippingResistancePriority(for orientation: NSLayoutConstraint.Orientation) -> NSLayoutConstraint.Priority
  func setClippingResistancePriority(_ clippingResistancePriority: NSLayoutConstraint.Priority, for orientation: NSLayoutConstraint.Orientation)
  func huggingPriority(for orientation: NSLayoutConstraint.Orientation) -> NSLayoutConstraint.Priority
  func setHuggingPriority(_ huggingPriority: NSLayoutConstraint.Priority, for orientation: NSLayoutConstraint.Orientation)
}
protocol NSStackViewDelegate : NSObjectProtocol {
  @available(macOS 10.9, *)
  optional func stackView(_ stackView: NSStackView, willDetach views: [NSView])
  @available(macOS 10.9, *)
  @asyncHandler optional func stackView(_ stackView: NSStackView, didReattach views: [NSView])
}
extension NSStackView {
  func addView(_ view: NSView, in gravity: NSStackView.Gravity)
  func insertView(_ view: NSView, at index: Int, in gravity: NSStackView.Gravity)
  func removeView(_ view: NSView)
  func views(in gravity: NSStackView.Gravity) -> [NSView]
  func setViews(_ views: [NSView], in gravity: NSStackView.Gravity)
  var views: [NSView] { get }
}
extension NSStackView {
  @available(macOS, introduced: 10.9, deprecated: 10.11, message: "Set -distribution to NSStackViewDistributionEqualSpacing instead.")
  var hasEqualSpacing: Bool
}
