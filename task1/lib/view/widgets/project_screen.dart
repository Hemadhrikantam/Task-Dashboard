import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:task1/view/dashboarddesignpage.dart';

class ProjectScreen extends StatefulWidget {
  const ProjectScreen({super.key});

  @override
  State<ProjectScreen> createState() => _ProjectScreenState();
}

class _ProjectScreenState extends State<ProjectScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.only(right: 12, left: 12),
          child: Column(
            children: [
              Container(
                height: MediaQuery.sizeOf(context).height * 0.05,
                width: MediaQuery.sizeOf(context).width,
                decoration: BoxDecoration(
                  color: Colors.grey[50],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: TabBar(
                    unselectedLabelColor: Colors.grey,
                    indicator: BoxDecoration(
                        color: Colors.blue[200],
                        borderRadius: BorderRadius.circular(25)),
                    tabs: const [
                      Tab(
                        text: 'All',
                      ),
                      Tab(text: 'Ongoing'),
                      Tab(
                        text: 'Completed',
                      )
                    ]),
              ),
              const Expanded(
                child: TabBarView(
                  children: [AllTab(), OngoingTab(), CompletedTab()],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AllTab extends StatelessWidget {
  const AllTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 12,
          ),

          Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(16)),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "App Animations",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  const Text(
                    "Today Shared by - Unbox Digital",
                    style: TextStyle(fontSize: 13, color: Colors.grey),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  const Text("Team"),
                  const SizedBox(
                    height: 6,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Stack(
                        children: [
                          const CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/img-6.jpeg'),
                            radius: 18,
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/images/img-4.png'),
                              radius: 18,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 40),
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/images/img-5.png'),
                              radius: 18,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 62),
                            child: Icon(
                              Icons.add_circle,
                              size: 38,
                              color: Colors.orange[100],
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                          height: 80,
                          width: 80,
                          child: Lottie.asset(
                              'assets/animations/158F7b1zHO.json'))
                    ],
                  ),
                  const SizedBox(
                    height: 12,
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
                  const SizedBox(
                    height: 12,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 12,
          ),

          InkWell(
            onTap:  () => Navigator.push(context, MaterialPageRoute(builder: (context)=>const DashboardDesignPage())),
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(16)),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Dashboard Design",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    const Text(
                      "Today Shared by - Unbox Digital",
                      style: TextStyle(fontSize: 13, color: Colors.grey),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    const Text("Team"),
                    const SizedBox(
                      height: 6,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Stack(
                          children: [
                            const CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/images/img-6.jpeg'),
                              radius: 18,
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: CircleAvatar(
                                backgroundImage:
                                    AssetImage('assets/images/img-5.png'),
                                radius: 18,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 40),
                              child: CircleAvatar(
                                backgroundImage:
                                    AssetImage('assets/images/img-4.png'),
                                radius: 18,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 62),
                              child: Icon(
                                Icons.add_circle,
                                size: 38,
                                color: Colors.orange[100],
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                            height: 80,
                            width: 80,
                            child: Lottie.asset(
                                'assets/animations/animation_lo8j57i1.json'))
                      ],
                    ),
                    const SizedBox(
                      height: 12,
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
                    const SizedBox(
                      height: 12,
                    ),
                  ],
                ),
              ),
            ),
          ),
          
          const SizedBox(
            height: 12,
          ),

          Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(16)),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "App Animations",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  const Text(
                    "Today Shared by - Unbox Digital",
                    style: TextStyle(fontSize: 13, color: Colors.grey),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  const Text("Team"),
                  const SizedBox(
                    height: 6,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Stack(
                        children: [
                          const CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/img-4.png'),
                            radius: 18,
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/images/img-5.png'),
                              radius: 18,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 40),
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/images/img-6.jpeg'),
                              radius: 18,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 62),
                            child: Icon(
                              Icons.add_circle,
                              size: 38,
                              color: Colors.orange[100],
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                          height: 80,
                          width: 80,
                          child: Lottie.asset(
                              'assets/animations/LmiKpilheU.json'))
                    ],
                  ),
                  const SizedBox(
                    height: 12,
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
                  const SizedBox(
                    height: 12,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}

class OngoingTab extends StatelessWidget {
  const OngoingTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Ongoing"),
      ),
    );
  }
}

class CompletedTab extends StatelessWidget {
  const CompletedTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Completed"),
      ),
    );
  }
}
