
@available(macOS, introduced: 10.4, deprecated: 10.12)
class PDFAnnotationButtonWidget : PDFAnnotation, NSCopying {
  func controlType() -> PDFWidgetControlType
  func setControlType(_ type: PDFWidgetControlType)
  func state() -> Int
  func setState(_ value: Int)
  func onStateValue() -> String!
  func setOnStateValue(_ name: String!)
}
