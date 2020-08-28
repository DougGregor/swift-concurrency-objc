
@available(macOS 10.5, *)
class PDFActionGoTo : PDFAction, NSCopying {
  init(destination: PDFDestination)
  var destination: PDFDestination
}
