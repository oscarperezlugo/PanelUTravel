<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pago.aspx.cs" Inherits="ReachSystem.Pago" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>PAGO UTRAVEL</title>
    <link href="Content/Site.css" rel="stylesheet" />
    <script src="https://pay.payphonetodoesposible.com/api/button/js?appId=7gl0usO2vES0jyTZ3Jm1VA"></script>
    <script>
        function getParameterByName(name, url = window.location.href) {
            name = name.replace(/[\[\]]/g, '\\$&');
            var regex = new RegExp('[?&]' + name + '(=([^&#]*)|&|#|$)'),
                results = regex.exec(url);
            if (!results) return null;
            if (!results[2]) return '';
            return decodeURIComponent(results[2].replace(/\+/g, ' '));
        }


        window.onload = function() {
        payphone.Button({
        
        //token obtenido desde la consola de developer
            token: 'BOyEBVSCDKLcR0SKJPxuI1md1yBgxsqeaOb8NZSdReT4uyzQkTL1Y43vH08uIbfTlGHwHp8n5aqKXGUCnf2eG7_GLpfz3lcVnFLbsAiqGwf0in7RPj4Xz1S15DMun3hlc3TGikyvAFKLqpoEr49hTQwDmm54aI0tHaQmQ2vNQKp7xUOD3kZ5gxgysINKv-0YnDzGoirkueLEkvHHlYhQVZxy56NDgkmcFB2MW8qywpETOsChVPyNi9swxjWMFpFPjIPZuZ5yHdUGaqZN6nKIAoYUudj8UA2-htzoF3eTjasvJ9BNKH_iSMqIsF4V2mpIexfBgg',
        
            //PARÁMETROS DE CONFIGURACIÓN
        btnHorizontal: false,
        btnCard: true,
        
        createOrder: function(actions){

            
                    
        //Se ingresan los datos de la transaccion ej. monto, impuestos, etc
            return actions.prepare({
                

                

                amount: getParameterByName('monto'),
                amountWithoutTax: getParameterByName('impu'),
                currency: "USD",
                clientTransactionId: getParameterByName('guid')
            });
            
        
        },
        onComplete: function(model, actions){
        
        //Se confirma el pago realizado
        actions.confirm({
        id: model.id,
        clientTxId: model.clientTxId
        }).then(function(value){
        
        //EN ESTA SECCIÓN SE RECIBE LA RESPUESTA Y SE MUESTRA AL USUARIO                                
        
        if (value.transactionStatus == Approved){
        alert(Pago + value.transactionId +  recibido, estado  + value.transactionStatus );
        }
        }).catch(function(err){
        console.log(err);
        });
        
        }
        }).render('#pp-button');
        
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div id="pp-button"></div>
        </div>
    </form>
</body>
</html>
