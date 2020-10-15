
@available(iOS 8.0, *)
class HKQuantitySample : HKSample {
  @NSCopying var quantityType: HKQuantityType { get }
  @NSCopying var quantity: HKQuantity { get }
  @available(iOS 12.0, *)
  var count: Int { get }
  convenience init(type quantityType: HKQuantityType, quantity: HKQuantity, start startDate: Date, end endDate: Date)
  convenience init(type quantityType: HKQuantityType, quantity: HKQuantity, start startDate: Date, end endDate: Date, metadata: [String : Any]?)
  @available(iOS 9.0, *)
  convenience init(type quantityType: HKQuantityType, quantity: HKQuantity, start startDate: Date, end endDate: Date, device: HKDevice?, metadata: [String : Any]?)
}
@available(iOS 8.0, *)
let HKPredicateKeyPathQuantity: String
@available(iOS 13.0, *)
let HKPredicateKeyPathCount: String
