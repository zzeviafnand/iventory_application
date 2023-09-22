import 'package:flutter/material.dart';
import 'package:iventory_application/components/graphic/line_chart_widget.dart';

import '../constant.dart';
import '../graphic/barchart_widget.dart';
import '../graphic/pie_chart_widget.dart';

class GraphicWidget extends StatefulWidget {
  const GraphicWidget({super.key});

  @override
  State<GraphicWidget> createState() => _GraphicWidgetState();
}

class _GraphicWidgetState extends State<GraphicWidget>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        elevation: 1,
        shape: ShapeBorder.lerp(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20)),
          ),
          null,
          0,
        ),
        centerTitle: true,
        title: Text('Data Graphics'),
      ),
      body: Column(
        children: [
          Container(
            child: Tab(
              child: TabBar(
                controller: _tabController,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.black38,
                tabs: [
                  Tab(text: 'BarChart'),
                  Tab(text: 'PieChart'),
                  Tab(text: 'LineChart'),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 470,
            width: double.maxFinite,
            child: TabBarView(
              controller: _tabController,
              children: [
                BarChartWidget(),
                PieChartWidget(),
                LineChartWidget(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
