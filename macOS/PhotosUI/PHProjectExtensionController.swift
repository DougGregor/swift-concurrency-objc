
@available(macOS 10.13, *)
protocol PHProjectExtensionController : NSObjectProtocol {
  @available(macOS, introduced: 10.13, deprecated: 10.14)
  optional var supportedProjectTypes: [PHProjectTypeDescription] { get }
  @available(macOS 10.14, *)
  optional func typeDescriptionDataSource(for category: PHProjectCategory, invalidator: PHProjectTypeDescriptionInvalidator) -> PHProjectTypeDescriptionDataSource
  @available(macOS 10.13, *)
  func beginProject(with extensionContext: PHProjectExtensionContext, projectInfo: PHProjectInfo, completion: @escaping (Error?) -> Void)
  @available(macOS 10.13, *)
  func beginProject(with extensionContext: PHProjectExtensionContext, projectInfo: PHProjectInfo) async throws
  @available(macOS 10.13, *)
  func resumeProject(with extensionContext: PHProjectExtensionContext, completion: @escaping (Error?) -> Void)
  @available(macOS 10.13, *)
  func resumeProject(with extensionContext: PHProjectExtensionContext) async throws
  @available(macOS 10.13, *)
  func finishProject(completionHandler completion: @escaping () -> Void)
  @available(macOS 10.13, *)
  func finishProject() async
}
