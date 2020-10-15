
@available(macOS 10.5, *)
class PDFActionResetForm : PDFAction, NSCopying {
  var fields: [String]?
  var fieldsIncludedAreCleared: Bool
}
