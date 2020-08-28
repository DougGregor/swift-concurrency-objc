
@available(macOS 11.0, *)
let kSecSharedPassword: CFString
@available(macOS 11.0, *)
func SecAddSharedWebCredential(_ fqdn: CFString, _ account: CFString, _ password: CFString?, _ completionHandler: @escaping (CFError?) -> Void)
@available(macOS, introduced: 11.0, deprecated: 11.0, message: "Use ASAuthorizationController to make an ASAuthorizationPasswordRequest (AuthenticationServices framework)")
func SecRequestSharedWebCredential(_ fqdn: CFString?, _ account: CFString?, _ completionHandler: @escaping (CFArray?, CFError?) -> Void)
@available(macOS 11.0, *)
func SecCreateSharedWebCredentialPassword() -> CFString?
