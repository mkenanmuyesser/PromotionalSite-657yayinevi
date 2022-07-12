<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Page/Root.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Yayinevi_657_Project.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderHead" runat="server">
    <script src="../js/jquery-1.7.2.min.js" type="text/javascript"></script>
    <script src="../js/ie.js" type="text/javascript"></script>
    <script src="../js/jquery.easing.1.3.js" type="text/javascript"></script>
    <script src="../js/modernizr.custom.js" type="text/javascript"></script>
    <script src="../js/jquery.polyglot.language.switcher.js" type="text/javascript"></script>
    <script src="../js/ddlevelsmenu.js" type="text/javascript"></script>
    <script type="text/javascript">
        ddlevelsmenu.setup("nav", "topbar");
    </script>
    <script src="../js/tinynav.min.js" type="text/javascript"></script>
    <script src="../js/jquery.validate.min.js" type="text/javascript"></script>
    <script src="../js/jquery.flexslider-min.js" type="text/javascript"></script>
    <script src="../js/jquery.jcarousel.min.js" type="text/javascript"></script>
    <script src="../js/jquery.ui.totop.min.js" type="text/javascript"></script>
    <script src="../js/jquery.fancybox.pack.js" type="text/javascript"></script>
    <script src="../js/jquery.cycle.all.js" type="text/javascript"></script>
    <script src="../js/mediaelement-and-player.min.js" type="text/javascript"></script>
    <script src="../js/jquery.fitvids.js" type="text/javascript"></script>
    <script src="../js/jquery.tweet.js" type="text/javascript"></script>
    <script src="../js/jquery.touchSwipe.min.js" type="text/javascript"></script>
    <script src="../js/custom.js" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderMenu" runat="server">
    <section id="navbar" class="clearfix">
        <nav id="nav">
            <ul id="navlist" class="clearfix">
                <li class="current"><a href="Default.aspx">ANASAYFA</a>
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
                <li><a href="Hakkimizda.aspx">HAKKIMIZDA</a></li>
                <li><a href="Iletisim.aspx">İLETİŞİM</a></li>
            </ul>
        </nav>
    </section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderMain" runat="server">
    <section id="content" class="container clearfix">
        <section id="slider-home">
            <div class="flex-container">
                <div class="flexslider">
                    <ul class="slides">
                        <asp:Repeater ID="RepeaterSlaytlar" runat="server">
                            <ItemTemplate>
                                <li>
                                    <img src='<%# Eval("Resim") %>' alt='<%# Eval("Tooltip") %>'>
                                    <%-- <div class="flex-caption">
                                        <h2><%# Eval("Baslik") %></h2>
                                        <p><%# Eval("Aciklama") %><a href="#"><%# Eval("Link") %></a></p>
                                    </div>--%>
                                </li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                </div>
            </div>
        </section>
        <section>
            <div class="infobox">
                <div class="infobox-inner">
                    <a class="button large" style="cursor: default">Duyurular</a>
                    <div class="with-button">
                        <marquee direction="up" behavior="scroll" scrollamount="1" style="height: 50px;">
                        <asp:DataList ID="DataListHaberler" runat="server" RepeatDirection="Vertical" >
                            <ItemTemplate>
                                <div style="float: left;">
                                    <%--<h2>Tarih:<%# Eval("Tarih") %></h2>--%>
                                    <p><%# Eval("Aciklama") %></p>
                                    <br/>
                                 </div>                            
                            </ItemTemplate>
                        </asp:DataList>
                        </marquee>
                    </div>
                    <a class="button large mobile-button" style="cursor: default">Duyurular</a>
                </div>
            </div>
        </section>
        <section>
            <h2>KURSLARIMIZ <span class="more"></h2>
            <ul>
                <asp:Repeater ID="RepeaterKurslar" runat="server">
                    <ItemTemplate>
                        <li class="entry">
                            <div class="entry-image">
                                <a class="fancybox" href='<%# Eval("Resim") %>' title='<%# Eval("Aciklama") %>'><span class="overlay zoom"></span>
                                    <img src='<%# Eval("Resim") %>' alt="">
                                </a>
                            </div>
                           <%-- <h4 class="entry-title"><a href="#"><%# Eval("KitapAdi") %></a></h4>--%>
                            <hr />
                        </li>
                    </ItemTemplate>
                </asp:Repeater>
            </ul>
        </section>
        <%--<section>
            <h2>Yeni Çıkanlar <span class="more">&ndash; <a href="Kurslarimiz.aspx?KTG=-1">Tümünü gör &raquo;</a></span></h2>
            <ul class="project-carousel">
                <asp:Repeater ID="RepeaterYeniCikanlar" runat="server">
                    <ItemTemplate>
                        <li class="entry">
                            <div class="entry-image">
                                <a class="fancybox" href='<%# Eval("Resim") %>' title='<%# Eval("Aciklama") %>'><span class="overlay zoom"></span>
                                    <img src='<%# Eval("Resim") %>' width="200" height="290" alt="">
                                </a>
                            </div>
                            <h4 class="entry-title"><a href="#"><%# Eval("KitapAdi") %></a></h4>
                        </li>
                    </ItemTemplate>
                </asp:Repeater>
            </ul>
        </section>--%>
      <%--  <section>
            <h2></h2>
            <ul class="project-carousel">
                <asp:Repeater ID="RepeaterYayineviResimler" runat="server">
                    <ItemTemplate>
                        <li class="entry">
                            <div class="entry-image">
                                <a class="fancybox" href='<%# Eval("Resim") %>'><span class="overlay zoom"></span>
                                    <center>
                            <img src='<%# Eval("Resim") %>' width="180" height="135" />             
                                        </center>
                                </a>
                            </div>
                        </li>
                    </ItemTemplate>
                </asp:Repeater>
            </ul>
        </section>--%>
    </section>
</asp:Content>
