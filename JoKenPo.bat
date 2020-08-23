@echo off 
title JO KEN PO
mode 70, 20
:INICIO
cls
echo
echo=======================================================================
echo                              JO KEN PO
echo=======================================================================
set /p jogador=DIGITE O SEU NOME:
if %jogador% neq " " goto :MENU 
else
set empate =0
set vitoria =0
set derrota =0
echo DIGITE ALGUM NOME
pause
goto :INICIO

:JOGO
color %numero%f
set op=0
set numero=0
echo.
echo [1] PEDRA
echo [2] PAPEL
echo [3] TESOURA
echo [4] DOLLYNHO
echo [5] COROTINHO
set /p op=ESCOLHA UMA OPCAO:
echo.
if %op% equ 1 goto :PEDRA 
if %op% equ 2 goto :PAPEL
if %op% equ 3 goto :TESOURA
if %op% equ 4 goto :DOLLYNHO
if %op% equ 5 goto :COROTINHO else
echo ESCOLHA UMA OPCAO VALIDA
pause
cls
goto :JOGO

:MENU
echo.
echo [1] JOGAR
echo [2] REGRAS
echo [3] SAIR
echo.
set /p menu=ESCOLHA UMA OPCAO: 
if %menu% equ 1 (cls
goto :JOGO )
if %menu% equ 2 (
goto :REGRA)
if %menu% equ 3  goto :SAIR else 
echo ESCOLHA UMA OPCAO VALIDA
pause
cls
goto :MENU

:PEDRA
set /a numero=(%random%/5000)+1
if %numero% gtr 5 (goto pedra) else (
if %op% equ 1 echo VOCE JOGOU: PEDRA
if %op% equ 2 echo VOCE JOGOU: PAPEL
if %op% equ 3 echo VOCE JOGOU: TESOURA
if %op% equ 4 echo VOCE JOGOU: DOLLYNHO
if %op% equ 5 echo VOCE JOGOU: COROTINHO
if %numero% equ 1 echo A CPU JOGOU: PEDRA
if %numero% equ 2 echo A CPU JOGOU: PAPEL
if %numero% equ 3 echo A CPU JOGOU: TESOURA
if %numero% equ 4 echo A CPU JOGOU: DOLLYNHO
if %numero% equ 5 echo A CPU JOGOU: COROTINHO
if %numero% equ 1 goto :EMPATE
if %numero% equ 2 goto :PERDEU
if %numero% equ 3 goto :VENCEU
if %numero% equ 4 goto :VENCEU
if %numero% equ 5 goto :PERDEU)
pause

:PAPEL
set /a numero=(%random%/5000)+1
if %numero% gtr 5 (goto papel) else (
if %op% equ 1 echo VOCE JOGOU: PEDRA
if %op% equ 2 echo VOCE JOGOU: PAPEL
if %op% equ 3 echo VOCE JOGOU: TESOURA
if %op% equ 4 echo VOCE JOGOU: DOLLYNHO
if %op% equ 5 echo VOCE JOGOU: COROTINHO
if %numero% equ 1 echo A CPU JOGOU: PEDRA
if %numero% equ 2 echo A CPU JOGOU: PAPEL
if %numero% equ 3 echo A CPU JOGOU: TESOURA
if %numero% equ 4 echo A CPU JOGOU: DOLLYNHO
if %numero% equ 5 echo A CPU JOGOU: COROTINHO
if %numero% equ 2 goto :EMPATE
if %numero% equ 3 goto :PERDEU
if %numero% equ 1 goto :VENCEU
if %numero% equ 4 goto :VENCEU
if %numero% equ 5 goto :PERDEU)
pause

:TESOURA
set /a numero=(%random%/5000)+1
if %numero% gtr 5 (goto tesoura) else (
if %op% equ 1 echo VOCE JOGOU: PEDRA
if %op% equ 2 echo VOCE JOGOU: PAPEL
if %op% equ 3 echo VOCE JOGOU: TESOURA
if %op% equ 4 echo VOCE JOGOU: DOLLYNHO
if %op% equ 5 echo VOCE JOGOU: COROTINHO
if %numero% equ 1 echo A CPU JOGOU: PEDRA
if %numero% equ 2 echo A CPU JOGOU: PAPEL
if %numero% equ 3 echo A CPU JOGOU: TESOURA
if %numero% equ 4 echo A CPU JOGOU: DOLLYNHO
if %numero% equ 5 echo A CPU JOGOU: COROTINHO
if %numero% equ 3 goto :EMPATE
if %numero% equ 1 goto :PERDEU
if %numero% equ 2 goto :VENCEU
if %numero% equ 4 goto :VENCEU
if %numero% equ 5 goto :PERDEU)
pause

:COROTINHO
set /a numero=(%random%/5000)+1
if %numero% gtr 5 (goto tesoura) else (
if %op% equ 1 echo VOCE JOGOU: PEDRA
if %op% equ 2 echo VOCE JOGOU: PAPEL
if %op% equ 3 echo VOCE JOGOU: TESOURA
if %op% equ 4 echo VOCE JOGOU: DOLLYNHO
if %op% equ 5 echo VOCE JOGOU: COROTINHO
if %numero% equ 1 echo A CPU JOGOU: PEDRA
if %numero% equ 2 echo A CPU JOGOU: PAPEL
if %numero% equ 3 echo A CPU JOGOU: TESOURA
if %numero% equ 4 echo A CPU JOGOU: DOLLYNHO
if %numero% equ 5 echo A CPU JOGOU: COROTINHO
if %numero% equ 5 goto :EMPATE
if %numero% equ 3 goto :PERDEU
if %numero% equ 1 goto :VENCEU
if %numero% equ 4 goto :VENCEU
if %numero% equ 2 goto :PERDEU)
pause

:DOLLYNHO
set /a numero=(%random%/5000)+1
if %numero% gtr 5 (goto tesoura) else (
if %op% equ 1 echo VOCE JOGOU: PEDRA
if %op% equ 2 echo VOCE JOGOU: PAPEL
if %op% equ 3 echo VOCE JOGOU: TESOURA
if %op% equ 4 echo VOCE JOGOU: DOLLYNHO
if %op% equ 5 echo VOCE JOGOU: COROTINHO
if %numero% equ 1 echo A CPU JOGOU: PEDRA
if %numero% equ 2 echo A CPU JOGOU: PAPEL
if %numero% equ 3 echo A CPU JOGOU: TESOURA
if %numero% equ 4 echo A CPU JOGOU: DOLLYNHO
if %numero% equ 5 echo A CPU JOGOU: COROTINHO
if %numero% equ 4 goto :EMPATE
if %numero% equ 5 goto :PERDEU
if %numero% equ 2 goto :VENCEU
if %numero% equ 3 goto :VENCEU
if %numero% equ 1 goto :PERDEU)
pause

:VENCEU
set /a vitoria=%vitoria%+1
echo.
echo VOCE VENCEU
echo.
echo VITORIAS: %vitoria% 
echo EMPATES: %empate%
echo DERROTAS: %derrota%
pause
cls
goto :MENU

:PERDEU
set /a derrota=%derrota%+1
echo.
echo VOCE PERDEU
echo.
echo VITORIAS: %vitoria% 
echo EMPATES: %empate%
echo DERROTAS: %derrota%
pause
cls
goto :MENU

:EMPATE
set /a empate=%empate%+1
echo.
echo EMPATOU
echo.
echo VITORIAS: %vitoria% 
echo EMPATES: %empate%
echo DERROTAS: %derrota%
pause
cls
goto :MENU

:SAIR
exit

:REGRA
cls
echo               REGRAS
echo -------------------------------------
echo Corote: Ganha de pedra e dolly.      
echo Corote: Perde de papel e tesoura.
echo Dolly: Ganha de tesoura e papel.
echo Dolly: Perde de corote e pedra.
echo Pedra: Ganha de tesoura e dolly.
echo Pedra: Perde de corote e papel.
echo Papel: Ganha de corote e pedra.
echo Papel: Perde de tesoura e dolly.
echo Tesoura: Ganha de corote e papel.
echo Tesoura: Perde de pedra e dolly.
echo -------------------------------------
echo.
pause
goto :MENU