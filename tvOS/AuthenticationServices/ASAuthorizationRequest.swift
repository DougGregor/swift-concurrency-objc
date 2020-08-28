
@available(tvOS 13.0, *)
class ASAuthorizationRequest : NSObject, NSCopying, NSSecureCoding {
  var provider: ASAuthorizationProvider { get }
}
