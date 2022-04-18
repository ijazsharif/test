import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class CryptoInvestScreen extends StatefulWidget {
  const CryptoInvestScreen({Key? key}) : super(key: key);

  @override
  State<CryptoInvestScreen> createState() => _CryptoInvestScreenState();
}

class _CryptoInvestScreenState extends State<CryptoInvestScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final List<FlSpot> _lineData = [
    const FlSpot(0.0, 41.0),
    const FlSpot(1.0, 41.8),
    const FlSpot(2.0, 40.5),
    const FlSpot(3.0, 42.3),
    const FlSpot(4.0, 42.0),
    const FlSpot(5.0, 42.4),
    const FlSpot(6.0, 40.2),
    const FlSpot(7.0, 42.1),
  ];
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 6, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Invest',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        centerTitle: true,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.tune),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Bitcoin',
                    style: Theme.of(context).textTheme.headline5?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  Text(
                    "\$697.789",
                    style: Theme.of(context).textTheme.headline4?.copyWith(
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                  ),
                  Row(
                    children: [
                      const Icon(Icons.arrow_drop_up),
                      Text(
                        ' 17.75% this weak',
                        style: Theme.of(context).textTheme.bodyText2?.copyWith(
                              color: Colors.grey,
                            ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: LineChart(
                        LineChartData(
                          lineBarsData: [
                            LineChartBarData(
                              spots: _lineData,
                              color: Colors.green,
                              dotData: FlDotData(
                                show: false,
                              ),
                              barWidth: 5,
                            ),
                          ],
                          gridData: FlGridData(
                            show: true,
                            drawVerticalLine: false,
                            getDrawingHorizontalLine: (value) {
                              return FlLine(
                                color: Colors.grey[400],
                                strokeWidth: 1,
                              );
                            },
                            horizontalInterval: 0.8,
                          ),
                          titlesData: FlTitlesData(
                            bottomTitles: AxisTitles(),
                            rightTitles: AxisTitles(),
                            topTitles: AxisTitles(
                                sideTitles: SideTitles(
                              reservedSize: 64,
                              showTitles: true,
                              getTitlesWidget: (v, _) {
                                if (v == 0.0) {
                                  return const Text("7:30");
                                } else if (v == 1.0) {
                                  return const Text("1:40");
                                } else if (v == 2.0) {
                                  return const Text("6:40");
                                } else if (v == 3.0) {
                                  return const Text("8:30");
                                } else if (v == 4.0) {
                                  return const Text("10:40");
                                } else if (v == 5.0) {
                                  return const Text("10:40");
                                } else if (v == 6.0) {
                                  return const Text("10:40");
                                } else {
                                  return const Text("??:??");
                                }
                              },
                            )),
                          ),
                          borderData: FlBorderData(
                            show: false,
                          ),
                          minY: 39.0,
                          maxY: 43.0,
                        ),
                      ),
                    ),
                  ),
                  const Divider(color: Colors.grey),
                  TabBar(
                    controller: _tabController,
                    labelColor: Colors.black,
                    indicatorColor: Colors.teal,
                    indicatorSize: TabBarIndicatorSize.label,
                    tabs: const [
                      Tab(text: '1h'),
                      Tab(text: '1d'),
                      Tab(text: '7d'),
                      Tab(text: '30d'),
                      Tab(text: '1y'),
                      Tab(text: 'All'),
                    ],
                  ),
                  Container(
                    height: size.height * 0.072,
                    margin: const EdgeInsets.only(top: 16),
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      children: [
                        const CircleAvatar(
                          backgroundColor: Colors.black,
                          child: Icon(
                            Icons.pending_actions,
                            color: Colors.white,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('ADA'),
                              SizedBox(height: size.height * 0.004),
                              Text(
                                'Cardano',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2
                                    ?.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                            ],
                          ),
                        ),
                        const Spacer(),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              '\$0.8882934',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2
                                  ?.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.arrow_drop_up,
                                  color: Colors.green,
                                ),
                                Text(
                                  '11.83%',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText2
                                      ?.copyWith(
                                        fontWeight: FontWeight.bold,
                                      ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: size.height * 0.084,
              margin: const EdgeInsets.only(top: 16),
              decoration: const ShapeDecoration(
                color: Colors.black,
                shape: StadiumBorder(),
              ),
              alignment: Alignment.center,
              child: Text(
                'Trade Bitcoin',
                style: Theme.of(context).textTheme.headline6?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
