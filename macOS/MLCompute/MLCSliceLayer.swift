
@available(macOS 11.0, *)
class MLCSliceLayer : MLCLayer {
  var __start: [NSNumber] { get }
  var __end: [NSNumber] { get }
  var __stride: [NSNumber]? { get }
  convenience init?(__start start: [NSNumber], end: [NSNumber], stride: [NSNumber]?)
}

@available(macOS 11.0, iOS 14, tvOS 14, *)
extension MLCSliceLayer {
  @inlinable var start: [Int] { get }
  @inlinable var end: [Int] { get }
  @inlinable var stride: [Int]? { get }
  @inlinable convenience init?(start: [Int], end: [Int], stride: [Int]?)
}
