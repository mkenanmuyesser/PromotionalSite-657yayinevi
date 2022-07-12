using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Yayinevi_657_Project
{
    public partial class Default : System.Web.UI.Page
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

            var _Haberler = root.Elements("Haberler").Elements("Haber").Select(p => new
                {
                    Tarih = p.Element("Tarih").Value,
                    Aciklama = p.Element("Aciklama").Value
                });
            DataListHaberler.DataSource = null;
            DataListHaberler.DataSource = _Haberler;
            DataListHaberler.DataBind();

            var _Kurslar = root.Elements("Kurslar").Elements("Kurs").Select(p => new
            {
                KitapAdi = p.Element("KitapAdi").Value,
                Aciklama = p.Element("Aciklama").Value,
                Link = p.Element("Link").Value,
                Resim = p.Element("Resim").Value,
                Kategori = p.Element("Kategori").Value,
                YeniCikan = p.Element("YeniCikan").Value,
                Sira = p.Element("Sira").Value
            });
            RepeaterKurslar.DataSource = null;
            RepeaterKurslar.DataSource = _Kurslar.OrderBy(p => Convert.ToInt32(p.Sira));
            RepeaterKurslar.DataBind();

            //var _YeniCikanlar = _Kurslar.Where(p => p.YeniCikan == "1");
            //RepeaterYeniCikanlar.DataSource = null;
            //RepeaterYeniCikanlar.DataSource = _YeniCikanlar.OrderByDescending(p => Convert.ToInt32(p.Sira));
            //RepeaterYeniCikanlar.DataBind();

            var _Slaytlar = root.Elements("Slaytlar").Elements("Slayt").Select(p => new
            {
                Baslik = p.Element("Baslik").Value,
                Aciklama = p.Element("Aciklama").Value,
                Tooltip = p.Element("Tooltip").Value,
                Resim = p.Element("Resim").Value,
                Link = p.Element("Link").Value,
            });
            RepeaterSlaytlar.DataSource = null;
            RepeaterSlaytlar.DataSource = _Slaytlar;
            RepeaterSlaytlar.DataBind();

           // var _YayineviResimler = root.Elements("YayineviResimler").Elements("YayineviResim").Select(p => new
           //{
           //    Resim = p.Element("Resim").Value,
           //    Aciklama = p.Element("Aciklama").Value,
           //});
           // RepeaterYayineviResimler.DataSource = null;
           // RepeaterYayineviResimler.DataSource = _YayineviResimler;
           // RepeaterYayineviResimler.DataBind();
        }
    }
}