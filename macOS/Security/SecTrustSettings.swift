
var kSecTrustSettingsPolicy: String { get }
var kSecTrustSettingsApplication: String { get }
var kSecTrustSettingsPolicyString: String { get }
var kSecTrustSettingsKeyUsage: String { get }
var kSecTrustSettingsAllowedError: String { get }
var kSecTrustSettingsResult: String { get }
struct SecTrustSettingsKeyUsage : OptionSet {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var useSignature: SecTrustSettingsKeyUsage { get }
  static var useEnDecryptData: SecTrustSettingsKeyUsage { get }
  static var useEnDecryptKey: SecTrustSettingsKeyUsage { get }
  static var useSignCert: SecTrustSettingsKeyUsage { get }
  static var useSignRevocation: SecTrustSettingsKeyUsage { get }
  static var useKeyExchange: SecTrustSettingsKeyUsage { get }
  static var useAny: SecTrustSettingsKeyUsage { get }
}
enum SecTrustSettingsResult : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case invalid
  case trustRoot
  case trustAsRoot
  case deny
  case unspecified
}
enum SecTrustSettingsDomain : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case user
  case admin
  case system
}
func SecTrustSettingsCopyTrustSettings(_ certRef: SecCertificate, _ domain: SecTrustSettingsDomain, _ trustSettings: UnsafeMutablePointer<CFArray?>) -> OSStatus
func SecTrustSettingsSetTrustSettings(_ certRef: SecCertificate, _ domain: SecTrustSettingsDomain, _ trustSettingsDictOrArray: CFTypeRef?) -> OSStatus
func SecTrustSettingsRemoveTrustSettings(_ certRef: SecCertificate, _ domain: SecTrustSettingsDomain) -> OSStatus
func SecTrustSettingsCopyCertificates(_ domain: SecTrustSettingsDomain, _ certArray: UnsafeMutablePointer<CFArray?>?) -> OSStatus
func SecTrustSettingsCopyModificationDate(_ certRef: SecCertificate, _ domain: SecTrustSettingsDomain, _ modificationDate: UnsafeMutablePointer<CFDate?>) -> OSStatus
func SecTrustSettingsCreateExternalRepresentation(_ domain: SecTrustSettingsDomain, _ trustSettings: UnsafeMutablePointer<CFData?>) -> OSStatus
func SecTrustSettingsImportExternalRepresentation(_ domain: SecTrustSettingsDomain, _ trustSettings: CFData) -> OSStatus
