
@available(tvOS 11.0, *)
class INNotebookItemTypeResolutionResult : INIntentResolutionResult {
  class func success(with resolvedNotebookItemType: INNotebookItemType) -> Self
  class func __disambiguationWithNotebookItemTypes(toDisambiguate notebookItemTypesToDisambiguate: [NSNumber]) -> Self
  class func confirmationRequired(with notebookItemTypeToConfirm: INNotebookItemType) -> Self
}
