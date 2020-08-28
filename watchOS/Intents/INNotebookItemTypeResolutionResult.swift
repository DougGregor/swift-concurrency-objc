
@available(watchOS 4.0, *)
class INNotebookItemTypeResolutionResult : INIntentResolutionResult {
  class func success(with resolvedNotebookItemType: INNotebookItemType) -> Self
  class func __disambiguationWithNotebookItemTypes(toDisambiguate notebookItemTypesToDisambiguate: [NSNumber]) -> Self
  class func confirmationRequired(with notebookItemTypeToConfirm: INNotebookItemType) -> Self
}

@available(macOS 10.15, iOS 11.0, watchOS 4.0, *)
@available(macOS, unavailable)
@available(tvOS, unavailable)
extension INNotebookItemTypeResolutionResult {
  @nonobjc static func disambiguation(with notebookItemTypesToDisambiguate: [INNotebookItemType]) -> Self
}
