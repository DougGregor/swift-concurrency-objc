
extension UIFontPickerViewController {
  @available(iOS 13.0, *)
  class Configuration : NSObject, NSCopying {
    var includeFaces: Bool
    var displayUsingSystemFont: Bool
    var filteredTraits: UIFontDescriptor.SymbolicTraits
    @NSCopying var filteredLanguagesPredicate: NSPredicate?
    class func filterPredicate(forFilteredLanguages filteredLanguages: [String]) -> NSPredicate?
  }
}
