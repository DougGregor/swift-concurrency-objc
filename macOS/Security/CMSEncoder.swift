
class CMSEncoder : _CFObject {
}
@available(macOS 10.5, *)
func CMSEncoderGetTypeID() -> CFTypeID
@available(macOS 10.5, *)
func CMSEncoderCreate(_ cmsEncoderOut: UnsafeMutablePointer<CMSEncoder?>) -> OSStatus
let kCMSEncoderDigestAlgorithmSHA1: CFString
let kCMSEncoderDigestAlgorithmSHA256: CFString
@available(macOS 10.11, *)
func CMSEncoderSetSignerAlgorithm(_ cmsEncoder: CMSEncoder, _ digestAlgorithm: CFString) -> OSStatus
@available(macOS 10.5, *)
func CMSEncoderAddSigners(_ cmsEncoder: CMSEncoder, _ signerOrArray: CFTypeRef) -> OSStatus
@available(macOS 10.5, *)
func CMSEncoderCopySigners(_ cmsEncoder: CMSEncoder, _ signersOut: UnsafeMutablePointer<CFArray?>) -> OSStatus
@available(macOS 10.5, *)
func CMSEncoderAddRecipients(_ cmsEncoder: CMSEncoder, _ recipientOrArray: CFTypeRef) -> OSStatus
@available(macOS 10.5, *)
func CMSEncoderCopyRecipients(_ cmsEncoder: CMSEncoder, _ recipientsOut: UnsafeMutablePointer<CFArray?>) -> OSStatus
@available(macOS 10.5, *)
func CMSEncoderSetHasDetachedContent(_ cmsEncoder: CMSEncoder, _ detachedContent: Bool) -> OSStatus
@available(macOS 10.5, *)
func CMSEncoderGetHasDetachedContent(_ cmsEncoder: CMSEncoder, _ detachedContentOut: UnsafeMutablePointer<DarwinBoolean>) -> OSStatus
@available(macOS 10.7, *)
func CMSEncoderSetEncapsulatedContentTypeOID(_ cmsEncoder: CMSEncoder, _ eContentTypeOID: CFTypeRef) -> OSStatus
@available(macOS 10.5, *)
func CMSEncoderCopyEncapsulatedContentType(_ cmsEncoder: CMSEncoder, _ eContentTypeOut: UnsafeMutablePointer<CFData?>) -> OSStatus
@available(macOS 10.5, *)
func CMSEncoderAddSupportingCerts(_ cmsEncoder: CMSEncoder, _ certOrArray: CFTypeRef) -> OSStatus
@available(macOS 10.5, *)
func CMSEncoderCopySupportingCerts(_ cmsEncoder: CMSEncoder, _ certsOut: UnsafeMutablePointer<CFArray?>) -> OSStatus
struct CMSSignedAttributes : OptionSet {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var attrSmimeCapabilities: CMSSignedAttributes { get }
  static var attrSmimeEncryptionKeyPrefs: CMSSignedAttributes { get }
  static var attrSmimeMSEncryptionKeyPrefs: CMSSignedAttributes { get }
  static var attrSigningTime: CMSSignedAttributes { get }
  static var attrAppleCodesigningHashAgility: CMSSignedAttributes { get }
  static var attrAppleCodesigningHashAgilityV2: CMSSignedAttributes { get }
  static var attrAppleExpirationTime: CMSSignedAttributes { get }
}
@available(macOS 10.5, *)
func CMSEncoderAddSignedAttributes(_ cmsEncoder: CMSEncoder, _ signedAttributes: CMSSignedAttributes) -> OSStatus
enum CMSCertificateChainMode : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case none
  case signerOnly
  case chain
  case chainWithRoot
  case chainWithRootOrFail
}
@available(macOS 10.5, *)
func CMSEncoderSetCertificateChainMode(_ cmsEncoder: CMSEncoder, _ chainMode: CMSCertificateChainMode) -> OSStatus
@available(macOS 10.5, *)
func CMSEncoderGetCertificateChainMode(_ cmsEncoder: CMSEncoder, _ chainModeOut: UnsafeMutablePointer<CMSCertificateChainMode>) -> OSStatus
@available(macOS 10.5, *)
func CMSEncoderUpdateContent(_ cmsEncoder: CMSEncoder, _ content: UnsafeRawPointer, _ contentLen: Int) -> OSStatus
@available(macOS 10.5, *)
func CMSEncoderCopyEncodedContent(_ cmsEncoder: CMSEncoder, _ encodedContentOut: UnsafeMutablePointer<CFData?>) -> OSStatus
@available(macOS 10.7, *)
func CMSEncodeContent(_ signers: CFTypeRef?, _ recipients: CFTypeRef?, _ eContentTypeOID: CFTypeRef?, _ detachedContent: Bool, _ signedAttributes: CMSSignedAttributes, _ content: UnsafeRawPointer, _ contentLen: Int, _ encodedContentOut: UnsafeMutablePointer<CFData?>?) -> OSStatus
@available(macOS 10.8, *)
func CMSEncoderCopySignerTimestamp(_ cmsEncoder: CMSEncoder, _ signerIndex: Int, _ timestamp: UnsafeMutablePointer<CFAbsoluteTime>) -> OSStatus
@available(macOS 10.10, *)
func CMSEncoderCopySignerTimestampWithPolicy(_ cmsEncoder: CMSEncoder, _ timeStampPolicy: CFTypeRef?, _ signerIndex: Int, _ timestamp: UnsafeMutablePointer<CFAbsoluteTime>) -> OSStatus
