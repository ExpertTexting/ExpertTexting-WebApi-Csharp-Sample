<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ExpertTextingApiSample.aspx.cs" Inherits="ExpertTexting_API_Sample_Csharp.ExpertTextingApiSample" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ExpertTexting Sample API Project</title>
    <style type="text/css">
        table {
            font-family: "Helvetica Neue", Helvetica, sans-serif;
        }

        caption {
            text-align: left;
            color: silver;
            font-weight: bold;
            text-transform: uppercase;
            padding: 5px;
        }

        thead {
            background: #68a54b;
            color: white;
        }

        th,
        td {
            padding: 5px 10px;
        }

        tbody tr:nth-child(even) {
            background: WhiteSmoke;
        }

        tbody tr td:nth-child(2) {
            text-align: center;
        }

        tbody tr td:nth-child(3),
        tbody tr td:nth-child(4) {
            text-align: right;
            font-family: monospace;
        }

        tfoot {
            background: #68a54b;
            color: white;
            text-align: right;
        }

            tfoot tr th:last-child {
                font-family: monospace;
            }

        .tooltipDemo {
            position: relative;
            display: inline;
            text-decoration: none;
            left: 5px;
            top: 0px;
        }

            .tooltipDemo:hover:before {
                border: solid;
                border-color: transparent #68a54b;
                border-width: 6px 6px 6px 0px;
                bottom: 21px;
                content: "";
                left: 75px;
                top: 5px;
                position: absolute;
                z-index: 95;
            }

            .tooltipDemo:hover:after {
                background: #68a54b;
                background: rgb(104, 165, 75);
                border-radius: 5px;
                color: #fff;
                width: 150px;
                left: 80px;
                top: -5px;
                content: attr(alt);
                position: absolute;
                padding: 5px 15px;
                z-index: 95;
                font-weight: bold;
            }

        .myButton {
            -moz-box-shadow: inset 0px 1px 0px 0px #9acc85;
            -webkit-box-shadow: inset 0px 1px 0px 0px #9acc85;
            box-shadow: inset 0px 1px 0px 0px #9acc85;
            background: -webkit-gradient(linear, left top, left bottom, color-stop(0.05, #74ad5a), color-stop(1, #68a54b));
            background: -moz-linear-gradient(top, #74ad5a 5%, #68a54b 100%);
            background: -webkit-linear-gradient(top, #74ad5a 5%, #68a54b 100%);
            background: -o-linear-gradient(top, #74ad5a 5%, #68a54b 100%);
            background: -ms-linear-gradient(top, #74ad5a 5%, #68a54b 100%);
            background: linear-gradient(to bottom, #74ad5a 5%, #68a54b 100%);
            filter: progid: DXImageTransform.Microsoft.gradient(startColorstr='#74ad5a', endColorstr='#68a54b', GradientType=0);
            background-color: #74ad5a;
            border: 1px solid #3b6e22;
            display: inline-block;
            cursor: pointer;
            color: #ffffff;
            font-family: Arial;
            font-size: 13px;
            font-weight: bold;
            padding: 6px 12px;
            text-decoration: none;
            width: 175px;
        }

            .myButton:hover {
                background: -webkit-gradient(linear, left top, left bottom, color-stop(0.05, #68a54b), color-stop(1, #74ad5a));
                background: -moz-linear-gradient(top, #68a54b 5%, #74ad5a 100%);
                background: -webkit-linear-gradient(top, #68a54b 5%, #74ad5a 100%);
                background: -o-linear-gradient(top, #68a54b 5%, #74ad5a 100%);
                background: -ms-linear-gradient(top, #68a54b 5%, #74ad5a 100%);
                background: linear-gradient(to bottom, #68a54b 5%, #74ad5a 100%);
                filter: progid: DXImageTransform.Microsoft.gradient(startColorstr='#68a54b', endColorstr='#74ad5a', GradientType=0);
                background-color: #68a54b;
            }

            .myButton:active {
                position: relative;
                top: 1px;
            }

        input::-webkit-outer-spin-button,
        input::-webkit-inner-spin-button {
            -webkit-appearance: none;
            margin: 0;
        }

        input[type='number'] {
            -moz-appearance: textfield;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <img src="Images/logo.png" />
            <h2 style="padding-left: 40px;display: inline;"> Sample API Project (C#)</h2>
            <br />
            <br />
            <table>
                <thead>
                    <tr style="font-weight: bold">
                        <td>Parameter</td>
                        <td>Value</td>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Username</td>
                        <td>
                            <asp:TextBox runat="server" ID="txtbxUsername" placeholder="Enter Username"></asp:TextBox>
                            <a href="javascript::;" alt="Please enter your account login ID" class="tooltipDemo">?</a>
                        </td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td>
                            <asp:TextBox runat="server" ID="txtbxPassword" TextMode="Password" placeholder="Enter Password"></asp:TextBox>
                            <a href="javascript::;" alt="Please enter your account password" class="tooltipDemo">?</a>
                        </td>
                    </tr>
                    <tr>
                        <td>API Key</td>
                        <td>
                            <asp:TextBox runat="server" ID="txtbxApiKey" placeholder="Enter API key"></asp:TextBox>
                            <a href="javascript::;" alt="Please enter your account's API key which can be found in your account's profile" class="tooltipDemo">?</a>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">Below parameters are only required for "Send SMS" & "Send Unicode SMS" calls.</td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td>To (Receiver)</td>
                        <td>
                            <asp:TextBox runat="server" ID="txtbxTo" placeholder="Enter Receiver's Number" type="number" min="0"></asp:TextBox>
                            <a href="javascript::;" alt="Please enter number on which you want to send text." class="tooltipDemo">?</a>
                        </td>
                    </tr>
                    <tr>
                        <td>From (Sender)</td>
                        <td>
                            <asp:TextBox runat="server" ID="txtbxFrom" placeholder="Enter Sender's Number"></asp:TextBox>
                            <a href="javascript::;" alt="Please enter number from which you want to send text and is pre-registered in your account." class="tooltipDemo">?</a>
                        </td>
                    </tr>
                    <tr>
                        <td>Message (SMS Body)</td>
                        <td>
                            <asp:TextBox runat="server" ID="txtbxMessage" placeholder="Enter Text Content" TextMode="MultiLine"></asp:TextBox>
                            <a href="javascript::;" alt="Please enter message body." class="tooltipDemo">?</a>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td>Query Account Balance</td>
                        <td>
                            <asp:Button class="myButton" ID="btnBalance" Text="Query Account Balance" runat="server" OnClick="btnBalance_Click" OnClientClick="return checkvalidation(1);" />
                        </td>
                    </tr>
                    <tr>
                        <td>Send SMS</td>
                        <td>
                            <asp:Button class="myButton" ID="btnSendSms" Text="Send SMS" runat="server" OnClick="btnSendSms_Click" OnClientClick="return checkvalidation(2);" />
                        </td>
                    </tr>
                    <tr>
                        <td>Send Unicode SMS</td>
                        <td>
                            <asp:Button class="myButton" ID="btnSendUnicodeSms" Text="Send Unicode SMS" runat="server" OnClick="btnSendUnicodeSms_Click" OnClientClick="return checkvalidation(2);" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" id="lblResult" align="center" style="border: 2px solid black;" runat="server">
                            Result of each call will appear here.
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </form>
    <script src="https://code.jquery.com/jquery-2.1.4.js"></script>
    <script type="text/javascript">
        function checkvalidation(val) {
            var mystring = document.getElementById('txtbxUsername').value;
            if (!mystring.match(/\S/)) {
                $('#txtbxUsername').css('border-color', 'red');
                return false;
            } else {
                $('#txtbxUsername').css('border-color', '');
            }
            mystring = document.getElementById('txtbxPassword').value;
            if (!mystring.match(/\S/)) {
                $('#txtbxPassword').css('border-color', 'red');
                return false;
            } else {
                $('#txtbxPassword').css('border-color', '');
            }
            mystring = document.getElementById('txtbxApiKey').value;
            if (!mystring.match(/\S/)) {
                $('#txtbxApiKey').css('border-color', 'red');
                return false;
            } else {
                $('#txtbxApiKey').css('border-color', '');
            }
            if (val === 2) {
                mystring = document.getElementById('txtbxTo').value;
                if (!mystring.match(/\S/)) {
                    $('#txtbxTo').css('border-color', 'red');
                    return false;
                } else {
                    $('#txtbxTo').css('border-color', '');
                }
            }
            return true;
        }
    </script>
</body>
</html>
