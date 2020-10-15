
@available(macOS 10.3, *)
let kCFStreamErrorDomainFTP: Int32
@available(macOS, introduced: 10.3, deprecated: 10.11, message: "Use NSURLSessionAPI for ftp requests")
let kCFStreamPropertyFTPUserName: CFString
@available(macOS, introduced: 10.3, deprecated: 10.11, message: "Use NSURLSessionAPI for ftp requests")
let kCFStreamPropertyFTPPassword: CFString
@available(macOS, introduced: 10.3, deprecated: 10.11, message: "Use NSURLSessionAPI for ftp requests")
let kCFStreamPropertyFTPUsePassiveMode: CFString
@available(macOS, introduced: 10.3, deprecated: 10.11, message: "Use NSURLSessionAPI for ftp requests")
let kCFStreamPropertyFTPResourceSize: CFString
@available(macOS, introduced: 10.3, deprecated: 10.11, message: "Use NSURLSessionAPI for ftp requests")
let kCFStreamPropertyFTPFetchResourceInfo: CFString
@available(macOS, introduced: 10.3, deprecated: 10.11, message: "Use NSURLSessionAPI for ftp requests")
let kCFStreamPropertyFTPFileTransferOffset: CFString
@available(macOS, introduced: 10.3, deprecated: 10.11, message: "Use NSURLSessionAPI for ftp requests")
let kCFStreamPropertyFTPAttemptPersistentConnection: CFString
@available(macOS, introduced: 10.3, deprecated: 10.11, message: "Use NSURLSessionAPI for ftp requests")
let kCFStreamPropertyFTPProxy: CFString
@available(macOS, introduced: 10.3, deprecated: 10.11, message: "Use NSURLSessionAPI for ftp requests")
let kCFStreamPropertyFTPProxyHost: CFString
@available(macOS, introduced: 10.3, deprecated: 10.11, message: "Use NSURLSessionAPI for ftp requests")
let kCFStreamPropertyFTPProxyPort: CFString
@available(macOS, introduced: 10.3, deprecated: 10.11, message: "Use NSURLSessionAPI for ftp requests")
let kCFStreamPropertyFTPProxyUser: CFString
@available(macOS, introduced: 10.3, deprecated: 10.11, message: "Use NSURLSessionAPI for ftp requests")
let kCFStreamPropertyFTPProxyPassword: CFString
@available(macOS, introduced: 10.3, deprecated: 10.11, message: "Use NSURLSessionAPI for ftp requests")
let kCFFTPResourceMode: CFString
@available(macOS, introduced: 10.3, deprecated: 10.11, message: "Use NSURLSessionAPI for ftp requests")
let kCFFTPResourceName: CFString
@available(macOS, introduced: 10.3, deprecated: 10.11, message: "Use NSURLSessionAPI for ftp requests")
let kCFFTPResourceOwner: CFString
@available(macOS, introduced: 10.3, deprecated: 10.11, message: "Use NSURLSessionAPI for ftp requests")
let kCFFTPResourceGroup: CFString
@available(macOS, introduced: 10.3, deprecated: 10.11, message: "Use NSURLSessionAPI for ftp requests")
let kCFFTPResourceLink: CFString
@available(macOS, introduced: 10.3, deprecated: 10.11, message: "Use NSURLSessionAPI for ftp requests")
let kCFFTPResourceSize: CFString
@available(macOS, introduced: 10.3, deprecated: 10.11, message: "Use NSURLSessionAPI for ftp requests")
let kCFFTPResourceType: CFString
@available(macOS, introduced: 10.3, deprecated: 10.11, message: "Use NSURLSessionAPI for ftp requests")
let kCFFTPResourceModDate: CFString
@available(macOS, introduced: 10.3, deprecated: 10.11, message: "Use NSURLSessionAPI for ftp requests")
func CFReadStreamCreateWithFTPURL(_ alloc: CFAllocator?, _ ftpURL: CFURL) -> Unmanaged<CFReadStream>
@available(macOS, introduced: 10.3, deprecated: 10.11, message: "Use NSURLSessionAPI for ftp requests")
func CFFTPCreateParsedResourceListing(_ alloc: CFAllocator?, _ buffer: UnsafePointer<UInt8>, _ bufferLength: CFIndex, _ parsed: UnsafeMutablePointer<Unmanaged<CFDictionary>?>?) -> CFIndex
@available(macOS, introduced: 10.3, deprecated: 10.11, message: "Use NSURLSessionAPI for ftp requests")
func CFWriteStreamCreateWithFTPURL(_ alloc: CFAllocator?, _ ftpURL: CFURL) -> Unmanaged<CFWriteStream>
