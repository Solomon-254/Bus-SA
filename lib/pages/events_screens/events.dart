import 'package:flutter/widgets.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../../constants/controller.dart';
import '../../helpers/responsivenes.dart';
import '../../widgets/custom_text.dart';

class EventsPage extends StatelessWidget {
  const EventsPage({Key key}) : super(key: key);

  @override
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(() => Row(
              children: [
                SizedBox(
                  width: 20,
                  height: 10,
                ),
                Container(
                  margin: EdgeInsets.only(
                      top: ResponsiveWidget.isSmallScreen(context) ? 56 : 6),
                  child: CustomText(
                    text: menuController.activeItem.value,
                    size: 18,
                    weight: FontWeight.bold,
                  ),
                )
              ],
            ))
      ],
    );
  }
}
