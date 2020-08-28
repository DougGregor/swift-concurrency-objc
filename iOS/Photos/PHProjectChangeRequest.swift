
@available(iOS 13, *)
class PHProjectChangeRequest : PHChangeRequest {
  @available(iOS 13, *)
  init(project: PHProject)
  @available(iOS 13, *)
  var title: String
  @available(iOS 13, *)
  var projectExtensionData: Data
  @available(iOS 13, *)
  func __removeAssets(_ assets: NSFastEnumeration)
}
