
@available(macOS 10.14, *)
protocol PHProjectTypeDescriptionDataSource : NSObjectProtocol {
  @available(macOS 10.14, *)
  func subtypes(for projectType: PHProjectType) -> [PHProjectTypeDescription]
  @available(macOS 10.14, *)
  func typeDescription(for projectType: PHProjectType) -> PHProjectTypeDescription?
  @available(macOS 10.14, *)
  func footerText(forSubtypesOf projectType: PHProjectType) -> NSAttributedString?
  @available(macOS 10.14, *)
  optional func extensionWillDiscardDataSource()
}
@available(macOS 10.14, *)
protocol PHProjectTypeDescriptionInvalidator : NSObjectProtocol {
  @available(macOS 10.14, *)
  func invalidateTypeDescription(for projectType: PHProjectType)
  @available(macOS 10.14, *)
  func invalidateFooterText(forSubtypesOf projectType: PHProjectType)
}
