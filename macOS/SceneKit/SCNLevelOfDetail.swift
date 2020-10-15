
@available(macOS 10.9, *)
class SCNLevelOfDetail : NSObject, NSCopying, NSSecureCoding {
  convenience init(geometry: SCNGeometry?, screenSpaceRadius radius: CGFloat)
  convenience init(geometry: SCNGeometry?, worldSpaceDistance distance: CGFloat)
  var geometry: SCNGeometry? { get }
  var screenSpaceRadius: CGFloat { get }
  var worldSpaceDistance: CGFloat { get }
}
