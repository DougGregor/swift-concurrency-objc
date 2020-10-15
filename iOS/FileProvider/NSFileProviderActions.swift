
extension NSFileProviderExtension {
  @available(iOS 8.0, *)
  func importDocument(at fileURL: URL, toParentItemIdentifier parentItemIdentifier: NSFileProviderItemIdentifier, completionHandler: @escaping (NSFileProviderItem?, Error?) -> Void)
  @available(iOS 8.0, *)
  func importDocument(at fileURL: URL, toParentItemIdentifier parentItemIdentifier: NSFileProviderItemIdentifier) async throws -> NSFileProviderItem?
  @available(iOS 8.0, *)
  func createDirectory(withName directoryName: String, inParentItemIdentifier parentItemIdentifier: NSFileProviderItemIdentifier, completionHandler: @escaping (NSFileProviderItem?, Error?) -> Void)
  @available(iOS 8.0, *)
  func createDirectory(withName directoryName: String, inParentItemIdentifier parentItemIdentifier: NSFileProviderItemIdentifier) async throws -> NSFileProviderItem?
  @available(iOS 8.0, *)
  func renameItem(withIdentifier itemIdentifier: NSFileProviderItemIdentifier, toName itemName: String, completionHandler: @escaping (NSFileProviderItem?, Error?) -> Void)
  @available(iOS 8.0, *)
  func renameItem(withIdentifier itemIdentifier: NSFileProviderItemIdentifier, toName itemName: String) async throws -> NSFileProviderItem?
  @available(iOS 8.0, *)
  func reparentItem(withIdentifier itemIdentifier: NSFileProviderItemIdentifier, toParentItemWithIdentifier parentItemIdentifier: NSFileProviderItemIdentifier, newName: String?, completionHandler: @escaping (NSFileProviderItem?, Error?) -> Void)
  @available(iOS 8.0, *)
  func reparentItem(withIdentifier itemIdentifier: NSFileProviderItemIdentifier, toParentItemWithIdentifier parentItemIdentifier: NSFileProviderItemIdentifier, newName: String?) async throws -> NSFileProviderItem?
  @available(iOS 8.0, *)
  func trashItem(withIdentifier itemIdentifier: NSFileProviderItemIdentifier, completionHandler: @escaping (NSFileProviderItem?, Error?) -> Void)
  @available(iOS 8.0, *)
  func trashItem(withIdentifier itemIdentifier: NSFileProviderItemIdentifier) async throws -> NSFileProviderItem?
  @available(iOS 8.0, *)
  func untrashItem(withIdentifier itemIdentifier: NSFileProviderItemIdentifier, toParentItemIdentifier parentItemIdentifier: NSFileProviderItemIdentifier?, completionHandler: @escaping (NSFileProviderItem?, Error?) -> Void)
  @available(iOS 8.0, *)
  func untrashItem(withIdentifier itemIdentifier: NSFileProviderItemIdentifier, toParentItemIdentifier parentItemIdentifier: NSFileProviderItemIdentifier?) async throws -> NSFileProviderItem?
  @available(iOS 8.0, *)
  func deleteItem(withIdentifier itemIdentifier: NSFileProviderItemIdentifier, completionHandler: @escaping (Error?) -> Void)
  @available(iOS 8.0, *)
  func deleteItem(withIdentifier itemIdentifier: NSFileProviderItemIdentifier) async throws
  @available(iOS 8.0, *)
  func setLastUsedDate(_ lastUsedDate: Date?, forItemIdentifier itemIdentifier: NSFileProviderItemIdentifier, completionHandler: @escaping (NSFileProviderItem?, Error?) -> Void)
  @available(iOS 8.0, *)
  func setLastUsedDate(_ lastUsedDate: Date?, forItemIdentifier itemIdentifier: NSFileProviderItemIdentifier) async throws -> NSFileProviderItem?
  @available(iOS 8.0, *)
  func setTagData(_ tagData: Data?, forItemIdentifier itemIdentifier: NSFileProviderItemIdentifier, completionHandler: @escaping (NSFileProviderItem?, Error?) -> Void)
  @available(iOS 8.0, *)
  func setTagData(_ tagData: Data?, forItemIdentifier itemIdentifier: NSFileProviderItemIdentifier) async throws -> NSFileProviderItem?
  @available(iOS 8.0, *)
  func setFavoriteRank(_ favoriteRank: NSNumber?, forItemIdentifier itemIdentifier: NSFileProviderItemIdentifier, completionHandler: @escaping (NSFileProviderItem?, Error?) -> Void)
  @available(iOS 8.0, *)
  func setFavoriteRank(_ favoriteRank: NSNumber?, forItemIdentifier itemIdentifier: NSFileProviderItemIdentifier) async throws -> NSFileProviderItem?
}
