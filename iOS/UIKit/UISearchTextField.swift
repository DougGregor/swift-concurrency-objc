
@available(iOS 13.0, *)
class UISearchTextField : UITextField {
  var tokens: [UISearchToken]
  func insertToken(_ token: UISearchToken, at tokenIndex: Int)
  func removeToken(at tokenIndex: Int)
  func positionOfToken(at tokenIndex: Int) -> UITextPosition
  func tokens(in textRange: UITextRange) -> [UISearchToken]
  var textualRange: UITextRange { get }
  func replaceTextualPortion(of textRange: UITextRange, with token: UISearchToken, at tokenIndex: Int)
  var tokenBackgroundColor: UIColor!
  var allowsDeletingTokens: Bool
  var allowsCopyingTokens: Bool
}
@available(iOS 13.0, *)
class UISearchToken : NSObject {
  /*not inherited*/ init(icon: UIImage?, text: String)
  var representedObject: Any?
}
protocol UISearchTextFieldDelegate : UITextFieldDelegate {
  @available(iOS 13.0, *)
  optional func searchTextField(_ searchTextField: UISearchTextField, itemProviderForCopying token: UISearchToken) -> NSItemProvider
}
protocol UISearchTextFieldPasteItem : UITextPasteItem {
  @available(iOS 13.0, *)
  func setSearchTokenResult(_ token: UISearchToken)
}
