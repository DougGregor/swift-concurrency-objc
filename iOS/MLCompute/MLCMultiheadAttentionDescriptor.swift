
@available(iOS 14.0, *)
class MLCMultiheadAttentionDescriptor : NSObject, NSCopying {
  var modelDimension: Int { get }
  var keyDimension: Int { get }
  var valueDimension: Int { get }
  var headCount: Int { get }
  var dropout: Float { get }
  var hasBiases: Bool { get }
  var hasAttentionBiases: Bool { get }
  var addsZeroAttention: Bool { get }
  convenience init?(modelDimension: Int, keyDimension: Int, valueDimension: Int, headCount: Int, dropout: Float, hasBiases: Bool, hasAttentionBiases: Bool, addsZeroAttention: Bool)
  convenience init(modelDimension: Int, headCount: Int)
}
