using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VyazaninoCOM
{
    public partial class TestPay : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string json_data = @"{
            ""TerminalKey"": ""1564077239358DEMO"",
            ""Amount"": ""140000"",
            ""OrderId"": ""21051"",
            ""Description"": ""Подарочная карта на 1400.00 рублей"",
            ""DATA"": {
                ""Phone"": ""+71234567890"",
                ""Email"": ""a@test.com""
        },
            ""Receipt"": {
        ""Email"": ""a@test.ru"",
        ""Phone"": ""+79031234567"",
        ""EmailCompany"": ""b@test.ru"",
        ""Taxation"": ""osn"",
        ""Items"": [
            {
                ""Name"": ""Наименование товара 1"",
                ""Price"": 10000,
                ""Quantity"": 1.00,
                ""Amount"": 10000,
                ""PaymentMethod"": ""full_prepayment"",
                ""PaymentObject"": ""commodity"",
                ""Tax"": ""vat10"",
                ""Ean13"": ""0123456789""
            },
            {
                ""Name"": ""Наименование товара 2"",
                ""Price"": 20000,
                ""Quantity"": 2.00,
                ""Amount"": 40000,
                ""PaymentMethod"": ""prepayment"",
                ""PaymentObject"": ""service"",
                ""Tax"": ""vat20""
            },
            {
                ""Name"": ""Наименование товара 3"",
                ""Price"": 30000,
                ""Quantity"": 3.00,
                ""Amount"": 90000,
                ""Tax"": ""vat10""
            }
        ]
    }
}";
            string json_data1 = @"{
            ""TerminalKey"": ""1564077239358DEMO"",
            ""PaymentId"": ""99082585"",
            ""Token"": ""01a6f7f482fb4edd23837777d061ece5fdf8e4901ebb73a536cf0f1218f92415""}";
            var httpRequest = (HttpWebRequest)WebRequest.Create("https://securepay.tinkoff.ru/v2/GetState");
            httpRequest.Method = "POST";
            httpRequest.ContentType = "application/json";
            try
            {
                using (var requestStream = httpRequest.GetRequestStream())
                using (var writer = new StreamWriter(requestStream))
                {
                    writer.Write(json_data1);
                }
                using (var httpResponse = httpRequest.GetResponse())
                using (var responseStream = httpResponse.GetResponseStream())
                using (var reader = new StreamReader(responseStream))
                {
                    string response = reader.ReadToEnd();
                    Label1.Text = response;
                }
            }
            catch (Exception ex1)
            {
                Label1.Text = ex1.Message;
            }
            
        }
    }
}