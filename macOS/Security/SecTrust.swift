
enum SecTrustResultType : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  @available(macOS 10.3, *)
  case invalid
  @available(macOS 10.3, *)
  case proceed
  @available(macOS 10.3, *)
  case deny
  @available(macOS 10.3, *)
  case unspecified
  @available(macOS 10.3, *)
  case recoverableTrustFailure
  @available(macOS 10.3, *)
  case fatalTrustFailure
  @available(macOS 10.3, *)
  case otherError
}
class SecTrust : _CFObject {
}
@available(macOS 10.7, *)
let kSecPropertyTypeTitle: CFString
@available(macOS 10.7, *)
let kSecPropertyTypeError: CFString
@available(macOS 10.9, *)
let kSecTrustEvaluationDate: CFString
@available(macOS 10.9, *)
let kSecTrustExtendedValidation: CFString
@available(macOS 10.9, *)
let kSecTrustOrganizationName: CFString
@available(macOS 10.9, *)
let kSecTrustResultValue: CFString
@available(macOS 10.9, *)
let kSecTrustRevocationChecked: CFString
@available(macOS 10.9, *)
let kSecTrustRevocationValidUntilDate: CFString
@available(macOS 10.11, *)
let kSecTrustCertificateTransparency: CFString
@available(macOS, introduced: 10.12, deprecated: 10.13)
let kSecTrustCertificateTransparencyWhiteList: CFString
typealias SecTrustCallback = (SecTrust, SecTrustResultType) -> Void
@available(macOS 10.3, *)
func SecTrustGetTypeID() -> CFTypeID
@available(macOS 10.3, *)
func SecTrustCreateWithCertificates(_ certificates: CFTypeRef, _ policies: CFTypeRef?, _ trust: UnsafeMutablePointer<SecTrust?>) -> OSStatus
@available(macOS 10.3, *)
func SecTrustSetPolicies(_ trust: SecTrust, _ policies: CFTypeRef) -> OSStatus
@available(macOS 10.3, *)
func SecTrustCopyPolicies(_ trust: SecTrust, _ policies: UnsafeMutablePointer<CFArray?>) -> OSStatus
@available(macOS 10.9, *)
func SecTrustSetNetworkFetchAllowed(_ trust: SecTrust, _ allowFetch: Bool) -> OSStatus
@available(macOS 10.9, *)
func SecTrustGetNetworkFetchAllowed(_ trust: SecTrust, _ allowFetch: UnsafeMutablePointer<DarwinBoolean>) -> OSStatus
@available(macOS 10.3, *)
func SecTrustSetAnchorCertificates(_ trust: SecTrust, _ anchorCertificates: CFArray?) -> OSStatus
@available(macOS 10.6, *)
func SecTrustSetAnchorCertificatesOnly(_ trust: SecTrust, _ anchorCertificatesOnly: Bool) -> OSStatus
@available(macOS 10.5, *)
func SecTrustCopyCustomAnchorCertificates(_ trust: SecTrust, _ anchors: UnsafeMutablePointer<CFArray?>) -> OSStatus
@available(macOS 10.3, *)
func SecTrustSetVerifyDate(_ trust: SecTrust, _ verifyDate: CFDate) -> OSStatus
@available(macOS 10.6, *)
func SecTrustGetVerifyTime(_ trust: SecTrust) -> CFAbsoluteTime
@available(macOS, introduced: 10.3, deprecated: 10.15, renamed: "SecTrustEvaluateWithError(_:_:)")
func SecTrustEvaluate(_ trust: SecTrust, _ result: UnsafeMutablePointer<SecTrustResultType>) -> OSStatus
@available(macOS, introduced: 10.7, deprecated: 10.15, renamed: "SecTrustEvaluateAsyncWithError(_:_:_:)")
func SecTrustEvaluateAsync(_ trust: SecTrust, _ queue: DispatchQueue?, _ result: @escaping SecTrustCallback) -> OSStatus
@available(macOS 10.14, *)
func SecTrustEvaluateWithError(_ trust: SecTrust, _ error: UnsafeMutablePointer<CFError?>?) -> Bool
typealias SecTrustWithErrorCallback = (SecTrust, Bool, CFError?) -> Void
@available(macOS 10.15, *)
func SecTrustEvaluateAsyncWithError(_ trust: SecTrust, _ queue: DispatchQueue, _ result: @escaping SecTrustWithErrorCallback) -> OSStatus
@available(macOS 10.7, *)
func SecTrustGetTrustResult(_ trust: SecTrust, _ result: UnsafeMutablePointer<SecTrustResultType>) -> OSStatus
@available(macOS, introduced: 10.7, deprecated: 11.0, renamed: "SecTrustCopyKey(_:)")
func SecTrustCopyPublicKey(_ trust: SecTrust) -> SecKey?
@available(macOS 11.0, *)
func SecTrustCopyKey(_ trust: SecTrust) -> SecKey?
@available(macOS 10.7, *)
func SecTrustGetCertificateCount(_ trust: SecTrust) -> CFIndex
@available(macOS 10.7, *)
func SecTrustGetCertificateAtIndex(_ trust: SecTrust, _ ix: CFIndex) -> SecCertificate?
@available(macOS 10.9, *)
func SecTrustCopyExceptions(_ trust: SecTrust) -> CFData
@available(macOS 10.9, *)
func SecTrustSetExceptions(_ trust: SecTrust, _ exceptions: CFData?) -> Bool
@available(macOS 10.7, *)
func SecTrustCopyProperties(_ trust: SecTrust) -> CFArray?
@available(macOS 10.9, *)
func SecTrustCopyResult(_ trust: SecTrust) -> CFDictionary?
@available(macOS 10.9, *)
func SecTrustSetOCSPResponse(_ trust: SecTrust, _ responseData: CFTypeRef?) -> OSStatus
@available(macOS 10.14.2, *)
func SecTrustSetSignedCertificateTimestamps(_ trust: SecTrust, _ sctArray: CFArray?) -> OSStatus
struct SecTrustOptionFlags : OptionSet {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var allowExpired: SecTrustOptionFlags { get }
  static var leafIsCA: SecTrustOptionFlags { get }
  static var fetchIssuerFromNet: SecTrustOptionFlags { get }
  static var allowExpiredRoot: SecTrustOptionFlags { get }
  static var requireRevPerCert: SecTrustOptionFlags { get }
  static var useTrustSettings: SecTrustOptionFlags { get }
  static var implicitAnchors: SecTrustOptionFlags { get }
}
@available(macOS 10.7, *)
func SecTrustSetOptions(_ trustRef: SecTrust, _ options: SecTrustOptionFlags) -> OSStatus
@available(macOS, introduced: 10.3, deprecated: 10.13)
func SecTrustSetKeychains(_ trust: SecTrust, _ keychainOrArray: CFTypeRef?) -> OSStatus
@available(macOS 10.3, *)
func SecTrustCopyAnchorCertificates(_ anchors: UnsafeMutablePointer<CFArray?>) -> OSStatus
