
class WebResource : NSObject, NSCoding, NSCopying {
  init!(data: Data!, url URL: URL!, mimeType MIMEType: String!, textEncodingName: String!, frameName: String!)
  var data: Data! { get }
  var url: URL! { get }
  var mimeType: String! { get }
  var textEncodingName: String! { get }
  var frameName: String! { get }
}
