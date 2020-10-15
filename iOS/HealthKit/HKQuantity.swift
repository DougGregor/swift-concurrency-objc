
@available(iOS 8.0, *)
class HKQuantity : NSObject, NSSecureCoding, NSCopying {
  convenience init(unit: HKUnit, doubleValue value: Double)
  func `is`(compatibleWith unit: HKUnit) -> Bool
  func doubleValue(for unit: HKUnit) -> Double
  func compare(_ quantity: HKQuantity) -> ComparisonResult
}
