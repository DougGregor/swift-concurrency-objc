
@available(iOS 12.0, *)
class ILCommunication : NSObject, NSSecureCoding {
  var sender: String? { get }
  var dateReceived: Date { get }
}
