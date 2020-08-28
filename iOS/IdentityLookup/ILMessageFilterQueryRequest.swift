
@available(iOS 11.0, *)
class ILMessageFilterQueryRequest : NSObject, NSSecureCoding {
  var sender: String? { get }
  var messageBody: String? { get }
}
