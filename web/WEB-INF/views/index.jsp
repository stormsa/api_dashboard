<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="UTF-8" %>

        <div id="page-wrapper">
            <div class="row">
                <div class="col-md-5 meteo">
                    <jsp:include page="meteo.jsp"/>
                </div>
                <div class="col-xs-offset-1  col-md-5 news">
                    <jsp:include page="news.jsp"/>
                </div>
            </div>
            <div class="row">
                <div class="col-md-5 map">
                    <jsp:include page="map.jsp"/>
                </div>
            </div>
        </div>
    <!-- /#wrapper -->
    <script type="text/javascript">
        jQuery(function ($) {
            /*
            var performance = [12, 43, 34, 22, 12, 33, 4, 17, 22, 34, 54, 67],
                    visits = [123, 323, 443, 32],
                    traffic = [
                        {
                            Source: "Direct", Amount: 323, Change: 53, Percent: 23, Target: 600
                        },
                        {
                            Source: "Refer", Amount: 345, Change: 34, Percent: 45, Target: 567
                        },
                        {
                            Source: "Social", Amount: 567, Change: 67, Percent: 23, Target: 456
                        },
                        {
                            Source: "Search", Amount: 234, Change: 23, Percent: 56, Target: 890
                        },
                        {
                            Source: "Internal", Amount: 111, Change: 78, Percent: 12, Target: 345
                        }];

            $("#shieldui-chart1").shieldChart({
                theme: "dark",

                primaryHeader: {
                    text: "Visitors"
                },
                exportOptions: {
                    image: false,
                    print: false
                },
                dataSeries: [{
                    seriesType: "area",
                    collectionAlias: "Q Data",
                    data: performance
                }]
            });

            $("#shieldui-chart2").shieldChart({
                theme: "dark",
                primaryHeader: {
                    text: "Traffic Per week"
                },
                exportOptions: {
                    image: false,
                    print: false
                },
                dataSeries: [{
                    seriesType: "pie",
                    collectionAlias: "traffic",
                    data: visits
                }]
            });

            $("#shieldui-grid1").shieldGrid({
                dataSource: {
                    data: traffic
                },
                sorting: {
                    multiple: true
                },
                rowHover: false,
                paging: false,
                columns: [
                    { field: "Source", width: "170px", title: "Source" },
                    { field: "Amount", title: "Amount" },
                    { field: "Percent", title: "Percent", format: "{0} %" },
                    { field: "Target", title: "Target" },
                ]
            });

        */
        });

    </script>
</body>
</html>