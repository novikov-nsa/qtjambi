; Installer script for qt jambi for windows
;

CRCCheck force
XPStyle on
SetCompressor /FINAL /SOLID lzma
SetCompressorDictSize 64

!define v 4.6.2
!define QtDir c:\qt\4.6.2
!define comp msvc2008

; The default installation directory
InstallDir c:\qtjambi-${v}

; The name of the installer
Name "Qt Jambi Installer"

; The file to write
OutFile "setup-qt-jambi-${v}-win32.exe"


; Request application privileges for Windows Vista
RequestExecutionLevel user

;--------------------------------

; Pages

Page directory
Page instfiles

;--------------------------------

; The stuff to install
Section "" ;No components page, name is not important

  ; Set output path to the installation directory.
  SetOutPath $INSTDIR
  
  ; Put file there
  File dist\win\QtJambi.exe
  File qtjambi-${v}.jar
  File qtjambi-designer-${v}.jar
  File qtjambi-examples-${v}.jar
  File qtjambi-util-${v}.jar
  File qtjambi-win32-${comp}-${v}.jar
  File set_qtjambi_env.bat
  File dist\changes-${v}
  File dist\win\designer.bat
  File dist\install.html
  File dist\LICENSE.GPL3
  File dist\LICENSE.LGPL
  File dist\readme.html
  
  File /r java\src\qtjambi-examples\com
  
  SetOutPath $INSTDIR\bin
  File bin\com_trolltech_qt_core.dll
  File bin\com_trolltech_qt_gui.dll
  File bin\com_trolltech_qt_help.dll
  File bin\com_trolltech_qt_multimedia.dll
  File bin\com_trolltech_qt_network.dll
  File bin\com_trolltech_qt_opengl.dll
  File bin\com_trolltech_qt_phonon.dll
  File bin\com_trolltech_qt_script.dll
  File bin\com_trolltech_qt_scripttools.dll
  File bin\com_trolltech_qt_sql.dll
  File bin\com_trolltech_qt_svg.dll
  File bin\com_trolltech_qt_webkit.dll
  File bin\com_trolltech_qt_xml.dll
  File bin\com_trolltech_qt_xmlpatterns.dll
  File bin\com_trolltech_tools_designer.dll
  File bin\juic.exe
  File bin\qtjambi.dll
  File ${QtDir}\bin\designer.exe
  File ${QtDir}\bin\linguist.exe
  File ${QtDir}\bin\lrelease.exe
  File ${QtDir}\bin\lupdate.exe
  File ${QtDir}\bin\phonon4.dll
  File ${QtDir}\bin\QtCore4.dll
  File ${QtDir}\bin\QtGui4.dll
  File ${QtDir}\bin\QtHelp4.dll
  File ${QtDir}\bin\QtMultimedia4.dll
  File ${QtDir}\bin\QtNetwork4.dll
  File ${QtDir}\bin\QtOpenGL4.dll
  File ${QtDir}\bin\QtSql4.dll
  File ${QtDir}\bin\QtScript4.dll
  File ${QtDir}\bin\QtScriptTools4.dll
  File ${QtDir}\bin\QtSvg4.dll
  File ${QtDir}\bin\QtWebKit4.dll
  File ${QtDir}\bin\QtXml4.dll
  File ${QtDir}\bin\QtXmlPatterns4.dll
  File ${QtDir}\bin\QtDesignerComponents4.dll
  File ${QtDir}\bin\QtDesigner4.dll
  
  File /r "c:\Program Files (x86)\Microsoft Visual Studio 9.0\VC\redist\x86\Microsoft.VC90.CRT"
  
  
  SetOutPath $INSTDIR\lib
  File bin\com_trolltech_qt_core.dll
  File bin\com_trolltech_qt_gui.dll
  File bin\com_trolltech_qt_multimedia.dll
  File bin\com_trolltech_qt_network.dll
  File bin\com_trolltech_qt_opengl.dll
  File bin\com_trolltech_qt_phonon.dll
  File bin\com_trolltech_qt_sql.dll
  File bin\com_trolltech_qt_svg.dll
  File bin\com_trolltech_qt_script.dll
  File bin\com_trolltech_qt_scripttools.dll
  File bin\com_trolltech_qt_webkit.dll
  File bin\com_trolltech_qt_xml.dll
  File bin\com_trolltech_qt_xmlpatterns.dll
  File bin\com_trolltech_tools_designer.dll
  File bin\qtjambi.dll
  
  SetOutPath $INSTDIR\plugins
  File /r ${QtDir}\plugins\*.dll
  File /r ${QtDir}\plugins\*.dll
  File /r plugins\designer
  File /r plugins\qtjambi
  
SectionEnd ; end the section