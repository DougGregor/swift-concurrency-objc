
extension INSearchForNotebookItemsIntent {
  @available(watchOS, introduced: 4.0, deprecated: 4.2, message: "Use the designated initializer instead")
  convenience init(title: INSpeakableString?, content: String?, itemType: INNotebookItemType, status: INTaskStatus, location: CLPlacemark?, locationSearchType: INLocationSearchType, dateTime: INDateComponentsRange?, dateSearchType: INDateSearchType)
  @available(watchOS, introduced: 4.2, deprecated: 6.0, message: "Use the designated initializer instead")
  convenience init(title: INSpeakableString?, content: String?, itemType: INNotebookItemType, status: INTaskStatus, location: CLPlacemark?, locationSearchType: INLocationSearchType, dateTime: INDateComponentsRange?, dateSearchType: INDateSearchType, notebookItemIdentifier: String?)
}
