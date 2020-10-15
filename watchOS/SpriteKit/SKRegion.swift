
@available(watchOS 1.0, *)
class SKRegion : NSObject, NSCopying, NSSecureCoding {
  var path: CGPath? { get }
  class func infinite() -> Self
  init(radius: Float)
  init(size: CGSize)
  init(path: CGPath)
  func inverse() -> Self
  func byUnion(with region: SKRegion) -> Self
  func byDifference(from region: SKRegion) -> Self
  func byIntersection(with region: SKRegion) -> Self
  func contains(_ point: CGPoint) -> Bool
}
