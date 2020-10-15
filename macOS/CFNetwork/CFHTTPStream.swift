
@available(macOS 10.1, *)
let kCFStreamErrorDomainHTTP: Int32
enum CFStreamErrorHTTP : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case parseFailure
  case redirectionLoop
  case badURL
}
@available(macOS, introduced: 10.1, deprecated: 10.11, message: "Use NSURLSession API for http requests")
let kCFStreamPropertyHTTPResponseHeader: CFString
@available(macOS, introduced: 10.2, deprecated: 10.11, message: "Use NSURLSession API for http requests")
let kCFStreamPropertyHTTPFinalURL: CFString
@available(macOS, introduced: 10.5, deprecated: 10.11, message: "Use NSURLSession API for http requests")
let kCFStreamPropertyHTTPFinalRequest: CFString
@available(macOS, introduced: 10.2, deprecated: 10.11, message: "Use NSURLSession API for http requests")
let kCFStreamPropertyHTTPProxy: CFString
@available(macOS, introduced: 10.2, deprecated: 10.11, message: "Use NSURLSession API for http requests")
let kCFStreamPropertyHTTPProxyHost: CFString
@available(macOS, introduced: 10.2, deprecated: 10.11, message: "Use NSURLSession API for http requests")
let kCFStreamPropertyHTTPProxyPort: CFString
@available(macOS, introduced: 10.2, deprecated: 10.11, message: "Use NSURLSession API for http requests")
let kCFStreamPropertyHTTPSProxyHost: CFString
@available(macOS, introduced: 10.2, deprecated: 10.11, message: "Use NSURLSession API for http requests")
let kCFStreamPropertyHTTPSProxyPort: CFString
@available(macOS, introduced: 10.2, deprecated: 10.11, message: "Use NSURLSession API for http requests")
let kCFStreamPropertyHTTPShouldAutoredirect: CFString
@available(macOS, introduced: 10.2, deprecated: 10.11, message: "Use NSURLSession API for http requests")
let kCFStreamPropertyHTTPAttemptPersistentConnection: CFString
@available(macOS, introduced: 10.3, deprecated: 10.11, message: "Use NSURLSession API for http requests")
let kCFStreamPropertyHTTPRequestBytesWrittenCount: CFString
@available(macOS, introduced: 10.2, deprecated: 10.11, message: "Use NSURLSession API for http requests")
func CFReadStreamCreateForHTTPRequest(_ alloc: CFAllocator?, _ request: CFHTTPMessage) -> Unmanaged<CFReadStream>
@available(macOS, introduced: 10.2, deprecated: 10.11, message: "Use NSURLSession API for http requests")
func CFReadStreamCreateForStreamedHTTPRequest(_ alloc: CFAllocator?, _ requestHeaders: CFHTTPMessage, _ requestBody: CFReadStream) -> Unmanaged<CFReadStream>
