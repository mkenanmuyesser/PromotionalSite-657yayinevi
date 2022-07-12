using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Yayinevi_657_Project
{
    public partial class Iletisim : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonGonder_Click(object sender, EventArgs e)
        {
            string adsoyad = TextBoxAdSoyad.Text;
            string eposta = TextBoxEposta.Text;
            string konu = TextBoxKonu.Text;
            string mesaj = TextBoxMesaj.Text;

            try
            {
                MailMessage mail = new MailMessage(new MailAddress("ankara@657egitim.com", "Site Mesajı"), new MailAddress("ankara@657egitim.com", "Site Mesajı"));
                mail.IsBodyHtml = true;
                mail.Subject = "657 Eğitim Kurumları Site Mesajı";
                mail.Body = string.Format("Ad Soyad: {0}<br/>E-posta: {1}<br/>Konu: {2}<br/>Mesaj: {3}", adsoyad, eposta, konu, mesaj);

                SmtpClient smtp = new SmtpClient("mail.657egitim.com", 25);
                smtp.UseDefaultCredentials = false;
                smtp.Credentials = new NetworkCredential("ankara@657egitim.com", "@657egitim");
                smtp.Send(mail);
                LabelSonuc.Text = "Mesaj başarıyla gönderilmiştir.";

                TextBoxAdSoyad.Text = string.Empty;
                TextBoxEposta.Text = string.Empty;
                TextBoxKonu.Text = string.Empty;
                TextBoxMesaj.Text = string.Empty;
            }
            catch (Exception ex)
            {
                LabelSonuc.Text = "Mesaj gönderme başarısız. Lütfen tekrar deneyiniz.</br>" + ex.Message + "</br>" + ex.InnerException;
            }

        }
    }
}