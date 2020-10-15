
@available(iOS 8.0, *)
let kSecSharedPassword: CFString
@available(iOS 8.0, *)
func SecAddSharedWebCredential(_ fqdn: CFString, _ account: CFString, _ password: CFString?, _ completionHandler: @escaping (CFError?) -> Void)
@available(iOS, introduced: 8.0, deprecated: 14.0, message: "Use ASAuthorizationController to make an ASAuthorizationPasswordRequest (AuthenticationServices framework)")
func SecRequestSharedWebCredential(_ fqdn: CFString?, _ account: CFString?, _ completionHandler: @escaping (CFArray?, CFError?) -> Void)
@available(iOS 8.0, *)
func SecCreateSharedWebCredentialPassword() -> CFString?
