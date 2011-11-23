<%@ Page Language="C#" MasterPageFile="~/Common/Community.master" AutoEventWireup="true" CodeBehind="Tweets.aspx.cs" Inherits="Simplicity.Web.Community.Tweets" %>


<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <div style="float: left; width: 650px">
        <div id="secnavbar" class="floatLeft">
            <div id="icon1" class="floatLeft">
                <h2 id="ourSolution">
                    Tweets</h2>
            </div>
            <div id="nsecnavbar">
                <div>
                    <asp:Image ID="Image96" ImageUrl="~/Images/subheading_bar.jpg" Height="21" runat="server" />
                </div>
            </div>
        </div>
        <div id="contentsDiv" class="communitytext">
            <div id="links">
                <div class="linktext" style="min-height:450px; overflow: hidden">
                    <script src="http://widgets.twimg.com/j/2/widget.js"></script>
                    <script>
                        new TWTR.Widget({
                            version: 2,
                            type: 'profile',
                            rpp: 5,
                            interval: 30000,
                            width: 620,
                            height: 350,
                            theme: {
                                shell: {
                                    background: '#459fd3',
                                    color: '#ffffff'
                                },
                                tweets: {
                                    background: '#ffffff',
                                    color: '#6b656b',
                                    links: '#026f7d'
                                }
                            },
                            features: {
                                scrollbar: true,
                                loop: false,
                                live: false,
                                hashtags: true,
                                timestamp: true,
                                avatars: false,
                                behavior: 'all'
                            }
                        }).render().setUser('Simplicity4Bus').start();
                    </script>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
