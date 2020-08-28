
var HKAnchoredObjectQueryNoAnchor: Int32 { get }
@available(iOS 8.0, *)
class HKAnchoredObjectQuery : HKQuery {
  @available(iOS 9.0, *)
  var updateHandler: ((HKAnchoredObjectQuery, [HKSample]?, [HKDeletedObject]?, HKQueryAnchor?, Error?) -> Void)?
  @available(iOS 9.0, *)
  init(type: HKSampleType, predicate: NSPredicate?, anchor: HKQueryAnchor?, limit: Int, resultsHandler handler: @escaping (HKAnchoredObjectQuery, [HKSample]?, [HKDeletedObject]?, HKQueryAnchor?, Error?) -> Void)
  @available(iOS, introduced: 8.0, deprecated: 9.0)
  init(type: HKSampleType, predicate: NSPredicate?, anchor: Int, limit: Int, completionHandler handler: @escaping (HKAnchoredObjectQuery, [HKSample]?, Int, Error?) -> Void)
}
