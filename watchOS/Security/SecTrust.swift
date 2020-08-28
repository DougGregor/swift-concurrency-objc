
enum SecTrustResultType : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  @available(watchOS 2.0, *)
  case invalid
  @available(watchOS 2.0, *)
  case proceed
  @available(watchOS, introduced: 2.0, deprecated: 2.0)
  case confirm
  @available(watchOS 2.0, *)
  case deny
  @available(watchOS 2.0, *)
  case unspecified
  @available(watchOS 2.0, *)
  case recoverableTrustFailure
  @available(watchOS 2.0, *)
  case fatalTrustFailure
  @available(watchOS 2.0, *)
  case otherError
}
class SecTrust : _CFObject {
}
@available(watchOS 2.0, *)
let kSecPropertyTypeTitle: CFString
@available(watchOS 2.0, *)
let kSecPropertyTypeError: CFString
@available(watchOS 2.0, *)
let kSecTrustEvaluationDate: CFString
@available(watchOS 2.0, *)
let kSecTrustExtendedValidation: CFString
@available(watchOS 2.0, *)
let kSecTrustOrganizationName: CFString
@available(watchOS 2.0, *)
let kSecTrustResultValue: CFString
@available(watchOS 2.0, *)
let kSecTrustRevocationChecked: CFString
@available(watchOS 2.0, *)
let kSecTrustRevocationValidUntilDate: CFString
@available(watchOS 2.0, *)
let kSecTrustCertificateTransparency: CFString
@available(watchOS, introduced: 3.0, deprecated: 4.0)
let kSecTrustCertificateTransparencyWhiteList: CFString
typealias SecTrustCallback = (SecTrust, SecTrustResultType) -> Void
@available(watchOS 2.0, *)
func SecTrustGetTypeID() -> CFTypeID
@available(watchOS 2.0, *)
func SecTrustCreateWithCertificates(_ certificates: CFTypeRef, _ policies: CFTypeRef?, _ trust: UnsafeMutablePointer<SecTrust?>) -> OSStatus
@available(watchOS 2.0, *)
func SecTrustSetPolicies(_ trust: SecTrust, _ policies: CFTypeRef) -> OSStatus
@available(watchOS 2.0, *)
func SecTrustCopyPolicies(_ trust: SecTrust, _ policies: UnsafeMutablePointer<CFArray?>) -> OSStatus
@available(watchOS 2.0, *)
func SecTrustSetNetworkFetchAllowed(_ trust: SecTrust, _ allowFetch: Bool) -> OSStatus
@available(watchOS 2.0, *)
func SecTrustGetNetworkFetchAllowed(_ trust: SecTrust, _ allowFetch: UnsafeMutablePointer<DarwinBoolean>) -> OSStatus
@available(watchOS 2.0, *)
func SecTrustSetAnchorCertificates(_ trust: SecTrust, _ anchorCertificates: CFArray?) -> OSStatus
@available(watchOS 2.0, *)
func SecTrustSetAnchorCertificatesOnly(_ trust: SecTrust, _ anchorCertificatesOnly: Bool) -> OSStatus
@available(watchOS 2.0, *)
func SecTrustCopyCustomAnchorCertificates(_ trust: SecTrust, _ anchors: UnsafeMutablePointer<CFArray?>) -> OSStatus
@available(watchOS 2.0, *)
func SecTrustSetVerifyDate(_ trust: SecTrust, _ verifyDate: CFDate) -> OSStatus
@available(watchOS 2.0, *)
func SecTrustGetVerifyTime(_ trust: SecTrust) -> CFAbsoluteTime
@available(watchOS, introduced: 1.0, deprecated: 6.0, renamed: "SecTrustEvaluateWithError(_:_:)")
func SecTrustEvaluate(_ trust: SecTrust, _ result: UnsafeMutablePointer<SecTrustResultType>) -> OSStatus
@available(watchOS, introduced: 1.0, deprecated: 6.0, renamed: "SecTrustEvaluateAsyncWithError(_:_:_:)")
func SecTrustEvaluateAsync(_ trust: SecTrust, _ queue: DispatchQueue?, _ result: @escaping SecTrustCallback) -> OSStatus
@available(watchOS 5.0, *)
func SecTrustEvaluateWithError(_ trust: SecTrust, _ error: UnsafeMutablePointer<CFError?>?) -> Bool
typealias SecTrustWithErrorCallback = (SecTrust, Bool, CFError?) -> Void
@available(watchOS 6.0, *)
func SecTrustEvaluateAsyncWithError(_ trust: SecTrust, _ queue: DispatchQueue, _ result: @escaping SecTrustWithErrorCallback) -> OSStatus
@available(watchOS 2.0, *)
func SecTrustGetTrustResult(_ trust: SecTrust, _ result: UnsafeMutablePointer<SecTrustResultType>) -> OSStatus
@available(watchOS, introduced: 1.0, deprecated: 7.0, renamed: "SecTrustCopyKey(_:)")
func SecTrustCopyPublicKey(_ trust: SecTrust) -> SecKey?
@available(watchOS 7.0, *)
func SecTrustCopyKey(_ trust: SecTrust) -> SecKey?
@available(watchOS 2.0, *)
func SecTrustGetCertificateCount(_ trust: SecTrust) -> CFIndex
@available(watchOS 2.0, *)
func SecTrustGetCertificateAtIndex(_ trust: SecTrust, _ ix: CFIndex) -> SecCertificate?
@available(watchOS 2.0, *)
func SecTrustCopyExceptions(_ trust: SecTrust) -> CFData
@available(watchOS 2.0, *)
func SecTrustSetExceptions(_ trust: SecTrust, _ exceptions: CFData?) -> Bool
@available(watchOS 2.0, *)
func SecTrustCopyProperties(_ trust: SecTrust) -> CFArray?
@available(watchOS 2.0, *)
func SecTrustCopyResult(_ trust: SecTrust) -> CFDictionary?
@available(watchOS 2.0, *)
func SecTrustSetOCSPResponse(_ trust: SecTrust, _ responseData: CFTypeRef?) -> OSStatus
@available(watchOS 5.1.1, *)
func SecTrustSetSignedCertificateTimestamps(_ trust: SecTrust, _ sctArray: CFArray?) -> OSStatus
