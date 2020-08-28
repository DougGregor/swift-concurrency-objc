
@available(tvOS 13.0, *)
class ASPasswordCredential : NSObject, ASAuthorizationCredential {
  init(user: String, password: String)
  var user: String { get }
  var password: String { get }
}
