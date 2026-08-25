This is a modified release for use with DreamCheeky Big Red Button...

There are 2 differences from the original version available at http://dreamcheekyusb.codeplex.com
a) Default USB device ID: 0x1D34,0x000d,0
b) Cover is open and Button is pressed: Byte 1 value = 0x16

Source of these values: http://files.dreamcheeky.com.s3.amazonaws.com/uploads/dc/902/Big%20Red%20Button%20-%20Developer%20Manual%20v1.0.pdf

EXE built on 10/02/2012 using Visual Studio 2010 (v10.0.40219.1 SP1Rel)
EXE tested and working with two different DreamCheeky Big Red Button hardware purchased from Amazon around 08/04/2012
All credit goes to original author: http://www.codeplex.com/site/users/view/gbrayut
Released for use at your own risk, released under the same Apache License V2.0

DreamCheeky Big Red Button:
http://www.dreamcheeky.com/big-red-button
http://www.amazon.com/gp/product/B004D18MCK

Note: The red button is physically no wider than the oval containing George Washington on a US $1 bill
The black base is physically no wider than the left edge of the bill to the top of the T in the word UNITED
Take-away: The button is NOT that big, when compared with other 'USB buttons'

Note: DO NOT use this button as an emergency stop for your robot, laser cutter, R/C lawn mower, etc.
An E-Stop button is supposed to electrically disengage the power source from the device.
See: http://en.wikipedia.org/wiki/Emergency_stop or http://en.wikipedia.org/wiki/Kill_switch

 - - - - - - - - - - - - - - - - - 

[START original readme.txt]

DreamCheekyBTN is a Console based utility for the Dream Cheeky USB "Big Red Stress" buttons. Specifically this was
Created for the Iron Man button, but I assume it works with other Dream Cheeky USB buttons as well.
It was created using the https://github.com/mikeobrien/HidLibrary/ and is released under the Apache License V2.0

The DreamCheekyBTN.exe has command line arguments that will let you run a program whenever the button is pressed or
convert the button press events into a keyboard macro that can perform an action or be picked up by other programs
like AutoHotKey. The code should also support multiple devices, and can be run multiple times for additional triggers.
See below for command line examples or the AutoHotKey.ahk file for a sample AutoHotKey script.

If you are interested in how this works at a high level the general process is:
1. Create HidDevice object using HidLibrary.HidDevices.Enumerate (default VendorID=0x1D34 and ProductID=0x0008)

2. Use a System.Timers.Timer to poll the device every 100ms.

3. First it sends the following command to get the device status:
	public static readonly byte[] cmd_status = new byte[9] { 0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02 };

4. Then it reads from the device one of the following two results:
byte[] btn_Active =   new byte[9] { 0, 0x00, 0x1C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03 };
byte[] btn_InActive = new byte[9] { 0, 0x00, 0x1D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03 };
NOTE: these values were found using the SimpleHIDWrite (http://www.lvr.com/hidpage.htm) and USBTrace programs 

5. If the button is active, it will perform the requested action. The event then cannot be triggered again until after
the button is released and pressed a second time. 

Command Line Usage:
  DreamCheekyBTN.exe [device=...] [options]

Examples:
  DreamCheekyBTN.exe debug MACRO=ASDF~  (ASDF then Enter)
  DreamCheekyBTN.exe MACRO=%+{F1}       (ALT+SHIFT+F1)
  DreamCheekyBTN.exe CMD=c:\temp\test.bat
  DreamCheekyBTN.exe CMD=powershell ARG="-noexit -executionpolicy unrestricted -
File c:\test.ps1"

Device Path:
  Optional, Defaults to first USB device with VID=0x1D34 and PID=0x0008
  Example (VID,PID,Index): device="0x1D34,0x0008,0"
  Example (Path): device="\\?\hid#vid_1d34&pid_0008#6&1067c3dc&0&0000#{4d1e55b2-f16f-11cf-88cb-001111000030}"

Options:
  debug = Print trace statements to Console.Out

CMD: will run specified command when button is pressed
ARG: can be used to specified command arguments
  Example (open calculator): CMD=calc
  Example (run Powershell commands):
     CMD="%SystemRoot%\system32\WindowsPowerShell\v1.0\powershell.exe"
     ARG="-Command \"& {write-host 'BEEP!'; [console]::beep(440,1000);}\""
  NOTE: use ^& instead of & if running from command prompt as & is special character

MACRO: will send specified key sequense to active window via C# Sendkeys
NOTE: +=Shift, ^=CTRL, %=ALT, ~=Return, use () to group characters.
  Example: MACRO="%^g"        (ALT + CTRL + g)
  Example: MACRO="%(asdf)"    (ALT + asdf)

[END original readme.txt]