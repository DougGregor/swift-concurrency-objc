
@available(macOS 11.0, *)
class __PKFloatRange : NSObject, NSCopying {
  var lowerBound: CGFloat { get }
  var upperBound: CGFloat { get }
  init(lowerBound: CGFloat, upperBound: CGFloat)
}
