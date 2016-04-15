﻿<%@ Page Title="KPI" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="KpiDetails.aspx.cs" Inherits="Kpis_KpiDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cp" runat="Server">
    <div class="row">
        <div class="col-md-1">
            <div class="page-header">
                <div class="dropdown">
                    <app:AddButton ID="TheAddButton" runat="server" />
                </div>
            </div>
        </div>
        <div class="col-md-11">
            <h1 class="text-center">
                <asp:Literal ID="KpiNameLiteral" runat="server"></asp:Literal>
            </h1>
        </div>
    </div>

    <div class="container">

        <div class="tile">
            <div class="t-body tb-padding">
                <div class="row">
                    <div class="col-sm-6">
                        <div class="row">
                            <asp:Literal ID="KpiType" runat="server"></asp:Literal>
                            <asp:Literal ID="WebServiceId" runat="server"></asp:Literal>
                            <asp:Literal ID="ReportingUnit" runat="server"></asp:Literal>
                            <asp:Literal ID="KpiTarget" runat="server"></asp:Literal>
                            <asp:Literal ID="StartingDate" runat="server"></asp:Literal>
                            <div class="col-md-12">
                                <asp:CheckBox ID="AddToDashboard" runat="server" Checked="true" Text="   Add to KPI Dashboard" />
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <asp:Panel ID="MeanTimeGraphic" runat="server" Visible="false">
                        <div class="col-md-4">
                            <div class="gauger" style="height: 300px;"></div>
                        </div>
                        <div class="col-md-8">
                            <asp:Image ID="gr1" runat="server" ImageUrl="~/Images/graphic01.jpg" CssClass="img-responsive" />
                        </div>
                    </asp:Panel>
                    <asp:Panel ID="RevenueCollectionGraphic" runat="server" Visible="false">
                        <div class="col-md-4">
                            <div class="gauger" style="height: 300px;"></div>
                        </div>
                        <div class="col-md-8">
                            <asp:Image ID="gr2" runat="server" ImageUrl="~/Images/graphic02.jpg" CssClass="img-responsive" />
                            <asp:Image ID="gr3" runat="server" ImageUrl="~/Images/graphic03.jpg" CssClass="img-responsive" />
                        </div>
                    </asp:Panel>
                </div>
                <div class="row">
                    <asp:Panel ID="MeanTimeProgress" runat="server" Visible="false" CssClass="m-t-30">
                        <div class="col-md-5">
                            <p>90% progress towards the goal of 2 months between failures</p>
                            <p><span style="font-size: 18px;" class="text-danger"><i class="zmdi zmdi-long-arrow-down zmdi-hc-fw"></i></span>Down 5% from last month</p>
                            <p>Lowest value: 2 days</p>
                            <p>Highest value: 1.6 months</p>
                            <p>Current value: 1.0 months</p>
                            <p>To date average: 0.7 months</p>
                        </div>
                        <div class="col-md-7">
                            <div class="table-responsive" style="max-height: 200px;">
                                <table class="table table-bordered">
                                    <tr>
                                        <th>Date</th>
                                        <th>Value</th>
                                    </tr>
                                    <tr>
                                        <td>01/02/2016</td>
                                        <td>1.5 months</td>
                                    </tr>
                                    <tr>
                                        <td>02/05/2016</td>
                                        <td>0.7 months</td>
                                    </tr>
                                    <tr>
                                        <td>03/07/2016</td>
                                        <td>1.7 months</td>
                                    </tr>
                                    <tr>
                                        <td>04/01/2016</td>
                                        <td>1.6 months</td>
                                    </tr>
                                    <tr>
                                        <td>05/08/2016</td>
                                        <td>0.2 months</td>
                                    </tr>
                                    <tr>
                                        <td>06/02/2016</td>
                                        <td>1.5 months</td>
                                    </tr>
                                    <tr>
                                        <td>07/05/2016</td>
                                        <td>0.7 months</td>
                                    </tr>
                                    <tr>
                                        <td>08/07/2016</td>
                                        <td>1.7 months</td>
                                    </tr>
                                    <tr>
                                        <td>09/01/2016</td>
                                        <td>1.6 months</td>
                                    </tr>
                                    <tr>
                                        <td>10/08/2016</td>
                                        <td>0.2 months</td>
                                    </tr>
                                    <tr>
                                        <td>11/07/2016</td>
                                        <td>0.4 months</td>
                                    </tr>
                                    <tr>
                                        <td>12/08/2016</td>
                                        <td>0.8 months</td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </asp:Panel>
                    <asp:Panel ID="RevenueCollectionProgress" runat="server" Visible="false" CssClass="m-t-30">
                        <div class="col-md-5">
                            <p>40% progress towards the goal of 30 days</p>
                            <p><span style="font-size: 18px;" class="text-danger"><i class="zmdi zmdi-long-arrow-down zmdi-hc-fw"></i></span>Down 5% from last day</p>
                            <p>Lowest value: 3 M TK</p>
                            <p>Highest value: 130 M TK</p>
                            <p>Current value: 4 M TK</p>
                            <p>To date average: 15 M TK</p>
                        </div>
                        <div class="col-md-7">
                            <div class="table-responsive" style="max-height: 200px;">
                                <table class="table table-bordered">
                                    <tr>
                                        <th>Date</th>
                                        <th>Value</th>
                                    </tr>
                                    <tr>
                                        <td>01/01/2016</td>
                                        <td>20 M TK</td>
                                    </tr>
                                    <tr>
                                        <td>01/02/2016</td>
                                        <td>10 M TK</td>
                                    </tr>
                                    <tr>
                                        <td>01/03/2016</td>
                                        <td>21 M TK</td>
                                    </tr>
                                    <tr>
                                        <td>01/04/2016</td>
                                        <td>4 M TK</td>
                                    </tr>
                                    <tr>
                                        <td>01/05/2016</td>
                                        <td>5 M TK</td>
                                    </tr>
                                    <tr>
                                        <td>01/06/2016</td>
                                        <td>15 M TK</td>
                                    </tr>
                                    <tr>
                                        <td>01/07/2016</td>
                                        <td>17 M TK</td>
                                    </tr>
                                    <tr>
                                        <td>01/08/2016</td>
                                        <td>8 M TK</td>
                                    </tr>
                                    <tr>
                                        <td>01/09/2016</td>
                                        <td>6 M TK</td>
                                    </tr>
                                    <tr>
                                        <td>01/10/2016</td>
                                        <td>11 M TK</td>
                                    </tr>
                                    <tr>
                                        <td>01/11/2016</td>
                                        <td>7 M TK</td>
                                    </tr>
                                    <tr>
                                        <td>01/12/2016</td>
                                        <td>16 M TK</td>
                                    </tr>
                                    <tr>
                                        <td>01/13/2016</td>
                                        <td>5 M TK</td>
                                    </tr>
                                    <tr>
                                        <td>01/14/2016</td>
                                        <td>15 M TK</td>
                                    </tr>
                                    <tr>
                                        <td>01/15/2016</td>
                                        <td>17 M TK</td>
                                    </tr>
                                    <tr>
                                        <td>01/16/2016</td>
                                        <td>8 M TK</td>
                                    </tr>
                                    <tr>
                                        <td>01/17/2016</td>
                                        <td>6 M TK</td>
                                    </tr>
                                    <tr>
                                        <td>01/18/2016</td>
                                        <td>11 M TK</td>
                                    </tr>
                                    <tr>
                                        <td>01/19/2016</td>
                                        <td>7 M TK</td>
                                    </tr>
                                    <tr>
                                        <td>01/20/2016</td>
                                        <td>16 M TK</td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </asp:Panel>
                </div>
            </div>
        </div>
    </div>
    <script type="text/javascript">
        $(function () {
            $('.gauger').attr("data-value", $("#" + '<%= Progress.ClientID %>').val())
            $('.gauger').each(function () {
                var progress = $(this).data("value");
                $(this).highcharts({

                    chart: {
                        type: 'gauge',
                        plotBackgroundColor: null,
                        plotBackgroundImage: null,
                        plotBorderWidth: 0,
                        plotShadow: false
                    },
                    title: {
                        text: ''
                    },
                    pane: {
                        startAngle: -150,
                        endAngle: 150,
                        background: [{
                            backgroundColor: {
                                linearGradient: { x1: 0, y1: 0, x2: 0, y2: 1 },
                                stops: [
                                    [0, '#FFF'],
                                    [1, '#333']
                                ]
                            },
                            borderWidth: 0,
                            outerRadius: '109%'
                        }, {
                            backgroundColor: {
                                linearGradient: { x1: 0, y1: 0, x2: 0, y2: 1 },
                                stops: [
                                    [0, '#333'],
                                    [1, '#FFF']
                                ]
                            },
                            borderWidth: 1,
                            outerRadius: '107%'
                        }, {
                            // default background
                        }, {
                            backgroundColor: '#DDD',
                            borderWidth: 0,
                            outerRadius: '105%',
                            innerRadius: '103%'
                        }]
                    },

                    // the value axis
                    yAxis: {
                        min: 0,
                        max: 100,

                        minorTickInterval: 'auto',
                        minorTickWidth: 1,
                        minorTickLength: 10,
                        minorTickPosition: 'inside',
                        minorTickColor: '#666',

                        tickPixelInterval: 30,
                        tickWidth: 2,
                        tickPosition: 'inside',
                        tickLength: 10,
                        tickColor: '#666',
                        labels: {
                            step: 2,
                            rotation: 'auto'
                        },
                        title: {
                            text: '%'
                        },
                        plotBands: [{
                            from: 0,
                            to: 33,
                            color: '#DF5353' // red
                        }, {
                            from: 33,
                            to: 66,
                            color: '#DDDF0D' // yellow
                        }, {
                            from: 66,
                            to: 100,
                            color: '#55BF3B' // green
                        }]
                    },

                    series: [{
                        name: 'Complete',
                        data: [progress],
                        tooltip: {
                            valueSuffix: ' %'
                        }
                    }]

                });
            });
        });
    </script>
    <asp:HiddenField ID="Progress" runat="server" />
</asp:Content>
