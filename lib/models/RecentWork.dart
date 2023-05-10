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
    image: "assets/images/sql3.png",
  ),
  RecentWork(
    id: 2,
    title: "Business Inteligence and Forcasting",
    category: "TabLue Projects",
    image: "assets/images/tab3.png",
  ),
  RecentWork(
    id: 3,
    title: "Data Analysis and Visualization",
    category: "Power BI Projects",
    image: "assets/images/bi2.png",
  ),
  RecentWork(
    id: 4,
    title: "Analysing Data And Dashbord Creation",
    category: "Excel Data Sheet Analysis",
    image: "assets/images/data1.png",
  ),
];
