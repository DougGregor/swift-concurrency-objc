
@available(iOS 13.0, *)
class UIActivityItemsConfiguration : NSObject, UIActivityItemsConfigurationReading {
  var localObject: Any?
  var supportedInteractions: [UIActivityItemsConfigurationInteraction]
  var metadataProvider: ((UIActivityItemsConfigurationMetadataKey) -> Any?)?
  var perItemMetadataProvider: ((Int, UIActivityItemsConfigurationMetadataKey) -> Any?)?
  var previewProvider: ((Int, UIActivityItemsConfigurationPreviewIntent, CGSize) -> NSItemProvider?)?
  var applicationActivitiesProvider: (() -> [UIActivity])?
  init(objects: [NSItemProviderWriting])
  init(itemProviders: [NSItemProvider])
}
