
@available(macOS 10.10, *)
class CKModifySubscriptionsOperation : CKDatabaseOperation {
  var subscriptionsToSave: [CKSubscription]?
  var __subscriptionIDsToDelete: [String]?
  var __modifySubscriptionsCompletionBlock: (([CKSubscription]?, [String]?, Error?) -> Void)?
}

@available(macOS 10.10, iOS 8.0, watchOS 6.0, *)
@nonobjc extension CKModifySubscriptionsOperation {
  @available(swift 4.2)
  var subscriptionIDsToDelete: [CKSubscription.ID]?
  @available(swift 4.2)
  var modifySubscriptionsCompletionBlock: (([CKSubscription]?, [CKSubscription.ID]?, Error?) -> Void)?
}

@available(macOS 10.10, iOS 8.0, watchOS 6.0, *)
@nonobjc extension CKModifySubscriptionsOperation {
  @available(swift 4.2)
  convenience init(subscriptionsToSave: [CKSubscription]? = nil, subscriptionIDsToDelete: [CKSubscription.ID]? = nil)
}
