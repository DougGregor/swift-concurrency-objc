
@available(iOS 11.0, *)
class PDFActionResetForm : PDFAction, NSCopying {
  var fields: [String]?
  var fieldsIncludedAreCleared: Bool
}
