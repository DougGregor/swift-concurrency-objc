
@available(iOS 11.0, *)
class PDFActionRemoteGoTo : PDFAction, NSCopying {
  init(pageIndex: Int, at point: CGPoint, fileURL url: URL)
  var pageIndex: Int
  var point: CGPoint
  var url: URL
}
