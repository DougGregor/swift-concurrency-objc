
@available(iOS 12.0, *)
class ILClassificationResponse : NSObject, NSSecureCoding {
  var action: ILClassificationAction { get }
  @available(iOS 12.1, *)
  var userString: String?
  var userInfo: [String : Any]?
  init(action: ILClassificationAction)
}
