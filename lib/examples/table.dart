import 'package:flutter/material.dart';
class Table1 extends StatelessWidget {
  const Table1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Table(
              border: TableBorder.all(),
              children: const [
                TableRow(
                  children: [
                    TableCell(child: Text('no1')),
                    TableCell(child: Text('no1')),
                    TableCell(child: Text('no1')),
                ]
              ),
                TableRow(
                    children: [
                      TableCell(child: Text('no1')),
                      TableCell(child: Text('no1')),
                      TableCell(child: Text('no1')),
                    ]
                ),
                TableRow(
                    children: [
                      TableCell(child: Text('no1')),
                      TableCell(child: Text('no1')),
                      TableCell(child: Text('no1')),
                    ]
                )],
          ),
            ),
            
            
            DataTable(
                columns: const [
                  DataColumn(
                    label: Text('Column1')
                  ),
                  DataColumn(
                      label: Text('Column2')
                  ),
                  DataColumn(
                      label: Text('Column3')
                  )
                ],
                rows: const [
                  DataRow(
                      cells:[
                        DataCell(Text('cell1')),
                        DataCell(Text('cell1')),
                        DataCell(Text('cell1')),
                ]),
                  DataRow(
                      cells:[
                        DataCell(Text('cell1')),
                        DataCell(Text('cell1')),
                        DataCell(Text('cell1')),
                      ]),DataRow(
                      cells:[
                        DataCell(Text('cell1')),
                        DataCell(Text('cell1')),
                        DataCell(Text('cell1')),
                      ]),
            ])
         ]
        ),
      ),
    );
  }
}
