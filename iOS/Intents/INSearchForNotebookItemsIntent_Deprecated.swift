
extension INSearchForNotebookItemsIntent {
  @available(iOS, introduced: 11.0, deprecated: 11.2, message: "Use the designated initializer instead")
  convenience init(title: INSpeakableString?, content: String?, itemType: INNotebookItemType, status: INTaskStatus, location: CLPlacemark?, locationSearchType: INLocationSearchType, dateTime: INDateComponentsRange?, dateSearchType: INDateSearchType)
  @available(iOS, introduced: 11.2, deprecated: 13.0, message: "Use the designated initializer instead")
  convenience init(title: INSpeakableString?, content: String?, itemType: INNotebookItemType, status: INTaskStatus, location: CLPlacemark?, locationSearchType: INLocationSearchType, dateTime: INDateComponentsRange?, dateSearchType: INDateSearchType, notebookItemIdentifier: String?)
}
