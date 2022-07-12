using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Yayinevi_657_Project
{
    public partial class Kaynaklarimiz : System.Web.UI.Page
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
            int ktgid = 0;
            string qry = Request.QueryString["KTG"];
            if (qry != null)
            {
                int.TryParse(qry, out ktgid);
            }

            XElement root = XElement.Load(Server.MapPath("Data/YayineviData.xml"));

            var _Kurslar = root.Elements("Kaynaklar").Elements("Kaynak").Select(p => new
            {
                KitapAdi = p.Element("KaynakAdi").Value,
                Aciklama = p.Element("Aciklama").Value,
                Link = p.Element("Link").Value,
                Resim = p.Element("Resim").Value,
                Kategori = p.Element("Kategori").Value,
                YeniCikan = p.Element("YeniCikan").Value,
                Sira = p.Element("Sira").Value
            });

            var ktgadi = root.Elements("Kategoriler").Elements("Kategori").Select(p => new
                {
                    Id = p.Attribute("Id").Value,
                    Adi = p.Element("Adi").Value
                }).SingleOrDefault(p => p.Id == ktgid.ToString());

            LabelBaslik.Text = ktgadi == null ? "" : ktgadi.Adi;
            switch (ktgid)
            {
                default:
                case 0:
                    LabelBaslik.Text = "TÜMÜ";
                    break;
                case -1:
                    LabelBaslik.Text = "YENİ ÇIKANLAR";
                    _Kurslar = _Kurslar.Where(p => p.YeniCikan == "1");
                    break;
                case 1:
                    _Kurslar = _Kurslar.Where(p => p.Kategori.Contains("1"));
                    break;
                case 2:
                    _Kurslar = _Kurslar.Where(p => p.Kategori.Contains("2"));
                    break;
                case 3:
                    _Kurslar = _Kurslar.Where(p => p.Kategori.Contains("3"));
                    break;
            }

            DataListKaynaklar.DataSource = null;
            DataListKaynaklar.DataSource = _Kurslar.OrderBy(p => Convert.ToInt32(p.Sira));
            DataListKaynaklar.DataBind();
        }
    }
}