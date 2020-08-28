
@available(macOS 10.9, *)
func CWKeychainFindWiFiPassword(_ domain: CWKeychainDomain, _ ssid: Data, _ password: AutoreleasingUnsafeMutablePointer<NSString?>?) -> OSStatus
@available(macOS 10.9, *)
func CWKeychainSetWiFiPassword(_ domain: CWKeychainDomain, _ ssid: Data, _ password: String) -> OSStatus
@available(macOS 10.9, *)
func CWKeychainDeleteWiFiPassword(_ domain: CWKeychainDomain, _ ssid: Data) -> OSStatus
@available(macOS 10.9, *)
func CWKeychainFindWiFiEAPUsernameAndPassword(_ domain: CWKeychainDomain, _ ssid: Data, _ username: AutoreleasingUnsafeMutablePointer<NSString?>?, _ password: AutoreleasingUnsafeMutablePointer<NSString?>?) -> OSStatus
@available(macOS 10.9, *)
func CWKeychainSetWiFiEAPUsernameAndPassword(_ domain: CWKeychainDomain, _ ssid: Data, _ username: String?, _ password: String?) -> OSStatus
@available(macOS 10.9, *)
func CWKeychainDeleteWiFiEAPUsernameAndPassword(_ domain: CWKeychainDomain, _ ssid: Data) -> OSStatus
@available(macOS 10.9, *)
func CWKeychainCopyWiFiEAPIdentity(_ domain: CWKeychainDomain, _ ssid: Data, _ identity: UnsafeMutablePointer<Unmanaged<SecIdentity>?>?) -> OSStatus
@available(macOS 10.9, *)
func CWKeychainSetWiFiEAPIdentity(_ domain: CWKeychainDomain, _ ssid: Data, _ identity: SecIdentity?) -> OSStatus
@available(macOS 10.7, *)
func CWKeychainCopyEAPIdentityList(_ list: UnsafeMutablePointer<Unmanaged<CFArray>?>?) -> OSStatus
@available(macOS 10.7, *)
func CWMergeNetworks(_ networks: Set<CWNetwork>) -> Set<CWNetwork>
