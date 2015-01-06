@echo off
rem setup console
title RubberDucky Programming

@echo ____________________________________________
@echo [#] RubberDucky Programming Script
@echo [-] Programming File: [%1]

if "%1"=="" ( goto :bail )

if not exist %1 ( goto :bail )

batchisp -device at32uc3b0256 -hardware usb -operation erase f memory flash blankcheck loadbuffer %1 program verify start reset 0   

goto :done

:bail
@echo [!] Please provide valid input (.hex) file!

:done
goto :eof