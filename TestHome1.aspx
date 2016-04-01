<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="TestHome1.aspx.vb" Inherits="online_project_final.TestHome1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
    

<head runat="server">
    <title>Test Home</title>
    <script type="text/javascript">
        window.onload = CreateTimer();
//        window.onunload = pageleave;

        var Timer;
        var TotalSeconds=0;
        function f1() {
            //alert("time taken " + TotalSeconds);
        }
        function CreateTimer() {
        /*    Timer = document.getElementById(TimerID);
            TotalSeconds = Time;

            UpdateTimer() */
            window.setTimeout("Tick()", 1000);
        }
        /*function pageleave() { 
            alert("times taken is" + TotalSeconds)
        } */
        function Tick() {

            TotalSeconds += 1;
            document.getElementById("<%=SendA.ClientID%>").value = "" + TotalSeconds;


           /* TotalSeconds -= 1;
            if (TotalSeconds <= 0) {
                alert("Time's up!")
                window.location.href = "Results.aspx"
                
            } 
            UpdateTimer() */
            window.setTimeout("Tick()", 1000);
        }

       /*  function UpdateTimer() {
            var Seconds = TotalSeconds;
            var Hours = Math.floor(Seconds / 3600);
            Seconds -= Hours * (3600);
            var Minutes = Math.floor(Seconds / 60);
            Seconds -= Minutes * (60);
            var TimeStr = "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" + LeadingZero(Minutes) + ":" + LeadingZero(Seconds)
            Timer.innerHTML = TimeStr;
        }


        function LeadingZero(Time) {

            return (Time < 10) ? "0" + Time : +Time;

        } */
        </script>
    
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Image ID="Image1" runat="server" Height="248px" 
            ImageUrl="~/images/exam.jpg" Width="1034px" />
    
    </div>
    <p>
        &nbsp; Question&nbsp;
        <asp:HiddenField runat="server" ID="SendA" Value="" />
        <asp:Label ID="lbl_quesno" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp; of&nbsp;&nbsp;
        <asp:Label ID="lbl_totalques" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        &nbsp;</p>
    <p>
        <asp:Label ID="Label1" runat="server" Text="Label" 
            style="font-size: large; font-weight: 700; font-style: italic"></asp:Label>
    </p>
    <p>
        <asp:RadioButtonList ID="RadioButtonList1" runat="server">
        </asp:RadioButtonList>
        <asp:RequiredFieldValidator ID="radiobuttonlist_validator" runat="server" 
            ControlToValidate="RadioButtonList1" 
            ErrorMessage="Please choose atleast one choice"></asp:RequiredFieldValidator>
    </p>
    <p>
        <asp:Button ID="btn_skip" runat="server" BorderColor="#FF6600" 
            BorderStyle="Solid" ForeColor="#FF6600" 
            style="top: 487px; left: 761px; position: absolute; height: 26px; width: 56px; right: 240px;" 
            Text="Skip" CausesValidation="False" />
    </p>
    <asp:Button ID="btn_next" runat="server" BorderColor="#FF6600" onclientclick="f1()"
        BorderStyle="Solid" ForeColor="#FF6600" 
        style="top: 487px; left: 865px; position: absolute; height: 26px; width: 56px" 
        Text="Next" />
    <asp:ScriptManager ID="ScriptManager1" runat="Server"></asp:ScriptManager>
    <asp:Timer ID="Timer1" runat="server" Enabled="False" EnableViewState="False" 
        Interval="1">
    </asp:Timer>
    </form>
</body>
</html>
