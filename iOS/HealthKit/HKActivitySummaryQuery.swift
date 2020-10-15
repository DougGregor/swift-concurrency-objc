
@available(iOS 9.3, *)
class HKActivitySummaryQuery : HKQuery {
  var updateHandler: ((HKActivitySummaryQuery, [HKActivitySummary]?, Error?) -> Void)?
  init(predicate: NSPredicate?, resultsHandler handler: @escaping (HKActivitySummaryQuery, [HKActivitySummary]?, Error?) -> Void)
}
