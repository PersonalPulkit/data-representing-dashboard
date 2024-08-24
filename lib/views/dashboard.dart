import 'dart:core';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:interwiew_assignment/provider/data_provider.dart';
import 'package:interwiew_assignment/repository/datamodel.dart';
import 'package:interwiew_assignment/view_models/item_vm.dart';
import 'package:interwiew_assignment/views/data_view.dart';
import 'package:provider/provider.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  late Data? data;

  final TextEditingController _searchField = TextEditingController();
  String? searchText;
  String? searchItem;
  int itemIndex = 0;

  @override
  Widget build(BuildContext context) {
    TextEditingController itemController = TextEditingController();
    data = context.watch<DataProvider>().data;

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/BG.png'), // Replace with your image
          fit: BoxFit.cover,
        ),
      ),
      child: DefaultTabController(
        length: 1,
        child: Scaffold(
          drawer: Drawer(),
          appBar: AppBar(
            bottom: TabBar(
              padding: EdgeInsets.all(10),
              indicatorSize: TabBarIndicatorSize.label,
              indicator: BoxDecoration(
                border: Border.all(color: Colors.black, width: 0.5),
                borderRadius:
                    BorderRadius.circular(15), // Set your desired radius
                color: Colors.white, // Indicator color
              ),
              isScrollable: true,
              tabs: [
                Tab(
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: 30, right: 30), // Add padding here
                    child: Text(
                      "Details",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
            title: const Text('Interview Task UI'),
          ),
          body: TabBarView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // Container(
                      //   width: 100,
                      //   padding: EdgeInsets.only(
                      //       left: 100, right: 100, top: 20, bottom: 20),
                      //   child: TextField(
                      //     controller: _searchField,
                      //     onChanged: (text) {
                      //       setState(() {
                      //         searchText = text;
                      //       });
                      //     },
                      //     decoration: InputDecoration(
                      //       hintText: 'Search...', // Placeholder text
                      //       hintStyle: TextStyle(
                      //           color: Colors.grey[400]), // Placeholder color
                      //       icon: Icon(Icons.search,
                      //           color: Colors.white), // Search icon
                      //     ),
                      // decoration: InputDecoration(
                      //   prefixIcon: Icon(Icons.search),
                      //   hintText: 'Search',
                      //   filled: true,
                      // ),
                      //   ),
                      // ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              color: Colors.blueGrey.shade900, // Set your desired background color
                              borderRadius: BorderRadius.all(Radius.circular(
                                  25.0)), // Adjust the radius as needed
                            ),
                            child: DropdownMenu(
                              width: 500,
                              leadingIcon: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(Icons.search),
                              ),
                              label: Text("Search"),
                              enableSearch: true,
                              enableFilter: true,
                              controller: itemController,
                              onSelected: (item) {
                                setState(() {
                                  searchText = itemController.text;
                                  searchItem = itemController.text;
                                  for (var i = 0; i < data!.items.length; i++) {
                                    if (searchItem == data!.items[i].barcode) {
                                      itemIndex = i;
                                    }
                                  }
                                });
                              },
                              dropdownMenuEntries:
                                  ItemVM.items.map<DropdownMenuEntry>((items) {
                                return DropdownMenuEntry(
                                  value: items,
                                  label: items.barcode,
                                );
                              }).toList(),
                            ),
                          ),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          overlayColor: Colors.transparent,
                          surfaceTintColor: Colors.transparent,
                          shadowColor: Colors.transparent,
                          enableFeedback: false,
                          backgroundColor: Colors.transparent,
                          elevation:
                              0, // Set elevation to 0 for complete transparency
                        ),
                        onPressed: () {
                          setState(() {
                            searchText = null;
                            _searchField.clear();
                          });
                        },
                        child: Text("Clear"),
                      ),
                    ],
                  ),
                  DataView(
                    data: data!,
                    itemIndex: itemIndex,
                  ),
                  DataTable(
                    decoration: BoxDecoration(
                      color: Colors.grey.shade800,
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    columns: [
                      DataColumn(label: Text("Lot Description")),
                      DataColumn(label: Text('Group')),
                      DataColumn(label: Text('Units')),
                      DataColumn(label: Text('Pcs')),
                      DataColumn(label: Text('Weight')),
                      DataColumn(label: Text('Rate')),
                      DataColumn(label: Text('Value')),
                      DataColumn(label: Text('S Rate')),
                      DataColumn(label: Text('S Value')),
                    ],
                    rows: data?.items[itemIndex].tableData
                            .map<DataRow>((item) {
                          return DataRow(
                            color: MaterialStateColor.resolveWith((states) {
                              return Colors.white10;
                            }),
                            cells: <DataCell>[
                              DataCell(Text(item.lotDescription.toString())),
                              DataCell(Text(item.group.toString())),
                              DataCell(Text(item.units.toString())),
                              DataCell(Text(item.pcs.toString())),
                              DataCell(Text(item.weight.toString())),
                              DataCell(Text(item.rate.toString())),
                              DataCell(Text(item.value.toString())),
                              DataCell(Text(item.sRate.toString())),
                              DataCell(Text(item.sValue.toString())),
                            ],
                          );
                        }).toList() ??
                        [],
                    // [
                    //   DataRow(cells: [
                    //     DataCell(Text(data!.items[1].tableData.first.lotDescription )),
                    //     DataCell(Text(data!.items[1].tableData.first.lotDescription )),
                    //     DataCell(Text(data!.items[1].tableData.first.lotDescription )),
                    //     DataCell(Text(data!.items[1].tableData.first.lotDescription )),
                    //     DataCell(Text(data!.items[1].tableData.first.lotDescription )),
                    //     DataCell(Text(data!.items[1].tableData.first.lotDescription )),
                    //     DataCell(Text(data!.items[1].tableData.first.lotDescription )),
                    //     DataCell(Text(data!.items[1].tableData.first.lotDescription )),
                    //     DataCell(Text(data!.items[1].tableData.first.lotDescription )),
                    //     DataCell(Text(data!.items[1].tableData.first.lotDescription )),
                    //   ])
                    //   // DataRow(cells: [
                    //   //   DataCell(Text('Alice')),
                    //   //   DataCell(Text('25')),
                    //   // ]),
                    //   // More rows...
                    // ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
