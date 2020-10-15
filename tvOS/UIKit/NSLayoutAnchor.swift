
var NSLAYOUTANCHOR_H: Int32 { get }
@available(tvOS 9.0, *)
class NSLayoutAnchor<AnchorType> : NSObject where AnchorType : AnyObject {
  func constraint(equalTo anchor: NSLayoutAnchor<AnchorType>) -> NSLayoutConstraint
  func constraint(greaterThanOrEqualTo anchor: NSLayoutAnchor<AnchorType>) -> NSLayoutConstraint
  func constraint(lessThanOrEqualTo anchor: NSLayoutAnchor<AnchorType>) -> NSLayoutConstraint
  func constraint(equalTo anchor: NSLayoutAnchor<AnchorType>, constant c: CGFloat) -> NSLayoutConstraint
  func constraint(greaterThanOrEqualTo anchor: NSLayoutAnchor<AnchorType>, constant c: CGFloat) -> NSLayoutConstraint
  func constraint(lessThanOrEqualTo anchor: NSLayoutAnchor<AnchorType>, constant c: CGFloat) -> NSLayoutConstraint
}
@available(tvOS 9.0, *)
class NSLayoutXAxisAnchor : NSLayoutAnchor<NSLayoutXAxisAnchor> {
  @available(tvOS 10.0, *)
  func anchorWithOffset(to otherAnchor: NSLayoutXAxisAnchor) -> NSLayoutDimension
}
@available(tvOS 9.0, *)
class NSLayoutYAxisAnchor : NSLayoutAnchor<NSLayoutYAxisAnchor> {
  @available(tvOS 10.0, *)
  func anchorWithOffset(to otherAnchor: NSLayoutYAxisAnchor) -> NSLayoutDimension
}
@available(tvOS 9.0, *)
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
extension NSLayoutXAxisAnchor {
  @available(tvOS 11.0, *)
  func constraint(equalToSystemSpacingAfter anchor: NSLayoutXAxisAnchor, multiplier: CGFloat) -> NSLayoutConstraint
  @available(tvOS 11.0, *)
  func constraint(greaterThanOrEqualToSystemSpacingAfter anchor: NSLayoutXAxisAnchor, multiplier: CGFloat) -> NSLayoutConstraint
  @available(tvOS 11.0, *)
  func constraint(lessThanOrEqualToSystemSpacingAfter anchor: NSLayoutXAxisAnchor, multiplier: CGFloat) -> NSLayoutConstraint
}
extension NSLayoutYAxisAnchor {
  @available(tvOS 11.0, *)
  func constraint(equalToSystemSpacingBelow anchor: NSLayoutYAxisAnchor, multiplier: CGFloat) -> NSLayoutConstraint
  @available(tvOS 11.0, *)
  func constraint(greaterThanOrEqualToSystemSpacingBelow anchor: NSLayoutYAxisAnchor, multiplier: CGFloat) -> NSLayoutConstraint
  @available(tvOS 11.0, *)
  func constraint(lessThanOrEqualToSystemSpacingBelow anchor: NSLayoutYAxisAnchor, multiplier: CGFloat) -> NSLayoutConstraint
}
