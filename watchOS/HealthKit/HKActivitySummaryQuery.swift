
@available(watchOS 2.2, *)
class HKActivitySummaryQuery : HKQuery {
  var updateHandler: ((HKActivitySummaryQuery, [HKActivitySummary]?, Error?) -> Void)?
  init(predicate: NSPredicate?, resultsHandler handler: @escaping (HKActivitySummaryQuery, [HKActivitySummary]?, Error?) -> Void)
}
