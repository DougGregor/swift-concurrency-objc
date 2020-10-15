
@available(iOS 12.0, *)
class ILCallClassificationRequest : ILClassificationRequest, NSSecureCoding {
  var callCommunications: [ILCallCommunication] { get }
}
