
@available(macOS 10.12, *)
class CKFetchShareParticipantsOperation : CKOperation {
  convenience init(userIdentityLookupInfos: [CKUserIdentity.LookupInfo])
  var userIdentityLookupInfos: [CKUserIdentity.LookupInfo]?
  var shareParticipantFetchedBlock: ((CKShare.Participant) -> Void)?
  var fetchShareParticipantsCompletionBlock: ((Error?) -> Void)?
}
