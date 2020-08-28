
class NSOpenPanel : NSSavePanel {
  var urls: [URL] { get }
  var resolvesAliases: Bool
  var canChooseDirectories: Bool
  var allowsMultipleSelection: Bool
  var canChooseFiles: Bool
  @available(macOS 10.10, *)
  var canResolveUbiquitousConflicts: Bool
  @available(macOS 10.10, *)
  var canDownloadUbiquitousContents: Bool
  @available(macOS 10.11, *)
  var isAccessoryViewDisclosed: Bool
}
extension NSOpenPanel {
}
