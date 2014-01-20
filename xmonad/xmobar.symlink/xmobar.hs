Config {
    font = "xft:Inconsolata for Powerline:size=10:antialias=true"
  , bgColor = "#1d1f21"
  , fgColor = "#c5c8c6"
  , position = Static { xpos = 0 , ypos = -2, width = 1700, height = 16 }
  , lowerOnStart = True
  , commands = [
      Run MultiCpu ["-t", "Cpu: <total0>% <total1>% <total2>% <total3>%", "-L", "40", "-H", "60", "-l", "#c5c8c6", "-n", "#f0c674", "-h", "red"] 50
--     , Run CpuFreq ["-L", "0", "-H", "2", "-l", "lightblue", "-n","white", "-h", "red"] 50
    , Run CoreTemp ["-t", "<core0>C <core1>C", "-L", "40", "-H", "60", "-l", "#b5bd68", "-n", "#f0c674", "-h", "red"] 50
    , Run Memory ["-t","Mem: <usedratio>%"] 10
    , Run Swap [] 10
    , Run Wireless "wlan0" ["-t","wlan0: <essid> <quality>%","-L","0","-H","32","--normal","#cc6666","--high","#b5bd68"] 10
    , Run Battery ["-t","Batt: <left>% <timeleft>","-L","25","-H","75","--low","#FF0000","--normal","#c5c8c6","--high","#b5bd68"] 600
    , Run Com "/home/ben/.xmobar/getvolume.sh" [] "myVolume" 10
    , Run Date "%a %b %_d <fc=#f0c674>%I:%M %p</fc>" "date" 10
    , Run StdinReader
    , Run Network "wlan0" ["-t", "<rx>KB|<tx>KB"] 50
  ]
  , sepChar = "%"
  , alignSep = "}{"
  , template = "%StdinReader% } %multicpu% %coretemp% %wlan0wi% %wlan0% { %memory% %swap% %battery% Vol: %myVolume% %date%"
}
