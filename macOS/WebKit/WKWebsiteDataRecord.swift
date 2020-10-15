
@available(macOS 10.13.4, *)
let WKWebsiteDataTypeFetchCache: String
@available(macOS 10.11, *)
let WKWebsiteDataTypeDiskCache: String
@available(macOS 10.11, *)
let WKWebsiteDataTypeMemoryCache: String
@available(macOS 10.11, *)
let WKWebsiteDataTypeOfflineWebApplicationCache: String
@available(macOS 10.11, *)
let WKWebsiteDataTypeCookies: String
@available(macOS 10.11, *)
let WKWebsiteDataTypeSessionStorage: String
@available(macOS 10.11, *)
let WKWebsiteDataTypeLocalStorage: String
@available(macOS 10.11, *)
let WKWebsiteDataTypeWebSQLDatabases: String
@available(macOS 10.11, *)
let WKWebsiteDataTypeIndexedDBDatabases: String
@available(macOS 10.13.4, *)
let WKWebsiteDataTypeServiceWorkerRegistrations: String
@available(macOS 10.11, *)
class WKWebsiteDataRecord : NSObject {
  var displayName: String { get }
  var dataTypes: Set<String> { get }
}
