// SSDT to disable the SDXC device. SSDT for disabling the SDXC device within macOS. Used to fix various bugs caused by unsupported SD card reader.

DefinitionBlock ("", "SSDT", 2, "cbOSX", "noSDXC", 0x00001000)
{
    External (_SB_.PCI0.SDXC, DeviceObj)
    
    Scope (\_SB.PCI0.SDXC)
    {
        Method (_STA, 0, NotSerialized) // _STA: Status
        {
            If (_OSI ("Darwin"))
            {
                Return (Zero)
            }
            Else
            {
                Return (0x0F)
            }
     
         }
    
     }
 
}
 
 
 
