
@available(macOS 10.8, *)
class EKParticipant : EKObject, NSCopying {
  var url: URL { get }
  var name: String? { get }
  var participantStatus: EKParticipantStatus { get }
  var participantRole: EKParticipantRole { get }
  var participantType: EKParticipantType { get }
  @available(macOS 10.9, *)
  var isCurrentUser: Bool { get }
  @available(macOS 10.11, *)
  var contactPredicate: NSPredicate { get }
}
