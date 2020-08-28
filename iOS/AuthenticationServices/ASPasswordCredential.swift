
@available(iOS 12.0, *)
class ASPasswordCredential : NSObject, ASAuthorizationCredential {
  init(user: String, password: String)
  var user: String { get }
  var password: String { get }
}
