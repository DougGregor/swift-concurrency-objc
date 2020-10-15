
@available(iOS 13.0, *)
class MXHistogramBucket<UnitType> : NSObject, NSSecureCoding where UnitType : Unit {
  var bucketStart: Measurement<UnitType> { get }
  var bucketEnd: Measurement<UnitType> { get }
  var bucketCount: Int { get }
}
@available(iOS 13.0, *)
class MXHistogram<UnitType> : NSObject, NSSecureCoding where UnitType : Unit {
  var totalBucketCount: Int { get }
  var bucketEnumerator: NSEnumerator { get }
}
