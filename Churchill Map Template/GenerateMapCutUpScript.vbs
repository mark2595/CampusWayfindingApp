' Name: Generate Map Cut Up Script for CWA CScript Version 0.1
' File: GenerateMapCutUpScript.vbs
' Licence: N/A
' Author: Mark Albanese
' Date: 11 December 2020
' Version: 0.1
' Release: 1
' Language: VBScript
' Compiler: N/A
' Notes: This script can only be run from cscript.exe command line.
'		 you use it to generate scripts to be used with ImageMagick to cut up the PNG files, 
'		 so that they can be imported into CWA at different zoom levels.
'		 It accepts 5 parameters, They are accepted in plain text, separated by a space.
'		 The parameters are [Zoom level (1 to 28*)] [xStart] [xEnd] [yStart] [yEnd]
'		
'		Notes: 
'		 *CWA starts at 11, and there is no check on this number, so it can go 1 to 1000 if you'd like. 
'		
'		You will hopefully have some understanding how the www.maptiler.com system reads overlay maps for CWA, 
'		
'		if not, you will need to refer to the following website:
'		https://www.maptiler.com/google-maps-coordinates-tile-bounds-projection/
'		
'		Or perhaps look at one of the template files in the repo: "Churchill Map Template\17\17_template.png"
'		Take note of the numbering system, you will see a few labels: Google, TMS and Zoom 17.
'		Obviously the easiest one to work out is Zoom level 17, so our first parameter is 17, 
'		Next, we need to figure out what folders we need to make and what to name the image files.
'		The www.maptiler.com system as a file structure like the following:
'		
'		Folder \ File Name
'		
'		For example:
'		3803131\2581043.png
'		3803131\2581041.png
'		
'		Referring back to the Churchill Map Template\17\17_template.png, The folders go across the map, so in this case we get 118846 to 118850.
'		
'		118846 is our xStart parameter and 118850 is our xEnd parameter, so our command line currently looks like this: 
'		
'		GenerateMapCutUpScript.vbs 17 118846 118850 yStart yEnd
'		
'		Next, we need to find out our yStart and yEnd.
'		
'		To get these numbers we go down the map template from the left-hand side, looking at the second number, listed on the line that says "Google:", 
'		in our example case this is 80657, this is our yStart number then we go all the way to the bottom on the image for the yEnd number, 
'		like before this is the second number, listed on the line that says "Google:", in this case 80659.
'		
'		So, our command line now looks like the following: 
'		
'		GenerateMapCutUpScript.vbs 17 118846 118850 80657 80659
'		  
' Usage: Save as "GenerateMapCutUpScript.vbs"
'        Run this from command line using cscript.exe, eg: cscript C:\path\to\script\GenerateMapCutUpScript.vbs

Set objShell = wscript.createobject("wscript.shell")
Set objStdOut = WScript.StdOut
Set objStdIn = WScript.StdIn
Set objFSO = Createobject("Scripting.FileSystemObject")

Select Case WScript.Arguments.Count
Case 0
	objStdOut.Write "Zoom level: "
    zoomLevel = objStdIn.ReadLine
	objStdOut.Write "xStart: "
    xStart = objStdIn.ReadLine
	objStdOut.Write "xEnd: "
    xEnd = objStdIn.ReadLine
	objStdOut.Write "yStart: "
    yStart = objStdIn.ReadLine
	objStdOut.Write "yEnd: "
    yEnd = objStdIn.ReadLine
Case 1
	objStdOut.Write "xStart: "
    xStart = objStdIn.ReadLine
	objStdOut.Write "xEnd: "
    xEnd = objStdIn.ReadLine
	objStdOut.Write "yStart: "
    yStart = objStdIn.ReadLine
	objStdOut.Write "yEnd: "
    yEnd = objStdIn.ReadLine
Case 2
	objStdOut.Write "xEnd: "
    xEnd = objStdIn.ReadLine
	objStdOut.Write "yStart: "
    yStart = objStdIn.ReadLine
	objStdOut.Write "yEnd: "
    yEnd = objStdIn.ReadLine
Case 3
	objStdOut.Write "yStart: "
    yStart = objStdIn.ReadLine
	objStdOut.Write "yEnd: "
    yEnd = objStdIn.ReadLine
Case 4
	objStdOut.Write "yEnd: "
    yEnd = objStdIn.ReadLine
Case Else
		zoomLevel = WScript.Arguments(0)
		xStart = WScript.Arguments(1)
		xEnd = WScript.Arguments(2)
	    yStart = WScript.Arguments(3)
		yEnd = WScript.Arguments(4)
End Select

Set File = objFSO.CreateTextFile(objShell.CurrentDirectory & "\" & zoomLevel & "\" & "CutImageUp" & zoomLevel & ".bat",True)
File.Write "@echo off"
File.Write "set filepath=%cd%"
File.Write "cd ../../"
File.Write "echo %filepath%"
File.Write "echo %cd%"
File.Write "mkdir ""17"
File.Close
