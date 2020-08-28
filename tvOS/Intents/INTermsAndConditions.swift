
@available(tvOS 10.0, *)
class INTermsAndConditions : NSObject, NSSecureCoding, NSCopying {
  init(localizedTermsAndConditionsText: String, privacyPolicyURL: URL?, termsAndConditionsURL: URL?)
  var localizedTermsAndConditionsText: String { get }
  var privacyPolicyURL: URL? { get }
  var termsAndConditionsURL: URL? { get }
}
