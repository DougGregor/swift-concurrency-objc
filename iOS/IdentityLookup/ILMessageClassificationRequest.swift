
@available(iOS 12.0, *)
class ILMessageClassificationRequest : ILClassificationRequest, NSSecureCoding {
  var messageCommunications: [ILMessageCommunication] { get }
}
