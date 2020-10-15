
var JRSSecurityExecutableCodeSignatureMissing: Int { get }
var JRSSecurityExecutableCodeSignatureUnverifiable: Int { get }
var JRSSecurityExecutableCodeSignatureValidatedThroughTrustedCA: Int { get }
var JRSSecurityExecutableCodeSignatureExplicitlyTrusted: Int { get }
var JRSSecurityExecutableCodeSignatureExplicitlyUntrusted: Int { get }
var JRSSecurityExecutableCodeSignatureExpired: Int { get }
typealias JRSSecurityExecutableCodeSignatureEvaluation = UInt32
var JRSSecurityExecutionPolicyNoPrompt: Int { get }
var JRSSecurityExecutionPolicyOKPrompt: Int { get }
var JRSSecurityExecutionPolicyWarnPrompt: Int { get }
var JRSSecurityExecutionPolicyBlockExecution: Int { get }
typealias JRSSecurityExecutionPolicy = UInt32
@available(macOS, introduced: 10.10, deprecated: 11.0, message: "This functionality is longer supported as it does not seem to be used in Java 7+. It may be removed in a future version of macOS.")
class JRSSecurity : NSObject {
  class func executionPolicy(forExecutableCodeSignatureEvaluation evaluation: JRSSecurityExecutableCodeSignatureEvaluation) -> JRSSecurityExecutionPolicy
}
