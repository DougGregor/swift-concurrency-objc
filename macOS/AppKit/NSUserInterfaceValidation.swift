
protocol NSValidatedUserInterfaceItem {
  var action: Selector? { get }
  var tag: Int { get }
}
protocol NSUserInterfaceValidations {
  func validateUserInterfaceItem(_ item: NSValidatedUserInterfaceItem) -> Bool
}
