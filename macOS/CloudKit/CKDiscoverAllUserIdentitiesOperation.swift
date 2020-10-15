
@available(macOS 10.12, *)
class CKDiscoverAllUserIdentitiesOperation : CKOperation {
  var userIdentityDiscoveredBlock: ((CKUserIdentity) -> Void)?
  var discoverAllUserIdentitiesCompletionBlock: ((Error?) -> Void)?
}
