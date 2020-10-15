
@available(iOS 11.0, *)
class PDFActionGoTo : PDFAction, NSCopying {
  init(destination: PDFDestination)
  var destination: PDFDestination
}
