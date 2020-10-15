
@available(watchOS 2.0, *)
class HKQuantitySample : HKSample {
  @NSCopying var quantityType: HKQuantityType { get }
  @NSCopying var quantity: HKQuantity { get }
  @available(watchOS 5.0, *)
  var count: Int { get }
  convenience init(type quantityType: HKQuantityType, quantity: HKQuantity, start startDate: Date, end endDate: Date)
  convenience init(type quantityType: HKQuantityType, quantity: HKQuantity, start startDate: Date, end endDate: Date, metadata: [String : Any]?)
  @available(watchOS 2.0, *)
  convenience init(type quantityType: HKQuantityType, quantity: HKQuantity, start startDate: Date, end endDate: Date, device: HKDevice?, metadata: [String : Any]?)
}
@available(watchOS 2.0, *)
let HKPredicateKeyPathQuantity: String
@available(watchOS 6.0, *)
let HKPredicateKeyPathCount: String
