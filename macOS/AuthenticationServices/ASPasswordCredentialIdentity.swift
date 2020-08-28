
@available(macOS 11.0, *)
class ASPasswordCredentialIdentity : NSObject, NSCopying, NSSecureCoding {
  init(serviceIdentifier: ASCredentialServiceIdentifier, user: String, recordIdentifier: String?)
  var serviceIdentifier: ASCredentialServiceIdentifier { get }
  var user: String { get }
  var recordIdentifier: String? { get }
  var rank: Int
}
