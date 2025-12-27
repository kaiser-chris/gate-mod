xcopy /y .\content_load.json %1
xcopy /y .\dlc_signature %1
start /affinity 1FFF "" %2 -debug_mode