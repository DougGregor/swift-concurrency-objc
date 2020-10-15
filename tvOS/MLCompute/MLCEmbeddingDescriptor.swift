
@available(tvOS 14.0, *)
class MLCEmbeddingDescriptor : NSObject, NSCopying {
  var __embeddingCount: NSNumber { get }
  var __embeddingDimension: NSNumber { get }
  var __paddingIndex: NSNumber? { get }
  var __maximumNorm: NSNumber? { get }
  var __pNorm: NSNumber? { get }
  var scalesGradientByFrequency: Bool { get }
  convenience init?(__embeddingCount embeddingCount: NSNumber, embeddingDimension: NSNumber)
  convenience init?(__embeddingCount embeddingCount: NSNumber, embeddingDimension: NSNumber, paddingIndex: NSNumber?, maximumNorm: NSNumber?, pNorm: NSNumber?, scalesGradientByFrequency: Bool)
}

@available(macOS 11.0, iOS 14.0, tvOS 14.0, *)
extension MLCEmbeddingDescriptor {
  @inlinable var embeddingCount: Int { get }
  @inlinable var embeddingDimension: Int { get }
  @inlinable var paddingIndex: Int? { get }
  @inlinable var maximumNorm: Float? { get }
  @inlinable var pNorm: Float? { get }
  @inlinable convenience init?(embeddingCount: Int, embeddingDimension: Int)
  @inlinable convenience init?(embeddingCount: Int, embeddingDimension: Int, paddingIndex: Int?, maximumNorm: Float?, pNorm: Float?, scalesGradientByFrequency: Bool)
}
