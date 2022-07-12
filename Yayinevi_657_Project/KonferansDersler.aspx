<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Page/Root.Master" AutoEventWireup="true" CodeBehind="KonferansDersler.aspx.cs" Inherits="Yayinevi_657_Project.KonferansDersler" %>

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
    <script src="js/jquery.jcarousel.min.js" type="text/javascript"></script>
    <script src="js/jquery.ui.totop.min.js" type="text/javascript"></script>
    <script src="js/jquery.fancybox.pack.js" type="text/javascript"></script>
    <script src="js/jquery.cycle.all.js" type="text/javascript"></script>
    <script src="js/jquery.fitvids.js" type="text/javascript"></script>
    <script src="js/jquery.tweet.js" type="text/javascript"></script>
    <script src="js/jquery.touchSwipe.min.js" type="text/javascript"></script>
    <script src="js/custom.js" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderMenu" runat="server">
    <section id="navbar" class="clearfix">
        <nav id="nav">
            <ul id="navlist" class="clearfix">
                <li><a href="Default.aspx">ANASAYFA</a>
                </li>
                <li><a href="Yayinlarimiz.aspx" data-rel="submenu2">YAYINLARIMIZ</a>
                    <ul id="submenu2" class="ddsubmenustyle">
                        <li><a href="Yayinlarimiz.aspx?KTG=-1">YENİ ÇIKANLAR</a></li>
                        <li><a href="Yayinlarimiz.aspx?KTG=1">KPSS - A GRUBU</a></li>
                        <li><a href="Yayinlarimiz.aspx?KTG=2">GENEL KÜLTÜR - GENEL YETENEK</a></li>
                        <li><a href="Yayinlarimiz.aspx?KTG=3">ÖABT</a></li>
                        <li><a href="Yayinlarimiz.aspx?KTG=4">HAKİMLİK - KAYMAKAMLIK</a></li>
                        <li><a href="Yayinlarimiz.aspx?KTG=5">ASKERİ SINAVLAR VE POLİSLİK</a></li>
                        <li><a href="Yayinlarimiz.aspx?KTG=6">İCRA MÜDÜRLÜĞÜ</a></li>
                        <li><a href="Yayinlarimiz.aspx?KTG=7">KURUM SINAVLARI</a></li>
                    </ul>
                </li>
                <li class="current"><a href="#" data-rel="submenu3">KONFERANS DERSLER</a>
                    <ul id="submenu3" class="ddsubmenustyle">
                        <li><a href="KonferansDersler.aspx?KTG=1">KAYMAKAMLIK</a></li>
                        <li><a href="KonferansDersler.aspx?KTG=2">HAKİMLİK</a></li>
                        <li><a href="KonferansDersler.aspx?KTG=3">KPSS - A</a></li>
                    </ul>
                </li>
                <li><a href="https://www.kitapsec.com/Yayinevleri/657-Yayinevi/" target="_blank">KİTAP SATIŞ</a>
                </li>
                <li><a href="Hakkimizda.aspx">HAKKIMIZDA</a>
                </li>
                <li><a href="Iletisim.aspx">İLETİŞİM</a></li>
            </ul>
        </nav>
    </section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderMain" runat="server">
    <section id="content" class="container clearfix">
        <header id="page-header">
            <h1 id="page-title">
                <asp:Label runat="server" ID="LabelBaslik" Text=""></asp:Label></h1>
        </header>
        <section>
            <div class="three-fourths">
                <div class="entry-slider">
                    <ul>
                        <asp:Repeater ID="RepeaterKonferansResim" runat="server">
                            <ItemTemplate>
                                <li><a class="fancybox" data-fancybox-group="gallery-living-brown" href='<%# Eval("Resim") %>' title='<%# Eval("Baslik") %>'><span class="overlay zoom"></span>
                                    <img src='<%# Eval("Resim") %>' alt=""></a></li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                </div>
            </div>
            <div class="one-fourth column-last">
                <h3>DERSLER</h3>
                <ul class="check">
                    <asp:Repeater ID="RepeaterDersler" runat="server">
                        <ItemTemplate>
                            <li><%# Container.DataItem %></li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
                <h3>TOPLAM</h3>
                <ul class="check">
                    <li>
                        <asp:Label runat="server" ID="LabelToplamSaat"></asp:Label></li>
                    <li></li>
                    <li></li>
                </ul>
                <h3>YER</h3>
                <p>
                    <asp:Label runat="server" ID="LabelYer"></asp:Label>
                </p>

                <a href="https://www.kitapsec.com/Yayinevleri/657-Yayinevi/" target="_blank" class="button">SATIN AL</a>
            </div>
            <div class="clear"></div>
            <div class="one-fourth column-last">
                BAŞLANGIÇ:
                    <asp:Label runat="server" ID="LabelBaslangic"></asp:Label><br />
                BİTİŞ &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:
                    <asp:Label runat="server" ID="LabelBitis"></asp:Label><b> (HERGÜN)</b>
                <br />
                <asp:Label runat="server" ID="LabelAciklama"></asp:Label>
            </div>            
            <%-- <div class="clear"></div>
            <div class="one-fourth column-last">
                <p> 657 Yayıncılık Ltd. Şti.<br />
                    Garanti Bankası - Küçükesat Şubesi<br />
                    Şube Kodu : 732<br />
                    Hesap No : 6298875<br />
                    IBAN : TR80 0006 2000 7320 0006 2988 75</p>
            </div>      --%>
            <div class="clear"></div>
        </section>
        <section>
            <h2>HOCALARIMIZ</h2>
            <ul class="project-carousel">
                <asp:Repeater ID="RepeaterHocalar" runat="server">
                    <ItemTemplate>
                        <li class="entry">
                            <div class="entry-image">
                                <a class="fancybox" href='<%# Eval("Resim") %>' title='<%# Eval("AdiSoyadi") %>'><span class="overlay zoom"></span>
                                    <img src="images/demo/team-member.png" alt=""></a>
                            </div>
                            <h4 class="entry-title"><a href="#"><%# Eval("AdiSoyadi") %></a></h4>
                            <div class="entry-content">
                                <p><%# Eval("Aciklama") %></p>
                            </div>
                        </li>
                    </ItemTemplate>
                </asp:Repeater>
            </ul>
        </section>
        <section>
            <h2>KATILIMCILARA ÜCRETSİZ VERİLECEK YAYINLAR</h2>
            <ul class="project-carousel">
                <asp:Repeater ID="RepeaterHediyeYayinlar" runat="server">
                    <ItemTemplate>
                        <li class="entry">
                            <div class="entry-image">
                                <a class="fancybox" data-fancybox-group="gallery-living-large-windows" href='<%# Eval("Resim") %>' title='<%# Eval("Aciklama") %>'><span class="overlay zoom"></span>
                                    <img src='<%# Eval("Resim") %>' alt=""></a>
                            </div>
                            <h4 class="entry-title"><a href="#"><%# Eval("Adi") %></a></h4>
                            <div class="entry-content">
                            </div>
                        </li>
                    </ItemTemplate>
                </asp:Repeater>
            </ul>
        </section>
    </section>
</asp:Content>
