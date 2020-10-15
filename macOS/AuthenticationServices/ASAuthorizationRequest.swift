
@available(macOS 10.15, *)
class ASAuthorizationRequest : NSObject, NSCopying, NSSecureCoding {
  var provider: ASAuthorizationProvider { get }
}
