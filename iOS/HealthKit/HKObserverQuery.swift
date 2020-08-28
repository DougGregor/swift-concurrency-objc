
typealias HKObserverQueryCompletionHandler = () -> Void
@available(iOS 8.0, *)
class HKObserverQuery : HKQuery {
  init(sampleType: HKSampleType, predicate: NSPredicate?, updateHandler: @escaping (HKObserverQuery, @escaping HKObserverQueryCompletionHandler, Error?) -> Void)
}
