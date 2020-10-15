
@available(macOS 10.10, *)
class CKFetchSubscriptionsOperation : CKDatabaseOperation {
  class func fetchAllSubscriptionsOperation() -> Self
  convenience init(__subscriptionIDs subscriptionIDs: [String])
  var __subscriptionIDs: [String]?
  var __fetchSubscriptionCompletionBlock: (([String : CKSubscription]?, Error?) -> Void)?
}

@available(macOS 10.10, iOS 8.0, watchOS 6.0, *)
@nonobjc extension CKFetchSubscriptionsOperation {
  @available(swift 4.2)
  convenience init(subscriptionIDs: [CKSubscription.ID])
  @available(swift 4.2)
  var subscriptionIDs: [CKSubscription.ID]?
  @available(swift 4.2)
  var fetchSubscriptionCompletionBlock: (([CKSubscription.ID : CKSubscription]?, Error?) -> Void)?
}
