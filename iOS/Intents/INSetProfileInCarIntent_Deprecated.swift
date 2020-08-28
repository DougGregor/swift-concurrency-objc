
extension INSetProfileInCarIntent {
  @available(iOS, introduced: 10.0, deprecated: 10.2)
  convenience init(__profileNumber profileNumber: NSNumber?, profileLabel: String?, defaultProfile: NSNumber?)
  @available(iOS, introduced: 10.2, deprecated: 12.0)
  convenience init(__profileNumber profileNumber: NSNumber?, profileName: String?, defaultProfile: NSNumber?)
  @available(iOS, introduced: 10.0, deprecated: 10.2)
  var profileLabel: String? { get }
}
