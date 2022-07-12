<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Page/Root.Master" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="Iletisim.aspx.cs" Inherits="Yayinevi_657_Project.Iletisim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderHead" runat="server">
    <script src="js/jquery-1.7.2.min.js" type="text/javascript"></script>
    <script src="js/ie.js" type="text/javascript"></script>
    <script src="js/jquery.easing.1.3.js" type="text/javascript"></script>
    <script src="js/modernizr.custom.js" type="text/javascript"></script>
    <script src="js/jquery.polyglot.language.switcher.js" type="text/javascript"></script>
    <script src="js/ddlevelsmenu.js" type="text/javascript"></script>
    <script type="text/javascript">
        ddlevelsmenu.setup("nav", "topbar");
    </script>
    <script src="js/tinynav.min.js" type="text/javascript"></script>
    <script src="js/jquery.ui.totop.min.js" type="text/javascript"></script>
    <script src="js/jquery.validate.min.js" type="text/javascript"></script>
    <script src="js/jquery.tweet.js" type="text/javascript"></script>
    <script src="http://maps.googleapis.com/maps/api/js?sensor=false&key=AIzaSyBKLjeuKkezQjfmn4F8G22VjhfV_o3UURo" type="text/javascript"></script>
    <script src="js/jquery.gmap.min.js" type="text/javascript"></script>
    <script src="js/jquery.touchSwipe.min.js" type="text/javascript"></script>
    <script src="js/custom.js" type="text/javascript"></script>
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
                <li><a href="Hakkimizda.aspx">HAKKIMIZDA</a></li>
                <li class="current"><a href="Iletisim.aspx">İLETİŞİM</a></li>
            </ul>
        </nav>
    </section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderMain" runat="server">
    <section id="content" class="container clearfix">
        <section>
            <div id="map"
                title="657 EĞİTİM"
                data-address="Ziya Gökalp Cad. İnkılap Sok. No:19  Kızılay / ANKARA"
                data-zoom="17"
                style="width: 100%; height: 400px;">
            </div>
        </section>
        <section>
            <div id="map">
                <iframe src="https://www.google.com/maps/embed?pb=!1m0!3m2!1str!2str!4v1460397305135!6m8!1m7!1srHPdsP9t4hKA_23FXenRHw!2m2!1d39.92116160941146!2d32.85650109784541!3f6.476964142812148!4f9.969354545990214!5f1.030107701612313" width="100%" height="400" frameborder="0" style="border: 0" allowfullscreen></iframe>
            </div>
        </section>
        <section id="main" class="three-fourths">
            <h2>Bize yazın</h2>
            <div id="contact-notification-box-success" class="notification-box notification-box-success" style="display: none;">
                <p>Mesajınız başarıyla gönderildi.</p>
                <a href="#" class="notification-close notification-close-success">x</a>
            </div>

            <div id="contact-notification-box-error" class="notification-box notification-box-error " style="display: none;">
                <p id="contact-notification-box-error-msg" data-default-msg="Mesajınız gönderilemedi. Lütfen tekrar deneyin."></p>
                <a href="#" class="notification-close notification-close-error">x</a>
            </div>
            <form id="contact-form" class="content-form" method="post" action="#">
                <p>
                    <label for="name">
                        Ad Soyad &nbsp;:<span class="note">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="TextBoxAdSoyad" ValidationGroup="Gonder"></asp:RequiredFieldValidator>
                        </span>
                    </label>
                    <asp:TextBox runat="server" ID="TextBoxAdSoyad" CssClass="required"></asp:TextBox>
                </p>
                <p>
                    <label for="email">
                        E-posta &nbsp;&nbsp;&nbsp; :<span class="note">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="TextBoxEposta" ValidationGroup="Gonder"></asp:RequiredFieldValidator>
                        </span>
                    </label>
                    <asp:TextBox runat="server" ID="TextBoxEposta" CssClass="required"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="TextBoxEposta" ValidationGroup="Gonder" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </p>
                <p>
                    <label for="subject">
                        Konu &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:<span class="note">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="TextBoxKonu" ValidationGroup="Gonder"></asp:RequiredFieldValidator></span></label>
                    <asp:TextBox runat="server" ID="TextBoxKonu" CssClass="required"></asp:TextBox>
                </p>
                <p>
                    <label for="message">
                        Mesaj &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:<span class="note">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="TextBoxMesaj" ValidationGroup="Gonder"></asp:RequiredFieldValidator></span></label>
                    <asp:TextBox runat="server" ID="TextBoxMesaj" CssClass="required" TextMode="MultiLine" Rows="3" Width="300" Height="200"></asp:TextBox>
                </p>
                <p>
                    <asp:Button ID="ButtonGonder" runat="server" Text="Gönder" ValidationGroup="Gonder" CssClass="button" OnClick="ButtonGonder_Click" />
                </p>
                <p>
                    <asp:Label runat="server" ID="LabelSonuc" Text="" ForeColor="Red"></asp:Label>
                </p>
            </form>
        </section>
        <aside id="sidebar" class="one-fourth column-last">
            <div class="widget contact-info">
                <h3>İletişim Bilgisi</h3>
                <p class="address">
                    <strong>Adres: </strong>Ziya Gökalp Cad. İnkılap Sok.  No:19 Kat: 4 - 5   Kızılay / ANKARA
                </p>
                <p class="phone"><strong>Telefon: </strong>(0 541) 657 1 657</p>
                <p class="phone"><strong>Telefon: </strong>(0 312) 431 90 90</p>
                <p class="email"><strong>E-posta: </strong><a href="mailto:ankara@657egitim.com">ankara@657egitim.com</a></p>
            </div>
        </aside>
    </section>
</asp:Content>
