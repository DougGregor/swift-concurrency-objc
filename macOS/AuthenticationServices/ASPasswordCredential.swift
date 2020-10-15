
@available(macOS 10.15, *)
class ASPasswordCredential : NSObject, ASAuthorizationCredential {
  init(user: String, password: String)
  var user: String { get }
  var password: String { get }
}
