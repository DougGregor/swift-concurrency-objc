
@available(macOS 10.5, *)
class PDFActionURL : PDFAction, NSCopying {
  init(url: URL)
  var url: URL?
}
