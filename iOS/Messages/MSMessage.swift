
@available(iOS 10.0, *)
class MSMessage : NSObject, NSCopying, NSSecureCoding {
  init(session: MSSession)
  var session: MSSession? { get }
  @available(iOS 11.0, *)
  var isPending: Bool { get }
  var senderParticipantIdentifier: UUID { get }
  @NSCopying var layout: MSMessageLayout?
  var url: URL?
  var shouldExpire: Bool
  var summaryText: String?
  var error: Error?
}
