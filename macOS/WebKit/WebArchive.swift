
@available(macOS, introduced: 10.3, deprecated: 10.14)
let WebArchivePboardType: String
@available(macOS, introduced: 10.3, deprecated: 10.14)
class WebArchive : NSObject, NSCoding, NSCopying {
  init!(mainResource: WebResource!, subresources: [Any]!, subframeArchives: [Any]!)
  init!(data: Data!)
  var mainResource: WebResource! { get }
  var subresources: [Any]! { get }
  var subframeArchives: [Any]! { get }
  var data: Data! { get }
}
