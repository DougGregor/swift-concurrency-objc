
@available(iOS 8.0, *)
class HKCategorySample : HKSample {
  var categoryType: HKCategoryType { get }
  var value: Int { get }
  convenience init(type: HKCategoryType, value: Int, start startDate: Date, end endDate: Date, metadata: [String : Any]?)
  convenience init(type: HKCategoryType, value: Int, start startDate: Date, end endDate: Date)
  @available(iOS 9.0, *)
  convenience init(type: HKCategoryType, value: Int, start startDate: Date, end endDate: Date, device: HKDevice?, metadata: [String : Any]?)
}
@available(iOS 8.0, *)
let HKPredicateKeyPathCategoryValue: String
