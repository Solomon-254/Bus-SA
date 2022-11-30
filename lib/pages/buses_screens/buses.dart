import 'package:bus_management_system/constants/style.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../../constants/controller.dart';
import '../../helpers/responsivenes.dart';
import '../../widgets/custom_text.dart';

class BusesPage extends StatelessWidget {
  const BusesPage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 30),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 6), color: bgAccentColor, blurRadius: 12),
          ],
          border: Border.all(color: bgAccentColor, width: .5)),
      child: Padding(
        padding: const EdgeInsets.all(70),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                CustomText(
                  text: "All Buses Available",
                  color: Colors.black,
                  weight: FontWeight.bold,
                )
              ],
            ),
            DataTable2(
              columnSpacing: 10,
              horizontalMargin: 12,
              minWidth: 900,
              columns: const [
                DataColumn2(
                  label: Text('Name'),
                  size: ColumnSize.L,
                ),
                DataColumn2(
                  label: Text('Licence Number'),
                  size: ColumnSize.L,
                ),
                DataColumn2(
                  label: Text('Purchase Date'),
                  size: ColumnSize.L,
                ),
                DataColumn2(
                  label: Text('Amount Purchased'),
                  size: ColumnSize.L,
                ),
                DataColumn(
                  label: Text('Plate Number'),
                ),
                DataColumn2(
                  label: Text('Driver(s) Assigned'),
                  size: ColumnSize.L,
                ),
                DataColumn2(
                  label: Text('Action'),
                  size: ColumnSize.L,
                ),
                DataColumn(
                  label: Text('Action'),
                ),
                DataColumn(
                  label: Text('Action'),
                ),
              ],
              rows: List<DataRow>.generate(
                6,
                (index) => DataRow(cells: [
                  DataCell(
                    CustomText(
                      text: "Super Metro",
                      color: textColor,
                      size: 16,
                      weight: FontWeight.w600,
                    ),
                  ),
                  DataCell(
                    CustomText(
                      text: "11CA-BWX53",
                      color: textColor,
                      size: 16,
                      weight: FontWeight.w600,
                    ),
                  ),
                  DataCell(
                    CustomText(
                      text: "22/11/2022",
                      color: textColor,
                      size: 16,
                      weight: FontWeight.w600,
                    ),
                  ),
                  DataCell(
                    CustomText(
                      text: "\$57000",
                      color: textColor,
                      size: 16,
                      weight: FontWeight.w600,
                    ),
                  ),
                  DataCell(
                    CustomText(
                      text: "SAB33-C1A",
                      color: textColor,
                      size: 16,
                      weight: FontWeight.w600,
                    ),
                  ),
                  DataCell(
                    CustomText(
                      text: "Nelson Bore",
                      color: textColor,
                      size: 16,
                      weight: FontWeight.w600,
                    ),
                  ),
                  DataCell(Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: bgAccentColor, width: .5),
                        color: bgColor,
                        borderRadius: BorderRadius.circular(20)),
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    child: CustomText(
                      text: "Edit",
                      color: Colors.green.withOpacity(.7),
                      weight: FontWeight.bold,
                    ),
                  )),
                  DataCell(Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: bgAccentColor, width: .5),
                        color: bgColor,
                        borderRadius: BorderRadius.circular(20)),
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    child: CustomText(
                      text: "Delete",
                      color: Colors.red.withOpacity(.7),
                      weight: FontWeight.bold,
                    ),
                  )),
                  DataCell(Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: bgAccentColor, width: .5),
                        color: bgColor,
                        borderRadius: BorderRadius.circular(20)),
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    child: CustomText(
                      text: "Details",
                      color: Colors.orange.withOpacity(.7),
                      weight: FontWeight.bold,
                    ),
                  )),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Obx(() => Row(
//               children: [
//                 const SizedBox(
//                   width: 20,
//                   height: 10,
//                 ),
//                 Container(
//                   margin: EdgeInsets.only(
//                       top: ResponsiveWidget.isSmallScreen(context) ? 56 : 6),
//                   child: CustomText(
//                     text: menuController.activeItem.value,
//                     size: 18,
//                     weight: FontWeight.bold,
//                   ),
//                 )
//               ],
//             ))
//       ],
//     );
//   }
// }
