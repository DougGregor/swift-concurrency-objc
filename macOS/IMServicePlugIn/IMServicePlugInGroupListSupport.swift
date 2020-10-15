
protocol IMServicePlugInGroupListSupport {
  @available(macOS, introduced: 10.7, deprecated: 10.13)
  func requestGroupList()
}
protocol IMServicePlugInGroupListEditingSupport : IMServicePlugInGroupListSupport {
  @available(macOS, introduced: 10.7, deprecated: 10.13)
  func addGroups(_ groupNames: [Any]!)
  @available(macOS, introduced: 10.7, deprecated: 10.13)
  func removeGroups(_ groupNames: [Any]!)
  @available(macOS, introduced: 10.7, deprecated: 10.13)
  func renameGroup(_ oldGroupName: String!, toGroup newGroupName: String!)
  @available(macOS, introduced: 10.7, deprecated: 10.13)
  func addHandles(_ handles: [Any]!, toGroup groupName: String!)
  @available(macOS, introduced: 10.7, deprecated: 10.13)
  func removeHandles(_ handles: [Any]!, fromGroup groupName: String!)
}
protocol IMServicePlugInGroupListOrderingSupport : IMServicePlugInGroupListSupport {
  func reorderGroups(_ groupNames: [Any]!)
  @available(macOS, introduced: 10.7, deprecated: 10.13)
  func reorderHandles(_ handles: [Any]!, inGroup groupName: String!)
}
protocol IMServicePlugInGroupListAuthorizationSupport : IMServicePlugInGroupListSupport {
  @available(macOS, introduced: 10.7, deprecated: 10.13)
  func sendAuthorizationRequest(toHandle handle: String!)
  @available(macOS, introduced: 10.7, deprecated: 10.13)
  func acceptAuthorizationRequest(fromHandle handle: String!)
  @available(macOS, introduced: 10.7, deprecated: 10.13)
  func declineAuthorizationRequest(fromHandle handle: String!)
}
protocol IMServicePlugInGroupListHandlePictureSupport : NSObjectProtocol {
  @available(macOS, introduced: 10.7, deprecated: 10.13)
  func requestPicture(forHandle handle: String!, withIdentifier identifier: String!)
}
protocol IMServiceApplicationGroupListSupport : IMServiceApplication {
  @available(macOS, introduced: 10.7, deprecated: 10.13)
  @asyncHandler func plugInDidUpdateGroupList(_ groups: [Any]!, error: Error!)
}
protocol IMServiceApplicationGroupListAuthorizationSupport : IMServiceApplicationGroupListSupport {
  @available(macOS, introduced: 10.7, deprecated: 10.13)
  @asyncHandler func plugInDidReceiveAuthorizationRequest(fromHandle handle: String!)
}
