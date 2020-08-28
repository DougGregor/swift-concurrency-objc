
@available(macOS, introduced: 10.5, deprecated: 10.12)
class PDFAnnotationStamp : PDFAnnotation, NSCopying {
  func name() -> String!
  func setName(_ name: String!)
}
