// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:iventory_application/components/graphic/line_chart_widget.dart';

import '../appBar/appbar_sub_widget.dart';
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
      appBar: const SubAppWidget(
        title: Text('Data Graph'),
      ),
      body: Column(
        children: [
          Tab(
            child: TabBar(
              controller: _tabController,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.black38,
              tabs: const [
                Tab(text: 'BarChart'),
                Tab(text: 'PieChart'),
                Tab(text: 'LineChart'),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 470,
            width: double.maxFinite,
            child: TabBarView(
              controller: _tabController,
              children: [
                BarChartWidget(),
                const PieChartWidget(),
                const LineChartWidget(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
