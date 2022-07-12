<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Page/Root.Master" AutoEventWireup="true" CodeBehind="Hakkimizda.aspx.cs" Inherits="Yayinevi_657_Project.Hakkimizda" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderHead" runat="server">
    <script src="js/jquery-1.7.2.min.js" type="text/javascript"></script>
    <script src="js/ie.js" type="text/javascript"></script>
    <script src="js/jquery.easing.1.3.js" type="text/javascript"></script>
    <script src="js/modernizr.custom.js" type="text/javascript"></script>
    <script src="js/ddlevelsmenu.js" type="text/javascript"></script>
    <script type="text/javascript">
        ddlevelsmenu.setup("nav", "topbar");
    </script>
    <script src="js/tinynav.min.js" type="text/javascript"></script>
    <script src="js/jquery.ui.totop.min.js" type="text/javascript"></script>
    <script src="js/jquery.tweet.js" type="text/javascript"></script>
    <script src="js/jquery.touchSwipe.min.js" type="text/javascript"></script>
    <script src="js/custom.js" type="text/javascript"></script>
    <%--    <script src="js/jquery.jcarousel.min.js" type="text/javascript"></script>--%>
    <script src="js/jquery.fancybox.pack.js" type="text/javascript"></script>
    <script src="js/jquery.cycle.all.js" type="text/javascript"></script>
    <script src="js/jquery.fitvids.js" type="text/javascript"></script>
    <script src="js/jquery.tweet.js" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderMenu" runat="server">
    <section id="navbar" class="clearfix">
        <nav id="nav">
            <ul id="navlist" class="clearfix">
                <li><a href="Default.aspx">ANASAYFA</a>
                </li>
                <li><a href="Kurslarimiz.aspx" data-rel="submenu2">KURSLARIMIZ</a>
                    <ul id="submenu2" class="ddsubmenustyle">
                        <li><a href="Kurslarimiz.aspx">KPSS A</a></li>
                        <li><a href="Kurslarimiz.aspx">KPSS B</a></li>
                        <li><a href="Kurslarimiz.aspx">ADLİ YARDI HAKİMLİK</a></li>
                        <li><a href="Kurslarimiz.aspx">İDARİ YARGI HAKİMLİK</a></li>
                        <li><a href="Kurslarimiz.aspx">KAYMAKAMLIK</a></li>
                        <li><a href="Kurslarimiz.aspx">SMMM</a></li>
                        <li><a href="Kurslarimiz.aspx">ALES</a></li>
                        <li><a href="Kurslarimiz.aspx">DGS</a></li>
                        <li><a href="Kurslarimiz.aspx">GYS</a></li>
                    </ul>
                </li>
                <li><a href="Kaynaklarimiz.aspx" data-rel="submenu3">KAYNAKLARIMIZ</a>
                    <ul id="submenu3" class="ddsubmenustyle">
                        <li><a href="Kaynaklarimiz.aspx?KTG=1">KPSS A GRUBU</a></li>
                        <li><a href="Kaynaklarimiz.aspx?KTG=2">GNY-GNK</a></li>
                        <li><a href="Kaynaklarimiz.aspx?KTG=3">HAKİMLİK-KAYMAKAMLIK</a></li>
                    </ul>
                </li>
                <li><a href="Kadromuz.aspx">KADROMUZ</a></li>
                <li class="current"><a href="Hakkimizda.aspx">HAKKIMIZDA</a></li>
                <li><a href="Iletisim.aspx">İLETİŞİM</a></li>
            </ul>
        </nav>
    </section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderMain" runat="server">
    <section id="content" class="container clearfix">
        <header id="page-header">
            <h1 id="page-title">HAKKIMIZDA</h1>
        </header>
        <p>
            Hukukçu ve iktisatçı akademisyenlerce kurulan 657 yayınevi, 2012 yılında yayınlanan ilk kitabı “Hakimim” ile adını duyurmuş ve birçok hakim adayının başarısında önemli rol sahibi olmuştur. Uzman akademik yazar kadro tarafından kaleme alınan yayınlar ile kısa bir süre içerisinde KPSS A’nın önde gelen yayınevleri arasında yer almıştır. 2016 yılında çıkarılan Genel Yetenek-Genel Kültür yayınlarıyla da kalitesini ortaya koyan 657, kaymakamlık, sayıştay, gelir uzman yardımcılığı gibi birçok kurum sınavının akla gelen ilk kaynaklarını üretmiştir.
        </p>
        <p>
            Ağustos 2016’da faaliyete geçen 657 Eğitim Kurumları tarih itibarıyla çok yeni hatta sıfır bir kurum olsa da, bünyesinde geçmiş yılların deneyimini ve Hakimlik ve KPSS Alanına yıllarını vermiş uzman akademisyen hocalarının bilgi birikimini barındırmaktadır.
        </p>
        <p>
            Dr. Levent Ersin, Dr. Altuğ Köktaş, Dr. Okan Gelmedi ve Mehmet Kablama’nın kurucu ortaklığında faaliyete geçen eğitim kurumumuz içerisinde alanın birçok önde gelen uzman hocası yer almaktadır.
        </p>
        <p>
            Doğru bilginin kaynağı olarak, adaylara sınavda nokta atışı yapacak şekilde eğitim vermeyi hedef tutan 657 Eğitim Kurumlarının önceliği, tüm adayların verdikleri emeğin karşılığını almalarını sağlamaktır.
        </p>
        <p>
            Saygılarımızla… 
        </p>
        <div class="space20"></div>
        <%--<section>
            <h2>İŞ ORTAKLARIMIZ</h2>
            <ul>
                <li class="entry" style="width: 210px; display: inline; list-style-type: none; padding-right: 20px;">
                    <div class="entry-image">
                        <a class="fancybox" href='Images/_Yayinevi/1.png' title='' style="width: 100px; height: 100px;"><span class="overlay zoom"></span>
                            <img src="Images/_Yayinevi/1.png" alt="" style="width: 100px; height: 100px;"></a>
                    </div>
                </li>
                <li class="entry" style="width: 210px; display: inline; list-style-type: none; padding-right: 20px;">
                    <div class="entry-image">
                        <a class="fancybox" href='Images/_Yayinevi/2.jpg' title='' style="width: 100px; height: 100px;"><span class="overlay zoom"></span>
                            <img src="Images/_Yayinevi/2.jpg" alt="" style="width: 100px; height: 100px;"></a>
                    </div>
                </li>
            </ul>
        </section>--%>
    </section>
</asp:Content>
