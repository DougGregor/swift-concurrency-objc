
@available(watchOS 2.0, *)
class HKSourceQuery : HKQuery {
  init(sampleType: HKSampleType, samplePredicate objectPredicate: NSPredicate?, completionHandler: @escaping (HKSourceQuery, Set<HKSource>?, Error?) -> Void)
}
