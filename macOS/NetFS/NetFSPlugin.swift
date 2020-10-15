
struct NetFSMountInterface_V1 {
  var _reserved: UnsafeMutableRawPointer!
  var QueryInterface: (@convention(c) (UnsafeMutableRawPointer?, REFIID, UnsafeMutablePointer<LPVOID?>?) -> HRESULT)!
  var AddRef: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!
  var Release: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!
  var CreateSessionRef: (@convention(c) (UnsafeMutablePointer<UnsafeMutableRawPointer?>?) -> netfsError)!
  var GetServerInfo: (@convention(c) (CFURL?, UnsafeMutableRawPointer?, CFDictionary?, UnsafeMutablePointer<Unmanaged<CFDictionary>?>?) -> netfsError)!
  var ParseURL: (@convention(c) (CFURL?, UnsafeMutablePointer<Unmanaged<CFDictionary>?>?) -> netfsError)!
  var CreateURL: (@convention(c) (CFDictionary?, UnsafeMutablePointer<Unmanaged<CFURL>?>?) -> netfsError)!
  var OpenSession: (@convention(c) (CFURL?, UnsafeMutableRawPointer?, CFDictionary?, UnsafeMutablePointer<Unmanaged<CFDictionary>?>?) -> netfsError)!
  var EnumerateShares: (@convention(c) (UnsafeMutableRawPointer?, CFDictionary?, UnsafeMutablePointer<Unmanaged<CFDictionary>?>?) -> netfsError)!
  var Mount: (@convention(c) (UnsafeMutableRawPointer?, CFURL?, CFString?, CFDictionary?, UnsafeMutablePointer<Unmanaged<CFDictionary>?>?) -> netfsError)!
  var Cancel: (@convention(c) (UnsafeMutableRawPointer?) -> netfsError)!
  var CloseSession: (@convention(c) (UnsafeMutableRawPointer?) -> netfsError)!
  var GetMountInfo: (@convention(c) (CFString?, UnsafeMutablePointer<Unmanaged<CFDictionary>?>?) -> netfsError)!
  init()
  init(_reserved: UnsafeMutableRawPointer!, QueryInterface: (@convention(c) (UnsafeMutableRawPointer?, REFIID, UnsafeMutablePointer<LPVOID?>?) -> HRESULT)!, AddRef: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!, Release: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!, CreateSessionRef: (@convention(c) (UnsafeMutablePointer<UnsafeMutableRawPointer?>?) -> netfsError)!, GetServerInfo: (@convention(c) (CFURL?, UnsafeMutableRawPointer?, CFDictionary?, UnsafeMutablePointer<Unmanaged<CFDictionary>?>?) -> netfsError)!, ParseURL: (@convention(c) (CFURL?, UnsafeMutablePointer<Unmanaged<CFDictionary>?>?) -> netfsError)!, CreateURL: (@convention(c) (CFDictionary?, UnsafeMutablePointer<Unmanaged<CFURL>?>?) -> netfsError)!, OpenSession: (@convention(c) (CFURL?, UnsafeMutableRawPointer?, CFDictionary?, UnsafeMutablePointer<Unmanaged<CFDictionary>?>?) -> netfsError)!, EnumerateShares: (@convention(c) (UnsafeMutableRawPointer?, CFDictionary?, UnsafeMutablePointer<Unmanaged<CFDictionary>?>?) -> netfsError)!, Mount: (@convention(c) (UnsafeMutableRawPointer?, CFURL?, CFString?, CFDictionary?, UnsafeMutablePointer<Unmanaged<CFDictionary>?>?) -> netfsError)!, Cancel: (@convention(c) (UnsafeMutableRawPointer?) -> netfsError)!, CloseSession: (@convention(c) (UnsafeMutableRawPointer?) -> netfsError)!, GetMountInfo: (@convention(c) (CFString?, UnsafeMutablePointer<Unmanaged<CFDictionary>?>?) -> netfsError)!)
}
struct NetFSInterface {
  var _interface: UnsafeMutableRawPointer!
  var _factoryID: Unmanaged<CFUUID>!
  var _refCount: UInt32
  init()
  init(_interface: UnsafeMutableRawPointer!, _factoryID: Unmanaged<CFUUID>!, _refCount: UInt32)
}
func NetFSInterface_AddRef(_: UnsafeMutableRawPointer!) -> ULONG
func NetFSInterface_Release(_: UnsafeMutableRawPointer!) -> ULONG
func NetFS_CreateInterface(_ factoryID: CFUUID!, _ interfaceFTbl: UnsafeMutableRawPointer!) -> UnsafeMutablePointer<NetFSInterface>!
func NetFSQueryInterface(_: UnsafeMutableRawPointer!, _ iid: REFIID, _ ppv: UnsafeMutablePointer<LPVOID?>!) -> HRESULT
