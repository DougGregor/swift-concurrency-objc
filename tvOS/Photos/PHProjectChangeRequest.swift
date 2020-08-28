
@available(tvOS 13, *)
class PHProjectChangeRequest : PHChangeRequest {
  @available(tvOS 13, *)
  init(project: PHProject)
  @available(tvOS 13, *)
  var title: String
  @available(tvOS 13, *)
  var projectExtensionData: Data
  @available(tvOS 13, *)
  func __removeAssets(_ assets: NSFastEnumeration)
}
