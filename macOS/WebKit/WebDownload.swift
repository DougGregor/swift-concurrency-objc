
@available(macOS, introduced: 10.4, deprecated: 10.14)
class WebDownload : NSURLDownload {
}
@available(macOS, introduced: 10.4, deprecated: 10.14)
protocol WebDownloadDelegate : NSURLDownloadDelegate {
  optional func downloadWindow(forAuthenticationSheet download: WebDownload!) -> NSWindow!
}
