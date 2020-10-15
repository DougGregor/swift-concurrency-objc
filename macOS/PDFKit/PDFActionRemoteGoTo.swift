
@available(macOS 10.5, *)
class PDFActionRemoteGoTo : PDFAction, NSCopying {
  init(pageIndex: Int, at point: NSPoint, fileURL url: URL)
  var pageIndex: Int
  var point: NSPoint
  var url: URL
}
