
@available(tvOS 14.0, *)
class MLCPaddingLayer : MLCLayer, NSCopying {
  var paddingType: MLCPaddingType { get }
  var paddingLeft: Int { get }
  var paddingRight: Int { get }
  var paddingTop: Int { get }
  var paddingBottom: Int { get }
  var constantValue: Float { get }
  convenience init(__reflectionPadding padding: [NSNumber])
  convenience init(__symmetricPadding padding: [NSNumber])
  convenience init(__zeroPadding padding: [NSNumber])
  convenience init(__constantPadding padding: [NSNumber], constantValue: Float)
}

@available(macOS 11.0, iOS 14, tvOS 14, *)
extension MLCPaddingLayer {
  @inlinable convenience init(reflectionPadding: [Int])
  @inlinable convenience init(symmetricPadding: [Int])
  @inlinable convenience init(zeroPadding: [Int])
  @inlinable convenience init(constantPadding: [Int], constantValue: Float)
}
