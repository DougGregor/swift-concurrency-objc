
@available(iOS 10.0, *)
class CKDiscoverAllUserIdentitiesOperation : CKOperation {
  var userIdentityDiscoveredBlock: ((CKUserIdentity) -> Void)?
  var discoverAllUserIdentitiesCompletionBlock: ((Error?) -> Void)?
}
