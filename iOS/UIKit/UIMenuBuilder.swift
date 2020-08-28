
@available(iOS 13.0, *)
protocol UIMenuBuilder {
  var system: UIMenuSystem { get }
  func menu(for identifier: UIMenu.Identifier) -> UIMenu?
  func action(for identifier: UIAction.Identifier) -> UIAction?
  func __command(forAction action: Selector, propertyList: Any?) -> UICommand?
  func replace(menu replacedIdentifier: UIMenu.Identifier, with replacementMenu: UIMenu)
  func replaceChildren(ofMenu parentIdentifier: UIMenu.Identifier, from childrenBlock: ([UIMenuElement]) -> [UIMenuElement])
  func insertSibling(_ siblingMenu: UIMenu, beforeMenu siblingIdentifier: UIMenu.Identifier)
  func insertSibling(_ siblingMenu: UIMenu, afterMenu siblingIdentifier: UIMenu.Identifier)
  func insertChild(_ childMenu: UIMenu, atStartOfMenu parentIdentifier: UIMenu.Identifier)
  func insertChild(_ childMenu: UIMenu, atEndOfMenu parentIdentifier: UIMenu.Identifier)
  func remove(menu removedIdentifier: UIMenu.Identifier)
}

@available(iOS 13.0, tvOS 14.0, *)
extension UIMenuBuilder {
  func command(for action: Selector, propertyList: Any? = nil) -> UICommand?
}
