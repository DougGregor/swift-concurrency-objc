
extension INSetProfileInCarIntent {
  convenience init(__profileNumber profileNumber: NSNumber?, profileLabel: String?, defaultProfile: NSNumber?)
  convenience init(__profileNumber profileNumber: NSNumber?, profileName: String?, defaultProfile: NSNumber?)
  var profileLabel: String? { get }
}
