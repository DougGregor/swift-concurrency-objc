
@available(macOS 10.11, *)
class NSLayoutAnchor<AnchorType> : NSObject where AnchorType : AnyObject {
  func constraint(equalTo anchor: NSLayoutAnchor<AnchorType>) -> NSLayoutConstraint
  func constraint(greaterThanOrEqualTo anchor: NSLayoutAnchor<AnchorType>) -> NSLayoutConstraint
  func constraint(lessThanOrEqualTo anchor: NSLayoutAnchor<AnchorType>) -> NSLayoutConstraint
  func constraint(equalTo anchor: NSLayoutAnchor<AnchorType>, constant c: CGFloat) -> NSLayoutConstraint
  func constraint(greaterThanOrEqualTo anchor: NSLayoutAnchor<AnchorType>, constant c: CGFloat) -> NSLayoutConstraint
  func constraint(lessThanOrEqualTo anchor: NSLayoutAnchor<AnchorType>, constant c: CGFloat) -> NSLayoutConstraint
  @available(macOS 10.12, *)
  var name: String { get }
  @available(macOS 10.12, *)
  weak var item: @sil_weak AnyObject? { get }
  @available(macOS 10.12, *)
  var hasAmbiguousLayout: Bool { get }
  @available(macOS 10.12, *)
  var constraintsAffectingLayout: [NSLayoutConstraint] { get }
}
@available(macOS 10.11, *)
class NSLayoutXAxisAnchor : NSLayoutAnchor<NSLayoutXAxisAnchor> {
  @available(macOS 10.12, *)
  func anchorWithOffset(to otherAnchor: NSLayoutXAxisAnchor) -> NSLayoutDimension
  @available(macOS 11.0, *)
  func constraint(equalToSystemSpacingAfter anchor: NSLayoutXAxisAnchor, multiplier: CGFloat) -> NSLayoutConstraint
  @available(macOS 11.0, *)
  func constraint(greaterThanOrEqualToSystemSpacingAfter anchor: NSLayoutXAxisAnchor, multiplier: CGFloat) -> NSLayoutConstraint
  @available(macOS 11.0, *)
  func constraint(lessThanOrEqualToSystemSpacingAfter anchor: NSLayoutXAxisAnchor, multiplier: CGFloat) -> NSLayoutConstraint
}
@available(macOS 10.11, *)
class NSLayoutYAxisAnchor : NSLayoutAnchor<NSLayoutYAxisAnchor> {
  @available(macOS 10.12, *)
  func anchorWithOffset(to otherAnchor: NSLayoutYAxisAnchor) -> NSLayoutDimension
  @available(macOS 11.0, *)
  func constraint(equalToSystemSpacingBelow anchor: NSLayoutYAxisAnchor, multiplier: CGFloat) -> NSLayoutConstraint
  @available(macOS 11.0, *)
  func constraint(greaterThanOrEqualToSystemSpacingBelow anchor: NSLayoutYAxisAnchor, multiplier: CGFloat) -> NSLayoutConstraint
  @available(macOS 11.0, *)
  func constraint(lessThanOrEqualToSystemSpacingBelow anchor: NSLayoutYAxisAnchor, multiplier: CGFloat) -> NSLayoutConstraint
}
@available(macOS 10.11, *)
class NSLayoutDimension : NSLayoutAnchor<NSLayoutDimension> {
  func constraint(equalToConstant c: CGFloat) -> NSLayoutConstraint
  func constraint(greaterThanOrEqualToConstant c: CGFloat) -> NSLayoutConstraint
  func constraint(lessThanOrEqualToConstant c: CGFloat) -> NSLayoutConstraint
  func constraint(equalTo anchor: NSLayoutDimension, multiplier m: CGFloat) -> NSLayoutConstraint
  func constraint(greaterThanOrEqualTo anchor: NSLayoutDimension, multiplier m: CGFloat) -> NSLayoutConstraint
  func constraint(lessThanOrEqualTo anchor: NSLayoutDimension, multiplier m: CGFloat) -> NSLayoutConstraint
  func constraint(equalTo anchor: NSLayoutDimension, multiplier m: CGFloat, constant c: CGFloat) -> NSLayoutConstraint
  func constraint(greaterThanOrEqualTo anchor: NSLayoutDimension, multiplier m: CGFloat, constant c: CGFloat) -> NSLayoutConstraint
  func constraint(lessThanOrEqualTo anchor: NSLayoutDimension, multiplier m: CGFloat, constant c: CGFloat) -> NSLayoutConstraint
}
