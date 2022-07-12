using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Yayinevi_657_Project
{
    public partial class KonferansDersler : System.Web.UI.Page
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

            var _KonferansDersler = root.Elements("KonferansDersler").Elements("KonferansDers").Select(p => new
            {
                Id = p.Attribute("Id").Value,
                DersAdi = p.Element("DersAdi").Value,
                Baslik = p.Element("Baslik").Value,
                Dersler = p.Elements("Dersler").Elements("Ders").Select(x => x.Value),
                ToplamSaat = p.Element("ToplamSaat").Value,
                Yer = p.Element("Yer").Value,
                ZamanBaslangic = p.Element("ZamanBaslangic").Value,
                ZamanBitis = p.Element("ZamanBitis").Value,
                Aciklama = p.Element("Aciklama").Value,
                Hocalar = p.Elements("Hocalar").Elements("Hoca").Select(x => new
                {
                    AdiSoyadi = x.Element("AdiSoyadi").Value,
                    Aciklama = x.Element("Aciklama").Value,
                    Resim = x.Element("Resim").Value
                }),
                HediyeYayinlar = p.Elements("HediyeYayinlar").Elements("HediyeYayin").Select(x => new
                {
                    Adi = x.Element("Adi").Value,
                    Aciklama = x.Element("Aciklama").Value,
                    Resim = x.Element("Resim").Value
                }),
                KonferansResimler = p.Elements("KonferansResimler").Elements("KonferansResim").Select(x => new
                {
                    Baslik = x.Element("Baslik").Value,
                    Resim = x.Element("Resim").Value
                })
            });

            if (ktgid != 0)
            {
                var _KonferansDers = _KonferansDersler.SingleOrDefault(p => p.Id == ktgid.ToString());
                LabelBaslik.Text = _KonferansDers.Baslik;
                LabelToplamSaat.Text = _KonferansDers.ToplamSaat;
                LabelYer.Text = _KonferansDers.Yer;
                LabelBaslangic.Text = _KonferansDers.ZamanBaslangic;
                LabelBitis.Text = _KonferansDers.ZamanBitis;
                LabelAciklama.Text = _KonferansDers.Aciklama;

                RepeaterDersler.DataSource = null;
                RepeaterDersler.DataSource = _KonferansDers.Dersler;
                RepeaterDersler.DataBind();

                RepeaterHocalar.DataSource = null;
                RepeaterHocalar.DataSource = _KonferansDers.Hocalar;
                RepeaterHocalar.DataBind();

                RepeaterHediyeYayinlar.DataSource = null;
                RepeaterHediyeYayinlar.DataSource = _KonferansDers.HediyeYayinlar;
                RepeaterHediyeYayinlar.DataBind();

                RepeaterKonferansResim.DataSource = null;
                RepeaterKonferansResim.DataSource = _KonferansDers.KonferansResimler;
                RepeaterKonferansResim.DataBind();
            }
            else
            {
                foreach (var satir in _KonferansDersler.Select(p => p.DersAdi))
                {
                    LabelBaslik.Text += satir + ",";
                }
                LabelBaslik.Text = LabelBaslik.Text.Remove(LabelBaslik.Text.Length - 1, 1);
            }



            switch (ktgid)
            {
                default:
                case 0:

                    break;
                case 1:
                    //_Kitaplar = _Kitaplar.Where(p => p.Kategori == "1");
                    break;
                case 2:
                    //_Kitaplar = _Kitaplar.Where(p => p.Kategori == "2");
                    break;
                case 3:
                    //_Kitaplar = _Kitaplar.Where(p => p.Kategori == "3");
                    break;
            }

            //var _KonferansResimler = root.Elements("KonferansResimler").Elements("KonferansResim").Select(p => new
            //{
            //    Baslik = p.Element("Baslik").Value,
            //    Resim = p.Element("Resim").Value
            //});
            //RepeaterKonferansResim.DataSource = null;
            //RepeaterKonferansResim.DataSource = _KonferansResimler;
            //RepeaterKonferansResim.DataBind();

        }
    }
}