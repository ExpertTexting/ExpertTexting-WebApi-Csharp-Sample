using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ExpertTexting_API_Sample_Csharp.com.experttexting.www;


namespace ExpertTexting_API_Sample_Csharp
{
    public partial class ExpertTextingApiSample : System.Web.UI.Page
    {
        #region ::Global Variables::
        // Creating object of ExpertTexting referenced API
        ExptTextingAPI objExptTextingApi = new ExptTextingAPI();
        #endregion

        #region ::Form Load Event::
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        #endregion

        #region ::Button Events::
        protected void btnBalance_Click(object sender, EventArgs e)
        {
            try
            {
                // Getting parameter values from respective textboxes
                string userName = txtbxUsername.Text;
                string password = txtbxPassword.Text;
                string apiKey = txtbxApiKey.Text;

                // Calling referenced API method here for querying balance
                var result = objExptTextingApi.QueryBalance(userName, password, apiKey);

                // checking if call was successful or not and displaying result accordingly
                if (result.ChildNodes[0].InnerXml.ToLower().Contains("failed"))
                {
                    lblResult.InnerText = result.ChildNodes[0].InnerXml;
                }
                else
                {
                    lblResult.InnerHtml = "Your account balance is <b>$" + result.ChildNodes[0].InnerXml + "</b>";
                }
            }
            catch (Exception ex)
            {
                lblResult.InnerText = "An exception has occurred. Exception : " + ex;
            }
        }

        protected void btnSendSms_Click(object sender, EventArgs e)
        {
            try
            {
                // Getting parameter values from respective textboxes
                string userName = txtbxUsername.Text;
                string password = txtbxPassword.Text;
                string apiKey = txtbxApiKey.Text;
                string to = txtbxTo.Text;
                string from = txtbxFrom.Text;
                string message = txtbxMessage.Text;

                // Calling referenced API method here for sending sms
                var result = objExptTextingApi.SendSMS(userName, password, apiKey, from, to, message);

                // checking if call was successful or not and displaying result accordingly
                if (result.ChildNodes[0].InnerXml == "SUCCESS")
                {
                    string status = result.ChildNodes[0].InnerXml;
                    string DestinationNumber = result.ChildNodes[2].InnerXml;
                    string messageId = result.ChildNodes[3].InnerXml;
                    lblResult.InnerHtml = "<b>Status</b> : " + status + "  <b>To</b> : " + DestinationNumber + "   <b>Message ID</b> : " + messageId;
                }
                else
                {
                    lblResult.InnerText = result.ChildNodes[0].InnerXml;
                }
            }
            catch (Exception ex)
            {
                lblResult.InnerText = "An exception has occurred. Exception : " + ex;
            }
        }

        protected void btnSendUnicodeSms_Click(object sender, EventArgs e)
        {
            try
            {
                // Getting parameter values from respective textboxes
                string userName = txtbxUsername.Text;
                string password = txtbxPassword.Text;
                string apiKey = txtbxApiKey.Text;
                string to = txtbxTo.Text;
                string from = txtbxFrom.Text;
                string message = txtbxMessage.Text;

                // Calling referenced API method here for sending unicode sms
                var result = objExptTextingApi.SendSMS(userName, password, apiKey, from, to, message);

                // checking if call was successful or not and displaying result accordingly
                if (result.ChildNodes[0].InnerXml == "SUCCESS")
                {
                    string status = result.ChildNodes[0].InnerXml;
                    string DestinationNumber = result.ChildNodes[2].InnerXml;
                    string messageId = result.ChildNodes[3].InnerXml;
                    lblResult.InnerHtml = "<b>Status</b> : " + status + "  <b>To</b> : " + DestinationNumber + "   <b>Message ID</b> : " + messageId;
                }
                else
                {
                    lblResult.InnerText = result.ChildNodes[0].InnerXml;
                }
            }
            catch (Exception ex)
            {
                lblResult.InnerText = "An exception has occurred. Exception : " + ex;
            }
        }
        #endregion
    }
}