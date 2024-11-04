// SSDT for disabling the HDAS device within macOS. Used to fix various bugs caused by unsupported speakers.

DefinitionBlock ("", "SSDT", 2, "cbOSX", "NOHDAS", 0x00001000)
{
    External (_SB_.PCI0.HDAS, DeviceObj)
    
    Scope (\_SB.PCI0.HDAS)
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
 
 
