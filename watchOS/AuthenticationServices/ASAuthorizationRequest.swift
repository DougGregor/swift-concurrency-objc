
@available(watchOS 6.0, *)
class ASAuthorizationRequest : NSObject, NSCopying, NSSecureCoding {
  var provider: ASAuthorizationProvider { get }
}
