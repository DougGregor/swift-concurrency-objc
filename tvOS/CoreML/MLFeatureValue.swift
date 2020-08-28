
@available(tvOS 11.0, *)
class MLFeatureValue : NSObject, NSCopying, NSSecureCoding {
  var type: MLFeatureType { get }
  var isUndefined: Bool { get }
  var int64Value: Int64 { get }
  var doubleValue: Double { get }
  var stringValue: String { get }
  var multiArrayValue: MLMultiArray? { get }
  var dictionaryValue: [AnyHashable : NSNumber] { get }
  var imageBufferValue: CVPixelBuffer? { get }
  @available(tvOS 12.0, *)
  var sequenceValue: MLSequence? { get }
  convenience init(int64 value: Int64)
  convenience init(double value: Double)
  convenience init(string value: String)
  convenience init(multiArray value: MLMultiArray)
  convenience init(pixelBuffer value: CVPixelBuffer)
  @available(tvOS 12.0, *)
  convenience init(sequence: MLSequence)
  convenience init(undefined type: MLFeatureType)
  convenience init(dictionary value: [AnyHashable : NSNumber]) throws
  func isEqual(to value: MLFeatureValue) -> Bool
}
