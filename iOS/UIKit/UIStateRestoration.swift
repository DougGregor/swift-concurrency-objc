
extension UIApplication {
  @available(iOS 6.0, *)
  class let stateRestorationViewControllerStoryboardKey: String
  @available(iOS 6.0, *)
  class let stateRestorationBundleVersionKey: String
  @available(iOS 6.0, *)
  class let stateRestorationUserInterfaceIdiomKey: String
  @available(iOS 7.0, *)
  class let stateRestorationTimestampKey: String
  @available(iOS 7.0, *)
  class let stateRestorationSystemVersionKey: String
}
protocol UIViewControllerRestoration {
  @available(iOS 2.0, *)
  static func viewController(withRestorationIdentifierPath identifierComponents: [String], coder: NSCoder) -> UIViewController?
}
protocol UIDataSourceModelAssociation {
  @available(iOS 2.0, *)
  func modelIdentifierForElement(at idx: IndexPath, in view: UIView) -> String?
  @available(iOS 2.0, *)
  func indexPathForElement(withModelIdentifier identifier: String, in view: UIView) -> IndexPath?
}
protocol UIStateRestoring : NSObjectProtocol {
  optional var restorationParent: UIStateRestoring? { get }
  optional var objectRestorationClass: UIObjectRestoration.Type? { get }
  optional func encodeRestorableState(with coder: NSCoder)
  optional func decodeRestorableState(with coder: NSCoder)
  optional func applicationFinishedRestoringState()
}
protocol UIObjectRestoration {
  static func object(withRestorationIdentifierPath identifierComponents: [String], coder: NSCoder) -> UIStateRestoring?
}
