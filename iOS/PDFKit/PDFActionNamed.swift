
@available(iOS 11.0, *)
enum PDFActionNamedName : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case none
  case nextPage
  case previousPage
  case firstPage
  case lastPage
  case goBack
  case goForward
  case goToPage
  case find
  case print
  case zoomIn
  case zoomOut
}
@available(iOS 11.0, *)
class PDFActionNamed : PDFAction, NSCopying {
  init(name: PDFActionNamedName)
  var name: PDFActionNamedName
}
