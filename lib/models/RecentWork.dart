class RecentWork {
  final String image, category, title;
  final int id;

  RecentWork({this.id, this.image, this.category, this.title});
}

// Demo List of my works
List<RecentWork> recentWorks = [
  RecentWork(
    id: 1,
    title: "SQL Data Exploration in Microsoft SQL Server",
    category: "SQL Data Cleaning ",
    image: "assets/images/work_1.png",
  ),
  RecentWork(
    id: 2,
    title: "Business Inteligence and Forcasting",
    category: "TabLue Projects",
    image: "assets/images/work_2.png",
  ),
  RecentWork(
    id: 3,
    title: "Data Analysis and Visualization",
    category: "Power BI Projects",
    image: "assets/images/work_3.png",
  ),
  RecentWork(
    id: 4,
    title: "Analysing Data And Dashbord Creation",
    category: "Excel Data Sheet Analysis",
    image: "assets/images/work_4.png",
  ),
];
