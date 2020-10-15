
@available(macOS 10.2, *)
func KextManagerCreateURLForBundleIdentifier(_ allocator: CFAllocator!, _ kextIdentifier: CFString!) -> Unmanaged<CFURL>!
@available(macOS 10.6, *)
func KextManagerLoadKextWithIdentifier(_ kextIdentifier: CFString!, _ dependencyKextAndFolderURLs: CFArray!) -> OSReturn
@available(macOS 10.6, *)
func KextManagerLoadKextWithURL(_ kextURL: CFURL!, _ dependencyKextAndFolderURLs: CFArray!) -> OSReturn
@available(macOS 10.7, *)
func KextManagerUnloadKextWithIdentifier(_ kextIdentifier: CFString!) -> OSReturn
@available(macOS 10.7, *)
func KextManagerCopyLoadedKextInfo(_ kextIdentifiers: CFArray!, _ infoKeys: CFArray!) -> Unmanaged<CFDictionary>!
