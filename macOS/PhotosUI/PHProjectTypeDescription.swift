
@available(macOS 10.13, *)
class PHProjectTypeDescription : NSObject, NSSecureCoding {
  @available(macOS 10.13, *)
  var projectType: PHProjectType { get }
  @available(macOS 10.13, *)
  var localizedTitle: String { get }
  @available(macOS 10.13, *)
  var localizedDescription: String? { get }
  @available(macOS 10.14, *)
  @NSCopying var localizedAttributedDescription: NSAttributedString? { get }
  @available(macOS 10.13, *)
  @NSCopying var image: NSImage? { get }
  @available(macOS 10.13, *)
  var subtypeDescriptions: [PHProjectTypeDescription] { get }
  @available(macOS 10.14, *)
  var canProvideSubtypes: Bool { get }
  @available(macOS 10.13, *)
  init(projectType: PHProjectType, title localizedTitle: String, description localizedDescription: String?, image: NSImage?, subtypeDescriptions: [PHProjectTypeDescription])
  @available(macOS 10.14, *)
  init(projectType: PHProjectType, title localizedTitle: String, attributedDescription localizedAttributedDescription: NSAttributedString?, image: NSImage?, subtypeDescriptions: [PHProjectTypeDescription])
  @available(macOS 10.13, *)
  convenience init(projectType: PHProjectType, title localizedTitle: String, description localizedDescription: String?, image: NSImage?)
  @available(macOS 10.14, *)
  init(projectType: PHProjectType, title localizedTitle: String, description localizedDescription: String?, image: NSImage?, canProvideSubtypes: Bool)
  @available(macOS 10.14, *)
  init(projectType: PHProjectType, title localizedTitle: String, attributedDescription localizedAttributedDescription: NSAttributedString?, image: NSImage?, canProvideSubtypes: Bool)
}
