using System;
using System.IO;
using System.Net;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data.SqlClient;
using DVCOMMON;
using System.Text;
using System.Data;
using Telerik.Web.UI;
using System.Web.Services;
using Razorpay.Api;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
public partial class StudentRegistration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
           if (Session["student_name"] != null)
                 
                    {
            span_student_name.InnerHtml = Session["student_name"].ToString();
            span_college_code.InnerHtml = Session["college_code"].ToString();
            img_Logo.Src = "../Logo/" + Session["college_code"].ToString()+".jpg";
            USER_ID.InnerHtml = Session["StudentRN"].ToString();
            txtstudentrn.Text =Convert.ToString(Session["StudentRN"]).Trim();
            //txtcollegename.Text = Convert.ToString(Session["college_name"]).Trim(); 
            txtname.Text = Session["student_name"].ToString();
            txteventtype.Text = Request.QueryString["Type"]; 
            txteventname.Text = Request.QueryString["Name"];          
            //GetdatafromStudentRegistration();
	   	
	    txtstudentrn.ReadOnly = true;
            txtcollegename.ReadOnly = false;
            txtstudentrn.ReadOnly = true;
            txteventtype.ReadOnly = true;
            txteventname.ReadOnly = true;
            txtname.ReadOnly = true;
	    
		string connetionString;
		string que;
		SqlConnection cnn;
		SqlCommand cmd ;
		SqlDataReader reader ;
		String collegecode = Session["college_code"].ToString();
		connetionString = @"Data Source=43.255.152.21;Initial Catalog=DV2L;User ID=DV2L;Password=Digiverve@123";
		cnn = new SqlConnection(connetionString);
		cnn.Open();
		que = "SELECT * from Event where  Nameoftheevent='"+Request.QueryString["Name"].ToString()+"';";
			
		cmd = new SqlCommand(que, cnn);
		reader = cmd.ExecuteReader();
		string amt;
    		while(reader.Read())
                   {
			if(!string.IsNullOrEmpty(Convert.ToString(reader["amount"]).Trim())){
			   amt = Convert.ToString(reader["amount"]).Trim();
			   payAmt.Value=Convert.ToString(Convert.ToInt16(amt) * 100); 	
		           txteventprice.Text = "INR "+amt; }
			  else {payAmt.Value="0";txteventprice.Text="INR 0";}txteventprice.ReadOnly = true; 
	    	   }
	    
              }
          else
                     {
                     Response.Redirect("p4dlLogin.aspx");
                     }

        }
    }

    public void GetdatafromStudentRegistration()
    {
        SqlConnection con = ConnectionUtil.getConnection();
        try
        {
            SqlDataReader dr = new Dynamic().ExecuteDataReader(con, Procs.GetdatafromStudentRegistration,Convert.ToString(Session["StudentRN"]).Trim());
            if (dr != null)
            {
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        if (!string.IsNullOrEmpty(Convert.ToString(dr["Id"])))
                        {
                            HdId.Value = Convert.ToString(dr["Id"]);
                        }
                        if (!string.IsNullOrEmpty(Convert.ToString(dr["Name"])))
                        {
                            txtname.Text = Convert.ToString(dr["Name"]);
                        }
                        if (!string.IsNullOrEmpty(Convert.ToString(dr["StudentRegistrationNumber"])))
                        {
                            txtstudentrn.Text = Convert.ToString(dr["StudentRegistrationNumber"]);
                        }
                        if (!string.IsNullOrEmpty(Convert.ToString(dr["COLLEGENAME"])))
                        {
                            txtcollegename.Text = Convert.ToString(dr["COLLEGENAME"]);
                        }
                        if (Convert.ToString(dr["GENDER"]) == "1")
                        {
                            rad_MGender.Checked = true;
                            rad_FGender.Checked = false;

                        }
                        else
                        {
                            rad_MGender.Checked = false;
                            rad_FGender.Checked = true;

                        }
                        DropDownList1.SelectedValue = dr["BRANCHNAME"].ToString();
                

                        if (!string.IsNullOrEmpty(Convert.ToString(dr["PHONENUMBER"])))
                        {
                            txtphonenumber.Text = Convert.ToString(dr["PHONENUMBER"]);
                        }
                        if (!string.IsNullOrEmpty(Convert.ToString(dr["EMAILID"])))
                        {
                            txtemailid.Text = Convert.ToString(dr["EMAILID"]);
                        }
                        if (!string.IsNullOrEmpty(Convert.ToString(dr["Comments"])))
                        {
                            txtcomments.Text = Convert.ToString(dr["Comments"]);
                        }

                    }
                }
                    dr.Close();
                    dr.Dispose();
            }
        }
        catch (Exception)
        {

            throw;
        }
        finally
        {
            if (con.State == ConnectionState.Open)
                con.Close();
        }
    }
    protected void Register_Click(object sender, EventArgs e)
    {	//Registers the user for the event
        string connetionString,successUrl=string.Format(@"http://www.dv2l.com/RegistrationStatus.aspx?Name={0}",Request.QueryString["Name"]);
		string que;
		SqlConnection cnn;
		SqlCommand cmd ;
		int tmpvar;
		string amt="";
		if(!string.IsNullOrEmpty(Convert.ToString(payAmt.Value))){
		amt =Convert.ToString(Convert.ToInt16(payAmt.Value) / 100);}
		SqlDataReader reader ;			
		connetionString = @"Data Source=43.255.152.21;Initial Catalog=DV2L;User ID=DV2L;Password=Digiverve@123";
		cnn = new SqlConnection(connetionString);
		cnn.Open();
		que = string.Format(@"SELECT * from Register_For_Course where StudentRegistrationNumber='{0}' and NameOfTheEvent='{1}';",txtstudentrn.Text.Trim(),txteventname.Text.Trim());			
		cmd = new SqlCommand(que, cnn);
		reader = cmd.ExecuteReader();
		if(!reader.HasRows){
			


		que = string.Format(@"insert into Register_For_Course (BRANCHNAME,GENDER,PHONENUMBER,EMAILID,StudentRegistrationNumber,RegistrationFor,NameOfTheEvent,Comments,Name,CreatedDate,amount,paymentId) values('{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}','{9}',(select getdate()),'{10}','{11}');"
		,
		DropDownList1.SelectedValue,((rad_MGender.Checked) ? "Male" : "Female"),
		txtphonenumber.Text.Trim(),txtemailid.Text.Trim(),
		txtstudentrn.Text.Trim(),txteventtype.Text.Trim(),txteventname.Text.Trim(),
		txtcomments.Text.Trim(),txtname.Text.Trim(),amt.Trim(),Convert.ToString(payId.Value));			
		cmd = new SqlCommand(que, cnn);
		int ReturnCount=cmd.ExecuteNonQuery();       
	 	if(ReturnCount>0){
           		ClientScript.RegisterClientScriptBlock(this.GetType(),"ShowStatus", "javascript:alert('save successful');", true);
           		Response.Redirect(successUrl);
		 }
		else{
        		//ClientScript.RegisterClientScriptBlock(this.GetType(),"alert", "alert('save failed');", true);
        	
		}
	   }else{
			ClientScript.RegisterClientScriptBlock(this.GetType(),"ShowStatus", "javascript:alert('already registered');", true);
			Response.Redirect("p4dl.aspx"); 
		}
    }
	

    protected void Buttonx_Click(object sender, EventArgs e)
    {
	string connetionString;
		string que;
		SqlConnection cnn;
		SqlCommand cmd ;
		int tmpvar;
		SqlDataReader reader ;			
		connetionString = @"Data Source=43.255.152.21;Initial Catalog=DV2L;User ID=DV2L;Password=Digiverve@123";
		cnn = new SqlConnection(connetionString);
		cnn.Open();
		que = string.Format(@"SELECT * from Register_For_Course where StudentRegistrationNumber='{0}' and NameOfTheEvent='{1}';",txtstudentrn.Text.Trim(),txteventname.Text.Trim());			
		cmd = new SqlCommand(que, cnn);
		reader = cmd.ExecuteReader();
		if(!reader.HasRows){
			ClientScript.RegisterStartupScript(GetType(),"hwa","ValidateIt()",true);
			}
		else{ 	ClientScript.RegisterClientScriptBlock(this.GetType(),"ShowStatus", "javascript:alert('already registered');", true);
			Response.Redirect("p4dl.aspx"); 
		}
    }
    
     protected void Save_Click(object sender, EventArgs e)
     {
	
	 ScriptManager.RegisterStartupScript(this, this.GetType(), "SaveMsg", "ShowSavePupup('"+Request["__EVENTARGUMENT"]+"');", true);
        

    }
    protected void DoCapture(object sender, EventArgs e)
        {
	try{
         	ServicePointManager.SecurityProtocol = (SecurityProtocolType)192 |
              (SecurityProtocolType)768 | (SecurityProtocolType)3072;
            	string paymentId = Convert.ToString(payId.Value);
	   	string key = "rzp_live_UgPmY6nou3J6gA";
                string secret = "cd0UpWslSxzCmIeI1AZQl3At";
                RazorpayClient client = new RazorpayClient(key, secret);
                Dictionary<string, object> options = new Dictionary<string, object>();
                options.Add("amount", payAmt.Value);
		Payment payment = client.Payment.Fetch(paymentId);

                Payment paymentCaptured = payment.Capture(options);
                var values = JObject.FromObject(paymentCaptured).ToObject<Dictionary<string, object>>();
		string s = string.Format(@"""status"": ""captured""");
		object zz;
                if(values.TryGetValue("Attributes", out zz))
                    if(zz.ToString().Contains(s)) 
			{
			ClientScript.RegisterClientScriptBlock(this.GetType(),"ShowStatus", "javascript:alert('payment captured');",true);
	     		 Button1_Click(Button1, EventArgs.Empty);
			}
		     else{ClientScript.RegisterClientScriptBlock(this.GetType(),"alert","alert(' capture failed');",true);
			}
	    }
	catch(Exception eec){ClientScript.RegisterClientScriptBlock(this.GetType(),"alert","alert(' capture failed');",true);
}
        }     
 }
    
