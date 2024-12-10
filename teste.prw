//Bibliotecas
#Include "TOTVS.ch"

User Function teste()
   Local aArea      := FWGetArea()
   Local cJanTitulo := 'Exemplo TGet'
   Local cText      := ''
   Local lCentraliz := .T.
   Local lDimPixels := .T.
   Local nCorFundo  := RGB(238, 238, 238)
   Local nJanAltura := 500
   Local nJanLargur := 700
   Local nObjAltur  := 0
   Local nObjColun  := 0
   Local nObjLargu  := 0
   Local nObjLinha  := 0

   Private cFontNome   := 'Tahoma'
   Private oFontPadrao := TFont():New(cFontNome, , -12)
   Private oDialogPvt 
   Private bBlocoIni   := {|| /*fSuaFuncao()*/ } //Aqui voce pode acionar funcoes customizadas que irao ser acionadas ao abrir a dialog 
   Private oGetObj7 
     
   //Cria a dialog
   oDialogPvt := TDialog():New(0, 0, nJanAltura, nJanLargur, cJanTitulo, , , , , , nCorFundo, , , lDimPixels)
     
      nObjLinha := 10
      nObjColun := 10
      nObjLargu := 100
      nObjAltur := 120
      oGetObj7  := TSimpleEditor():New( 0,0,oDialogPvt,260,184,,,{|u| if(PCount()>0,cText := u,cText)})

      oTButton1 := TButton():Create( oDialogPvt,062,002,"Botão 04",{||alert("Botão 04")},40,10,,,,.T.,,,,,,)

   oDialogPvt:Activate(, , , lCentraliz, , , bBlocoIni)
     
   FWRestArea(aArea)
Return
