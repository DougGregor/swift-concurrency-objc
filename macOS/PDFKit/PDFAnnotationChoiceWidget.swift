
@available(macOS, introduced: 10.4, deprecated: 10.12)
class PDFAnnotationChoiceWidget : PDFAnnotation, NSCopying {
  func stringValue() -> String!
  func setStringValue(_ value: String!)
  func setIsListChoice(_ isList: Bool)
}
