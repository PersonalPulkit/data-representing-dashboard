import 'package:flutter/material.dart';

import '../repository/datamodel.dart';

class DataView extends StatelessWidget {
  final Data data;
  final int itemIndex;
  const DataView({super.key, required this.data, required this.itemIndex});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1000,
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 150,
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 0.5),
                          borderRadius:
                          BorderRadius.circular(15), // Set your desired radius
                          color: Colors.grey,
                        ),
                        child: Text("Barcode : ${data.items[itemIndex].barcode}"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 150,
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 0.5),
                          borderRadius:
                          BorderRadius.circular(15), // Set your desired radius
                          color: Colors.grey,
                        ),
                        child: Text("Source : ${data.items[itemIndex].source}"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 150,
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 0.5),
                          borderRadius:
                          BorderRadius.circular(15), // Set your desired radius
                          color: Colors.grey,
                        ),
                        child: Text("Metal GRP : ${data.items[itemIndex].metalGrp}"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 150,
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 0.5),
                          borderRadius:
                          BorderRadius.circular(15), // Set your desired radius
                          color: Colors.grey,
                        ),
                        child: Text("In STK Since : ${data.items[itemIndex].inStkSince}"),
                      ),
                    ),

                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 150,
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 0.5),
                          borderRadius:
                          BorderRadius.circular(15), // Set your desired radius
                          color: Colors.grey,
                        ),
                        child: Text("Location : ${data.items[itemIndex].location}"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 150,
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 0.5),
                          borderRadius:
                          BorderRadius.circular(15), // Set your desired radius
                          color: Colors.grey,
                        ),
                        child: Text("Category : ${data.items[itemIndex].category}"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 150,
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 0.5),
                          borderRadius:
                          BorderRadius.circular(15), // Set your desired radius
                          color: Colors.grey,
                        ),
                        child: Text("STK Section : ${data.items[itemIndex].stkSection}"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 150,
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 0.5),
                          borderRadius:
                          BorderRadius.circular(15), // Set your desired radius
                          color: Colors.grey,
                        ),
                        child: Text("Cert No. : ${data.items[itemIndex].certNo}"),
                      ),
                    ),

                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 150,
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 0.5),
                          borderRadius:
                          BorderRadius.circular(15), // Set your desired radius
                          color: Colors.grey,
                        ),
                        child: Text("Branch : ${data.items[itemIndex].branch}"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 150,
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 0.5),
                          borderRadius:
                          BorderRadius.circular(15), // Set your desired radius
                          color: Colors.grey,
                        ),
                        child: Text("Collection : ${data.items[itemIndex].collection}"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 150,
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 0.5),
                          borderRadius:
                          BorderRadius.circular(15), // Set your desired radius
                          color: Colors.grey,
                        ),
                        child: Text("Mfgd by : ${data.items[itemIndex].mfgdBy}"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 150,
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 0.5),
                          borderRadius:
                          BorderRadius.circular(15), // Set your desired radius
                          color: Colors.grey,
                        ),
                        child: Text("HUID No. : ${data.items[itemIndex].huidNo}"),
                      ),
                    ),

                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            alignment: Alignment.center,
                            height: 50,
                            width: 150,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black, width: 0.5),
                              borderRadius:
                              BorderRadius.circular(15), // Set your desired radius
                              color: Colors.grey,
                            ),
                            child: Text("Status : ${data.items[itemIndex].status}"),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            alignment: Alignment.center,
                            height: 50,
                            width: 150,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black, width: 0.5),
                              borderRadius:
                              BorderRadius.circular(15), // Set your desired radius
                              color: Colors.grey,
                            ),
                            child: Text("Counter : ${data.items[itemIndex].counter}"),
                          ),
                        ),
                      ],
                    ),
                    Row(children: [Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        alignment: Alignment.centerLeft,
                        height: 50,
                        width: 250,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 0.5),
                          borderRadius:
                          BorderRadius.circular(15), // Set your desired radius
                          color: Colors.grey,
                        ),
                        child: Text("Description : ${data.items[itemIndex].description}"),
                      ),
                    ),],),
                    Row(children: [Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        alignment: Alignment.centerLeft,
                        height: 50,
                        width: 250,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 0.5),
                          borderRadius:
                          BorderRadius.circular(15), // Set your desired radius
                          color: Colors.grey,
                        ),
                        child: Text("Notes : ${data.items[itemIndex].notes}"),
                      ),
                    ),],),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            alignment: Alignment.center,
                            height: 55,
                            width: 150,
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black, width: 0.5),
                              borderRadius:
                              BorderRadius.circular(15), // Set your desired radius
                              color: Colors.grey,
                            ),
                            child: Text("Order No. : ${data.items[itemIndex].orderNo}"),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            alignment: Alignment.center,
                            height: 60,
                            width: 150,
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black, width: 0.5),
                              borderRadius:
                              BorderRadius.circular(15), // Set your desired radius
                              color: Colors.grey,
                            ),
                            child: Text("Cus Name : ${data.items[itemIndex].cusName}"),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      alignment: Alignment.center,
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 0.5),
                        borderRadius:
                        BorderRadius.circular(15), // Set your desired radius
                        color: Colors.grey,
                      ),
                      child: Image.network(data.items[itemIndex].imageLink.toString()),
                    ),
                  ),
                ],)
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: 150,
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 0.5),
                      borderRadius:
                          BorderRadius.circular(15), // Set your desired radius
                      color: Colors.grey,
                    ),
                    child: Text("Size : ${data.items[itemIndex].size}"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: 150,
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 0.5),
                      borderRadius:
                      BorderRadius.circular(15), // Set your desired radius
                      color: Colors.grey,
                    ),
                    child: Text("Quality : ${data.items[itemIndex].quality}"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: 150,
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 0.5),
                      borderRadius:
                      BorderRadius.circular(15), // Set your desired radius
                      color: Colors.grey,
                    ),
                    child: Text("KT : ${data.items[itemIndex].kt}"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: 150,
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 0.5),
                      borderRadius:
                      BorderRadius.circular(15), // Set your desired radius
                      color: Colors.grey,
                    ),
                    child: Text("PCS : ${data.items[itemIndex].pcs}"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: 150,
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 0.5),
                      borderRadius:
                      BorderRadius.circular(15), // Set your desired radius
                      color: Colors.grey,
                    ),
                    child: Text("Grows wt : ${data.items[itemIndex].grossWt}"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: 150,
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 0.5),
                      borderRadius:
                      BorderRadius.circular(15), // Set your desired radius
                      color: Colors.grey,
                    ),
                    child: Text("Net wt : ${data.items[itemIndex].netWt}"),
                  ),
                ),




              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: 150,
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 0.5),
                      borderRadius:
                      BorderRadius.circular(15), // Set your desired radius
                      color: Colors.grey,
                    ),
                    child: Text("Dia Pcs : ${data.items[itemIndex].diaPcs}"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: 150,
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 0.5),
                      borderRadius:
                      BorderRadius.circular(15), // Set your desired radius
                      color: Colors.grey,
                    ),
                    child: Text("Dia wt : ${data.items[itemIndex].diaWt}"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: 150,
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 0.5),
                      borderRadius:
                      BorderRadius.circular(15), // Set your desired radius
                      color: Colors.grey,
                    ),
                    child: Text("Cls Pcs : ${data.items[itemIndex].clsPcs}"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: 150,
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 0.5),
                      borderRadius:
                      BorderRadius.circular(15), // Set your desired radius
                      color: Colors.grey,
                    ),
                    child: Text("Cls wt : ${data.items[itemIndex].clsWt}"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: 150,
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 0.5),
                      borderRadius:
                      BorderRadius.circular(15), // Set your desired radius
                      color: Colors.grey,
                    ),
                    child: Text("Chain wt : ${data.items[itemIndex].chainWt}"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: 150,
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 0.5),
                      borderRadius:
                      BorderRadius.circular(15), // Set your desired radius
                      color: Colors.grey,
                    ),
                    child: Text("M Rate : ${data.items[itemIndex].mRate}"),
                  ),
                ),


              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: 150,
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 0.5),
                      borderRadius:
                      BorderRadius.circular(15), // Set your desired radius
                      color: Colors.grey,
                    ),
                    child: Text("M Value : ${data.items[itemIndex].mValue}"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: 150,
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 0.5),
                      borderRadius:
                      BorderRadius.circular(15), // Set your desired radius
                      color: Colors.grey,
                    ),
                    child: Text("L Rate : ${data.items[itemIndex].lRate}"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: 150,
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 0.5),
                      borderRadius:
                      BorderRadius.circular(15), // Set your desired radius
                      color: Colors.grey,
                    ),
                    child: Text("L changes : ${data.items[itemIndex].lCharges}"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: 150,
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 0.5),
                      borderRadius:
                      BorderRadius.circular(15), // Set your desired radius
                      color: Colors.grey,
                    ),
                    child: Text("R changes : ${data.items[itemIndex].rCharges}"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: 150,
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 0.5),
                      borderRadius:
                      BorderRadius.circular(15), // Set your desired radius
                      color: Colors.grey,
                    ),
                    child: Text("O changes : ${data.items[itemIndex].oCharges}"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: 150,
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 0.5),
                      borderRadius:
                      BorderRadius.circular(15), // Set your desired radius
                      color: Colors.grey,
                    ),
                    child: Text("MRP : ${data.items[itemIndex].mrp}"),
                  ),
                ),



              ],
            ),
          ],
        ),
      ),
    );
  }
}
