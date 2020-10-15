
enum SecTrustResultType : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  @available(tvOS 2.0, *)
  case invalid
  @available(tvOS 2.0, *)
  case proceed
  @available(tvOS 2.0, *)
  case deny
  @available(tvOS 2.0, *)
  case unspecified
  @available(tvOS 2.0, *)
  case recoverableTrustFailure
  @available(tvOS 2.0, *)
  case fatalTrustFailure
  @available(tvOS 2.0, *)
  case otherError
}
class SecTrust : _CFObject {
}
@available(tvOS 7.0, *)
let kSecPropertyTypeTitle: CFString
@available(tvOS 7.0, *)
let kSecPropertyTypeError: CFString
@available(tvOS 7.0, *)
let kSecTrustEvaluationDate: CFString
@available(tvOS 7.0, *)
let kSecTrustExtendedValidation: CFString
@available(tvOS 7.0, *)
let kSecTrustOrganizationName: CFString
@available(tvOS 7.0, *)
let kSecTrustResultValue: CFString
@available(tvOS 7.0, *)
let kSecTrustRevocationChecked: CFString
@available(tvOS 7.0, *)
let kSecTrustRevocationValidUntilDate: CFString
@available(tvOS 9.0, *)
let kSecTrustCertificateTransparency: CFString
@available(tvOS, introduced: 10.0, deprecated: 11.0)
let kSecTrustCertificateTransparencyWhiteList: CFString
typealias SecTrustCallback = (SecTrust, SecTrustResultType) -> Void
@available(tvOS 2.0, *)
func SecTrustGetTypeID() -> CFTypeID
@available(tvOS 2.0, *)
func SecTrustCreateWithCertificates(_ certificates: CFTypeRef, _ policies: CFTypeRef?, _ trust: UnsafeMutablePointer<SecTrust?>) -> OSStatus
@available(tvOS 6.0, *)
func SecTrustSetPolicies(_ trust: SecTrust, _ policies: CFTypeRef) -> OSStatus
@available(tvOS 7.0, *)
func SecTrustCopyPolicies(_ trust: SecTrust, _ policies: UnsafeMutablePointer<CFArray?>) -> OSStatus
@available(tvOS 7.0, *)
func SecTrustSetNetworkFetchAllowed(_ trust: SecTrust, _ allowFetch: Bool) -> OSStatus
@available(tvOS 7.0, *)
func SecTrustGetNetworkFetchAllowed(_ trust: SecTrust, _ allowFetch: UnsafeMutablePointer<DarwinBoolean>) -> OSStatus
@available(tvOS 2.0, *)
func SecTrustSetAnchorCertificates(_ trust: SecTrust, _ anchorCertificates: CFArray?) -> OSStatus
@available(tvOS 2.0, *)
func SecTrustSetAnchorCertificatesOnly(_ trust: SecTrust, _ anchorCertificatesOnly: Bool) -> OSStatus
@available(tvOS 7.0, *)
func SecTrustCopyCustomAnchorCertificates(_ trust: SecTrust, _ anchors: UnsafeMutablePointer<CFArray?>) -> OSStatus
@available(tvOS 2.0, *)
func SecTrustSetVerifyDate(_ trust: SecTrust, _ verifyDate: CFDate) -> OSStatus
@available(tvOS 2.0, *)
func SecTrustGetVerifyTime(_ trust: SecTrust) -> CFAbsoluteTime
@available(tvOS, introduced: 2.0, deprecated: 13.0, renamed: "SecTrustEvaluateWithError(_:_:)")
func SecTrustEvaluate(_ trust: SecTrust, _ result: UnsafeMutablePointer<SecTrustResultType>) -> OSStatus
@available(tvOS, introduced: 7.0, deprecated: 13.0, renamed: "SecTrustEvaluateAsyncWithError(_:_:_:)")
func SecTrustEvaluateAsync(_ trust: SecTrust, _ queue: DispatchQueue?, _ result: @escaping SecTrustCallback) -> OSStatus
@available(tvOS 12.0, *)
func SecTrustEvaluateWithError(_ trust: SecTrust, _ error: UnsafeMutablePointer<CFError?>?) -> Bool
typealias SecTrustWithErrorCallback = (SecTrust, Bool, CFError?) -> Void
@available(tvOS 13.0, *)
func SecTrustEvaluateAsyncWithError(_ trust: SecTrust, _ queue: DispatchQueue, _ result: @escaping SecTrustWithErrorCallback) -> OSStatus
@available(tvOS 7.0, *)
func SecTrustGetTrustResult(_ trust: SecTrust, _ result: UnsafeMutablePointer<SecTrustResultType>) -> OSStatus
@available(tvOS, introduced: 9.0, deprecated: 14.0, renamed: "SecTrustCopyKey(_:)")
func SecTrustCopyPublicKey(_ trust: SecTrust) -> SecKey?
@available(tvOS 14.0, *)
func SecTrustCopyKey(_ trust: SecTrust) -> SecKey?
@available(tvOS 2.0, *)
func SecTrustGetCertificateCount(_ trust: SecTrust) -> CFIndex
@available(tvOS 2.0, *)
func SecTrustGetCertificateAtIndex(_ trust: SecTrust, _ ix: CFIndex) -> SecCertificate?
@available(tvOS 4.0, *)
func SecTrustCopyExceptions(_ trust: SecTrust) -> CFData
@available(tvOS 4.0, *)
func SecTrustSetExceptions(_ trust: SecTrust, _ exceptions: CFData?) -> Bool
@available(tvOS 2.0, *)
func SecTrustCopyProperties(_ trust: SecTrust) -> CFArray?
@available(tvOS 7.0, *)
func SecTrustCopyResult(_ trust: SecTrust) -> CFDictionary?
@available(tvOS 7.0, *)
func SecTrustSetOCSPResponse(_ trust: SecTrust, _ responseData: CFTypeRef?) -> OSStatus
@available(tvOS 12.1.1, *)
func SecTrustSetSignedCertificateTimestamps(_ trust: SecTrust, _ sctArray: CFArray?) -> OSStatus
