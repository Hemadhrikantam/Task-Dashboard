import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class DashboardDesignPage extends StatefulWidget {
  const DashboardDesignPage({super.key});

  @override
  State<DashboardDesignPage> createState() => _DashboardDesignPageState();
}

bool _checkbox = false;
bool checkbox1 = false;
bool checkbox2 = false;

class _DashboardDesignPageState extends State<DashboardDesignPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        toolbarHeight: 70,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.grey,
          ),
        ),
        actions: [
          PopupMenuButton(
            color: Colors.grey,
            onSelected: (value) {
              // your logic
            },
            itemBuilder: (BuildContext bc) {
              return const [
                PopupMenuItem(
                  value: '/hello',
                  child: Text(""),
                ),
                PopupMenuItem(
                  value: '/about',
                  child: Text(""),
                ),
                PopupMenuItem(
                  value: '/contact',
                  child: Text(""),
                )
              ];
            },
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.grey[50]),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Dashboard Design",
                        style:
                            TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                        textAlign: TextAlign.start,
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      const Text(
                        "Today Shared by - Unbox Digital",
                        style: TextStyle(color: Colors.grey),
                        textAlign: TextAlign.start,
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            height: 80,
                            width: 80,
                            child: Lottie.asset(
                                'assets/animations/animation_lo8j57i1.json'),
                          ),
                          Column(
                            children: [
                              const Text("Team"),
                              const Stack(
                                children: [
                                  CircleAvatar(
                                    backgroundImage:
                                        AssetImage('assets/images/img-4.png'),
                                    radius: 18,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 20),
                                    child: CircleAvatar(
                                      backgroundImage:
                                          AssetImage('assets/images/img-5.png'),
                                      radius: 18,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 40),
                                    child: CircleAvatar(
                                      backgroundImage:
                                          AssetImage('assets/images/img-6.jpeg'),
                                      radius: 18,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 62),
                                    child: Icon(
                                      Icons.add_circle,
                                      size: 38,
                                      color: Colors.orange,
                                    ),
                                  )
                                ],
                              ),
                              const Text(
                                "Deadline",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                              const Row(
                                children: [
                                  Icon(
                                    Icons.date_range_outlined,
                                    color: Colors.grey,
                                    size: 18,
                                  ),
                                  Text(
                                    "  Oct 27, 2023 - Nov 01, 2023",
                                    style: TextStyle(color: Colors.grey),
                                  )
                                ],
                              ),
                            ]
                                .expand((element) => [
                                      element,
                                      const SizedBox(
                                        height: 12,
                                      )
                                    ])
                                .toList(),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const Text(
                "Project Progress",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                textAlign: TextAlign.start,
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.grey[50]),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Checkbox(
                          value: _checkbox,
                          onChanged: (value) {
                            setState(() {
                              _checkbox = value!;
                            });
                          },
                        ),
                        const Text('Create user flow'),
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(
                          value: checkbox1,
                          onChanged: (value) {
                            setState(() {
                              checkbox1 = value!;
                            });
                          },
                        ),
                        const Text('create wireframe'),
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(
                          value: checkbox2,
                          onChanged: (value) {
                            setState(() {
                              checkbox2 = value!;
                            });
                          },
                        ),
                        const Text('Transform to visual Design'),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Project Overview",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  Row(
                    children: [
                      Text(
                        "Weekly",
                        style: TextStyle(color: Colors.grey),
                      ),
                      Icon(
                        Icons.keyboard_arrow_down_rounded,
                        color: Colors.grey,
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                height: MediaQuery.sizeOf(context).height * 0.23,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.grey[50]),
                child: LineChart(
                  LineChartData(
                    titlesData: const FlTitlesData(
                        // leftTitles: SideTitles(showTitles: true),
                        // bottomTitles: SideTitles(showTitles: true),
                        ),
                    gridData: const FlGridData(show: false),
                    borderData: FlBorderData(
                      show: true,
                    ),
                    minX: 1,
                    maxX: 7,
                    minY: 0,
                    maxY: 100,
                    lineBarsData: [
                      LineChartBarData(
                        spots: [
                          const FlSpot(1, 20), // Day 1
                          const FlSpot(2, 30), // Day 2
                          const FlSpot(3, 40), // Day 3
                          const FlSpot(4, 50), // Day 4
                          const FlSpot(5, 60), // Day 5
                          const FlSpot(6, 70), // Day 6
                          const FlSpot(7, 80), // Day 7
                        ],
                        isCurved: true,
                        color: Colors.blue,
                        dotData: const FlDotData(show: false),
                        belowBarData: BarAreaData(show: false),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
