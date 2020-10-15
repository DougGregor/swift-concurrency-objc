
typealias SecureDownloadRef = OpaquePointer
var errSecureDownloadInvalidTicket: Int { get }
var errSecureDownloadInvalidDownload: Int { get }
struct _SecureDownloadTrustCallbackResult : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kSecureDownloadDoNotEvaluateSigner: _SecureDownloadTrustCallbackResult { get }
var kSecureDownloadEvaluateSigner: _SecureDownloadTrustCallbackResult { get }
var kSecureDownloadFailEvaluation: _SecureDownloadTrustCallbackResult { get }
typealias SecureDownloadTrustCallbackResult = _SecureDownloadTrustCallbackResult
typealias SecureDownloadTrustSetupCallback = @convention(c) (SecTrust?, UnsafeMutableRawPointer?) -> SecureDownloadTrustCallbackResult
typealias SecureDownloadTrustEvaluateCallback = @convention(c) (SecTrust?, SecTrustResultType, UnsafeMutableRawPointer?) -> SecTrustResultType
func SecureDownloadCreateWithTicket(_ ticket: CFData!, _ setup: SecureDownloadTrustSetupCallback!, _ setupContext: UnsafeMutableRawPointer!, _ evaluate: SecureDownloadTrustEvaluateCallback!, _ evaluateContext: UnsafeMutableRawPointer!, _ downloadRef: UnsafeMutablePointer<SecureDownloadRef?>!) -> OSStatus
func SecureDownloadCopyURLs(_ downloadRef: SecureDownloadRef!, _ urls: UnsafeMutablePointer<Unmanaged<CFArray>?>!) -> OSStatus
func SecureDownloadCopyName(_ downloadRef: SecureDownloadRef!, _ name: UnsafeMutablePointer<Unmanaged<CFString>?>!) -> OSStatus
func SecureDownloadCopyCreationDate(_ downloadRef: SecureDownloadRef!, _ date: UnsafeMutablePointer<Unmanaged<CFDate>?>!) -> OSStatus
func SecureDownloadGetDownloadSize(_ downloadRef: SecureDownloadRef!, _ downloadSize: UnsafeMutablePointer<Int64>!) -> OSStatus
func SecureDownloadUpdateWithData(_ downloadRef: SecureDownloadRef!, _ data: CFData!) -> OSStatus
func SecureDownloadFinished(_ downloadRef: SecureDownloadRef!) -> OSStatus
func SecureDownloadRelease(_ downloadRef: SecureDownloadRef!) -> OSStatus
func SecureDownloadCopyTicketLocation(_ url: CFURL!, _ ticketLocation: UnsafeMutablePointer<Unmanaged<CFURL>?>!) -> OSStatus
