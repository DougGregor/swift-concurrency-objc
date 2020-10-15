
class NSPDFImageRep : NSImageRep {
  init?(data pdfData: Data)
  var pdfRepresentation: Data { get }
  var bounds: NSRect { get }
  var currentPage: Int
  var pageCount: Int { get }
}
