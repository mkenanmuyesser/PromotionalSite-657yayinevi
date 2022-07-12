using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Yayinevi_657_Project
{
    public partial class Kadromuz : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataLoad();
            }
        }

        private void DataLoad()
        {
            XElement root = XElement.Load(Server.MapPath("Data/YayineviData.xml"));

            var _Haberler = root.Elements("Yazarlar").Elements("Yazar").Select(p => new
            {
                AdiSoyadi = p.Element("AdiSoyadi").Value,
                Aciklama = p.Element("Aciklama").Value,
                Link = p.Element("Link").Value,
                Resim = p.Element("Resim").Value
            });
            RepeaterHocalar.DataSource = null;
            RepeaterHocalar.DataSource = _Haberler;
            RepeaterHocalar.DataBind();
        }
    }
}