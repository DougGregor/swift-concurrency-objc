
@available(tvOS 10.0, *)
class CKDiscoverUserIdentitiesOperation : CKOperation {
  convenience init(userIdentityLookupInfos: [CKUserIdentity.LookupInfo])
  var userIdentityLookupInfos: [CKUserIdentity.LookupInfo]
  var userIdentityDiscoveredBlock: ((CKUserIdentity, CKUserIdentity.LookupInfo) -> Void)?
  var discoverUserIdentitiesCompletionBlock: ((Error?) -> Void)?
}
