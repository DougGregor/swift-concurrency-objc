
protocol GKRandom {
  func nextInt() -> Int
  func nextInt(upperBound: Int) -> Int
  func nextUniform() -> Float
  func nextBool() -> Bool
}
@available(macOS 10.11, *)
class GKRandomSource : NSObject, GKRandom, NSSecureCoding, NSCopying {
  class func sharedRandom() -> GKRandomSource
  func arrayByShufflingObjects(in array: [Any]) -> [Any]
}
extension NSArray {
  func shuffled(using randomSource: GKRandomSource) -> [Any]
  func shuffled() -> [Any]
}
@available(macOS 10.11, *)
class GKARC4RandomSource : GKRandomSource {
  var seed: Data
  init(seed: Data)
  func dropValues(_ count: Int)
}
@available(macOS 10.11, *)
class GKLinearCongruentialRandomSource : GKRandomSource {
  var seed: UInt64
  init(seed: UInt64)
}
@available(macOS 10.11, *)
class GKMersenneTwisterRandomSource : GKRandomSource {
  var seed: UInt64
  init(seed: UInt64)
}
