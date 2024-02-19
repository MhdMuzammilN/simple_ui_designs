import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        titleTextStyle: const TextStyle(
          color: Colors.black,
          fontSize: 25,
          fontWeight: FontWeight.w500,
        ),
        actions: const [
          CircleAvatar(
            radius: 20,
            backgroundImage: NetworkImage(
                "https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Icon(
              Icons.menu,
              color: Colors.black,
              size: 30,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                children: [
                  Text(
                    "Main Account",
                    style: TextStyle(
                        color: Color(0xff290B63),
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                  Icon(
                    Icons.expand_more_sharp,
                    size: 30,
                  )
                ],
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  "13.458 \$",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.w700),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  children: [
                    Icon(
                      Icons.visibility_off,
                      size: 15,
                      color: Color(0xff858585),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Current Balance",
                      style: TextStyle(fontSize: 12, color: Color(0xff858585)),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: const Color(0xffD4B0FD),
                        ),
                        padding: const EdgeInsets.all(8),
                        child: const Icon(
                          Icons.add,
                          size: 30,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: const Color(0xffD4B0FD),
                        ),
                        padding: const EdgeInsets.all(8),
                        child: const Icon(
                          Icons.trending_flat,
                          size: 30,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      flex: 5,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: const Color(0xffF1E6FD),
                        ),
                        padding: const EdgeInsets.all(8),
                        child: const Center(
                          child: Text(
                            "Split a purchase",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const RecentWidgets(),
              const RecentWidgets(),
              const RecentWidgets(),
            ],
          ),
        ),
      ),
    );
  }
}

class RecentWidgets extends StatelessWidget {
  const RecentWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const List companyList = [
      {
        "companyLogo":
            "http://www.ddesignerr.com/wp-content/uploads/2013/05/NikeJustDoIt.png",
        "companyName": "Nike",
        "companyDate": "17 Oct",
        "companyPrice": "-10.58 \$",
        "decoration": false
      },
      {
        "companyLogo":
            "http://www.ddesignerr.com/25-world-famous-company-logos/applelogo-2/",
        "companyName": "Apple INC",
        "companyDate": "18 Oct",
        "companyPrice": "-11.8 \$",
        "decoration": false
      },
      {
        "companyLogo":
            "https://www.ddesignerr.com/wp-content/uploads/2013/05/adidas_logo-610x411.jpg",
        "companyName": "Addidas",
        "companyDate": "20 Dec",
        "companyPrice": "250.8 \$",
        "decoration": true
      },
      {
        "companyLogo":
            "http://www.ddesignerr.com/wp-content/uploads/2013/05/coca_cola_logo.gif",
        "companyName": "Coco Cola",
        "companyDate": "30 Jan",
        "companyPrice": "152.05 \$",
        "decoration": true
      },
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Recent Events",
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return ListTile(
                visualDensity: const VisualDensity(vertical: -2),
                leading: SizedBox(
                  height: 20,
                  width: 40,
                  child: Image(
                    image: NetworkImage(
                      companyList[index]["companyLogo"],
                    ),
                  ),
                ),
                title: Text(companyList[index]["companyName"]),
                subtitle: Text(companyList[index]["companyDate"]),
                trailing: Container(
                  width: 70,
                  height: 30,
                  decoration: companyList[index]["decoration"]
                      ? BoxDecoration(
                          color: const Color(0xffF1E6FD),
                          borderRadius: BorderRadius.circular(15))
                      : const BoxDecoration(color: Colors.transparent),
                  child: Center(
                    child: Text(
                      companyList[index]["companyPrice"],
                      style: TextStyle(
                          color: companyList[index]["decoration"]
                              ? const Color(0xff4F2E7B)
                              : const Color.fromARGB(255, 0, 0, 0),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                shape: const OutlineInputBorder(
                    borderSide: BorderSide(
                  color: Color.fromARGB(255, 133, 133, 133),
                )),
              );
            },
            itemCount: 4,
            separatorBuilder: (context, index) {
              return const SizedBox(
                height: 10,
              );
            },
          )
        ],
      ),
    );
  }
}
