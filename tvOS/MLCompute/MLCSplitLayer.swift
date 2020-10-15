
@available(tvOS 14.0, *)
class MLCSplitLayer : MLCLayer {
  var dimension: Int { get }
  var splitCount: Int { get }
  var __splitSectionLengths: [NSNumber]? { get }
  convenience init(splitCount: Int, dimension: Int)
  convenience init(__splitSectionLengths splitSectionLengths: [NSNumber], dimension: Int)
}

@available(macOS 11.0, iOS 14, tvOS 14, *)
extension MLCSplitLayer {
  @inlinable var splitSectionLengths: [Int]? { get }
  @inlinable convenience init(splitSectionLengths: [Int], dimension: Int)
}
