
extension INSaveProfileInCarIntent {
  @available(iOS, introduced: 10.0, deprecated: 10.2, message: "Use `-initWithProfileNumber:profileName:` method instead.")
  convenience init(__profileNumber profileNumber: NSNumber?, profileLabel: String?)
  @available(iOS, introduced: 10.0, deprecated: 10.2, message: "Use `profileName` property instead.")
  var profileLabel: String? { get }
}
