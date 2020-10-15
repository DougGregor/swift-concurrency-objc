
var HKAnchoredObjectQueryNoAnchor: Int32 { get }
@available(watchOS 2.0, *)
class HKAnchoredObjectQuery : HKQuery {
  @available(watchOS 2.0, *)
  var updateHandler: ((HKAnchoredObjectQuery, [HKSample]?, [HKDeletedObject]?, HKQueryAnchor?, Error?) -> Void)?
  @available(watchOS 2.0, *)
  init(type: HKSampleType, predicate: NSPredicate?, anchor: HKQueryAnchor?, limit: Int, resultsHandler handler: @escaping (HKAnchoredObjectQuery, [HKSample]?, [HKDeletedObject]?, HKQueryAnchor?, Error?) -> Void)
  @available(watchOS, introduced: 2.0, deprecated: 2.0)
  init(type: HKSampleType, predicate: NSPredicate?, anchor: Int, limit: Int, completionHandler handler: @escaping (HKAnchoredObjectQuery, [HKSample]?, Int, Error?) -> Void)
}
