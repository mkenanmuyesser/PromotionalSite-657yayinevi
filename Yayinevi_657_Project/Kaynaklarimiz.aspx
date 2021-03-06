<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Page/Root.Master" AutoEventWireup="true" CodeBehind="Kaynaklarimiz.aspx.cs" Inherits="Yayinevi_657_Project.Kaynaklarimiz" %>

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
    <script src="js/jquery.fancybox.pack.js" type="text/javascript"></script>
    <script src="js/jquery.cycle.all.js" type="text/javascript"></script>
    <script src="js/mediaelement-and-player.min.js" type="text/javascript"></script>
    <script src="js/jquery.fitvids.js" type="text/javascript"></script>
    <script src="js/jquery.tweet.js" type="text/javascript"></script>
    <script src="js/jquery.quicksand.js" type="text/javascript"></script>
    <script src="js/jquery.touchSwipe.min.js" type="text/javascript"></script>
    <script src="js/custom.js" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderMenu" runat="server">
    <section id="navbar" class="clearfix">
        <nav id="nav">
            <ul id="navlist" class="clearfix">
                <li ><a href="Default.aspx">ANASAYFA</a>
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
               <li class="current"><a href="Kaynaklarimiz.aspx" data-rel="submenu3">KAYNAKLARIMIZ</a>
                    <ul id="submenu3" class="ddsubmenustyle">
                        <li><a href="Kaynaklarimiz.aspx?KTG=1">KPSS A GRUBU</a></li>
                        <li><a href="Kaynaklarimiz.aspx?KTG=2">GNY-GNK</a></li>
                        <li><a href="Kaynaklarimiz.aspx?KTG=3">HAKİMLİK-KAYMAKAMLIK</a></li>                      
                    </ul>
                </li>
                <li ><a href="Kadromuz.aspx">KADROMUZ</a></li>
                <li ><a href="Hakkimizda.aspx">HAKKIMIZDA</a></li>
                <li ><a href="Iletisim.aspx">İLETİŞİM</a></li>
            </ul>
        </nav>
    </section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderMain" runat="server">
    <section id="content" class="container clearfix">
        <header id="page-header">
            <h1 id="page-title">
                <asp:Label runat="server" ID="LabelBaslik" Text="TÜMÜ"></asp:Label></h1>
        </header>
       <ul id="gallery" class="portfolio-grid clearfix">
            <asp:Repeater ID="DataListKaynaklar" runat="server">
                <ItemTemplate>
                    <li data-id="id-11" data-type="photography" class="entry one-fourth" style="height: 400px">
                        <div class="entry-image">
                            <a class="fancybox" href='<%# Eval("Resim") %>' title='<%# Eval("Aciklama") %>'><span class="overlay zoom"></span>
                                <center>
                                <img src='<%# Eval("Resim") %>' alt="" width="200" height="290">
                            </a>
                            </center>
                        </div>
                       
                    </li>
                </ItemTemplate>
            </asp:Repeater>
        </ul>
    </section>
</asp:Content>
