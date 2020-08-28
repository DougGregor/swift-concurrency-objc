
extension ASCredentialServiceIdentifier {
  @available(iOS 12.0, *)
  enum IdentifierType : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case domain
    case URL
  }
}
@available(iOS 12.0, *)
class ASCredentialServiceIdentifier : NSObject, NSCopying, NSSecureCoding {
  init(identifier: String, type: ASCredentialServiceIdentifier.IdentifierType)
  var identifier: String { get }
  var type: ASCredentialServiceIdentifier.IdentifierType { get }
}
