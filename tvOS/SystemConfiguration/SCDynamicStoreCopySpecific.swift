
func SCDynamicStoreCopyComputerName(_ store: SCDynamicStore?, _ nameEncoding: UnsafeMutablePointer<CFStringEncoding>?) -> CFString?
func SCDynamicStoreCopyLocalHostName(_ store: SCDynamicStore?) -> CFString?
func SCDynamicStoreCopyProxies(_ store: SCDynamicStore?) -> CFDictionary?
