
protocol GKRandom {
  func nextInt() -> Int
  func nextInt(upperBound: Int) -> Int
  func nextUniform() -> Float
  func nextBool() -> Bool
}
@available(iOS 9.0, *)
class GKRandomSource : NSObject, GKRandom, NSSecureCoding, NSCopying {
  class func sharedRandom() -> GKRandomSource
  func arrayByShufflingObjects(in array: [Any]) -> [Any]
}
extension NSArray {
  func shuffled(using randomSource: GKRandomSource) -> [Any]
  func shuffled() -> [Any]
}
@available(iOS 9.0, *)
class GKARC4RandomSource : GKRandomSource {
  var seed: Data
  init(seed: Data)
  func dropValues(_ count: Int)
}
@available(iOS 9.0, *)
class GKLinearCongruentialRandomSource : GKRandomSource {
  var seed: UInt64
  init(seed: UInt64)
}
@available(iOS 9.0, *)
class GKMersenneTwisterRandomSource : GKRandomSource {
  var seed: UInt64
  init(seed: UInt64)
}
