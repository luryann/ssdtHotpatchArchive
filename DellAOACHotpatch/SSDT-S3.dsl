DefinitionBlock ("", "SSDT", 2, "XPS13", "S3Fix", 0x00001000)
{
    External (_SB_.SS3, IntObj)
    
    Scope (\_SB)
    {
	Name (SS3, One)
}
    
// ACPI patches and renames to enable S3 sleep on macOS. Tested on the Dell XPS 13 7390 2 in 1. 
// The ACPI patch renames S0 to XS0, then enables S3 sleep using the SSDT. 
