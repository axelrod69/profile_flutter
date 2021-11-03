import 'package:flutter/material.dart';

class ListWidget extends StatelessWidget {
  final String? userName;
  final String? name;
  final String? emailId;
  final int? timePeriod;
  final int? age;
  final String? nationality;
  final String? number;
  final int? streetNumber;
  final String? streetName;
  final String? city;
  final String? country;
//  final int postCode;
  final String? picture;

  ListWidget(
      this.userName,
      this.name,
      this.emailId,
      this.timePeriod,
      this.age,
      this.nationality,
      this.number,
      this.streetNumber,
      this.streetName,
      this.city,
      this.country,
//      this.postCode,
      this.picture
  );

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return InkWell(
      onTap: () {},
      child: Container(
        width: double.infinity,
        height: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10)
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10,
              spreadRadius: 10,
              offset: Offset(5, 5)
            )
          ]
        ),
        margin: EdgeInsets.only(
            left: 10,
            right: 10,
            bottom: 30
        ),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(left: 10),
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(139, 139, 139, 1),
                  border: Border(
                      bottom: BorderSide(
                          color: Colors.grey,
                          style: BorderStyle.solid,
                          width: 2
                      )
                  )
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      "Username: $userName",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 20
                      )
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(8),
              width: double.infinity,
              height: 240,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(242, 230, 230, 1),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)
                  )
              ),
              child: Column(
                children: [
                  Flexible(
                    flex: 2,
                    child: Container(
                      decoration: BoxDecoration(
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            flex: 2,
                            child: Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                      "$name",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18
                                      )
                                  ),
                                  Text(
                                      "Email: $emailId",
                                      style: TextStyle(
                                        fontSize: 15
                                      )
                                  )
                                ],
                              ),
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: Container(
                              child: Container(
                                width: double.infinity,
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5)
                                ),
                                child: Image.network("$picture"),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 2,
                    child: Container(
                      decoration: BoxDecoration(
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            flex: 3,
                            child: Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                      "User for ${age! - timePeriod!} Years",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold
                                      )
                                  ),
                                  SizedBox(height: 8),
                                  Text(
                                      "Age: $age",
                                      style: TextStyle(fontSize: 15)
                                  ),
                                  SizedBox(height: 8),
                                  Text("Nationality: $nationality", style: TextStyle(fontSize: 15)),
                                  SizedBox(height: 8),
                                  Text("#: $number", style: TextStyle(fontSize: 15)),
                                  SizedBox(height: 8),
                                ],
                              ),
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            child: Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                      "Address:",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18
                                      )
                                  ),
                                  SizedBox(height: 8),
                                  Text(
                                      "$streetNumber $streetName,",
                                      style: TextStyle(fontSize: 15)
                                  ),
                                  SizedBox(height: 8),
                                  Text(
                                      "${city! + "," + country!}",
                                      style: TextStyle(fontSize: 15)
                                  ),
                                  SizedBox(height: 12),
                                  Text(
                                      "700079",
//                                      "$postCode",
                                      style: TextStyle(fontSize: 15)
                                  ),
                                  SizedBox(height: 8),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
