
@available(iOS 9.0, *)
class UIRegion : NSObject, NSCopying, NSCoding {
  class var infinite: UIRegion { get }
  init(radius: CGFloat)
  init(size: CGSize)
  func inverse() -> Self
  func byUnion(with region: UIRegion) -> Self
  func byDifference(from region: UIRegion) -> Self
  func byIntersection(with region: UIRegion) -> Self
  func contains(_ point: CGPoint) -> Bool
}
