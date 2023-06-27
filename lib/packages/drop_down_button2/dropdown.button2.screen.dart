import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:packages_demo/controllers/drop.down.button2.controller.dart';
import 'package:packages_demo/libs.dart';

class DropdownButton2Screen extends StatelessWidget {
  const DropdownButton2Screen({super.key});
  // final DropDownButton2Controller dropDownButton2Controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appBar(titleText: 'Dropdown Button2'),
        body: Center(
          child: GetBuilder<DropDownButton2Controller>(
            builder: (controller) => DropdownButtonHideUnderline(
              child: DropdownButton2(
                hint: Text(
                  'Select Item',
                  style: TextStyle(
                    fontSize: 14,
                    color: Theme.of(context).hintColor,
                  ),
                ),
                items: controller.items
                    .map(
                      (item) => DropdownMenuItem<RxString>(
                        value: item.obs,
                        child: Text(
                          item,
                          style: const TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ),
                    )
                    .toList(),
                value: controller.selectedValue!.value,
                onChanged: (value) {
                  controller.selectedValue!.value = value.toString();
                },
                buttonStyleData: ButtonStyleData(
                  height: 50,
                  width: 200,
                  padding: const EdgeInsets.only(left: 14, right: 14),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    border: Border.all(
                      color: Colors.black,
                    ),
                    color: Colors.red[100],
                  ),
                  elevation: 2,
                ),
                iconStyleData: const IconStyleData(
                  icon: Icon(
                    Icons.arrow_forward_ios_outlined,
                  ),
                  iconSize: 14,
                  iconEnabledColor: Colors.black,
                  iconDisabledColor: Colors.red,
                ),
                dropdownStyleData: DropdownStyleData(
                  maxHeight: 200,
                  width: 200,
                  padding: const EdgeInsets.only(left: 14, right: 14),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: Colors.red[100],
                  ),
                  elevation: 8,
                  offset: const Offset(0, 0),
                  scrollbarTheme: ScrollbarThemeData(
                    radius: const Radius.circular(40),
                    thickness: MaterialStateProperty.all(6),
                    thumbVisibility: MaterialStateProperty.all(true),
                  ),
                ),
                menuItemStyleData: const MenuItemStyleData(
                  height: 40,
                  padding: EdgeInsets.only(left: 14, right: 14),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
