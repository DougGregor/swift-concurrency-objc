
@available(macOS 10.2, *)
class NSURLDownload : NSObject {
  class func canResumeDownloadDecoded(withEncodingMIMEType MIMEType: String) -> Bool
  @available(macOS, introduced: 10.3, deprecated: 10.11, message: "Use NSURLSession downloadTask (see NSURLSession.h)")
  init(request: URLRequest, delegate: NSURLDownloadDelegate?)
  @available(macOS, introduced: 10.3, deprecated: 10.11, message: "Use NSURLSession downloadTask (see NSURLSession.h)")
  init(resumeData: Data, delegate: NSURLDownloadDelegate?, path: String)
  func cancel()
  func setDestination(_ path: String, allowOverwrite: Bool)
  var request: URLRequest { get }
  var resumeData: Data? { get }
  var deletesFileUponFailure: Bool
}
@available(macOS 10.2, *)
protocol NSURLDownloadDelegate : NSObjectProtocol {
  optional func downloadDidBegin(_ download: NSURLDownload)
  optional func download(_ download: NSURLDownload, willSend request: URLRequest, redirectResponse: URLResponse?) -> URLRequest?
  optional func download(_ connection: NSURLDownload, canAuthenticateAgainstProtectionSpace protectionSpace: URLProtectionSpace) -> Bool
  optional func download(_ download: NSURLDownload, didReceive challenge: URLAuthenticationChallenge)
  optional func download(_ download: NSURLDownload, didCancel challenge: URLAuthenticationChallenge)
  optional func downloadShouldUseCredentialStorage(_ download: NSURLDownload) -> Bool
  optional func download(_ download: NSURLDownload, didReceive response: URLResponse)
  optional func download(_ download: NSURLDownload, willResumeWith response: URLResponse, fromByte startingByte: Int64)
  optional func download(_ download: NSURLDownload, didReceiveDataOfLength length: Int)
  optional func download(_ download: NSURLDownload, shouldDecodeSourceDataOfMIMEType encodingType: String) -> Bool
  optional func download(_ download: NSURLDownload, decideDestinationWithSuggestedFilename filename: String)
  optional func download(_ download: NSURLDownload, didCreateDestination path: String)
  optional func downloadDidFinish(_ download: NSURLDownload)
  optional func download(_ download: NSURLDownload, didFailWithError error: Error)
}
