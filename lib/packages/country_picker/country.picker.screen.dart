import 'package:packages_demo/controllers/country.picker.controller.dart';
import 'package:packages_demo/libs.dart';

class CountryPickerScreen extends StatelessWidget {
  CountryPickerScreen({super.key});

  final CountryPickerController countryPickerController =
      CountryPickerController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appBar(titleText: 'Country Picker'),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Obx(
                () => countryPickerController.isShow.value == true
                    ? Card(
                        // padding: const EdgeInsets.all(10),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Name : ${countryPickerController.name}',
                                style: const TextStyle(fontSize: 16),
                              ),
                              const Divider(),
                              Text(
                                'Country Code : ${countryPickerController.countryCode}',
                                style: const TextStyle(fontSize: 16),
                              ),
                              const Divider(),
                              Text(
                                'Phone Code : ${countryPickerController.phoneCode}',
                                style: const TextStyle(fontSize: 16),
                              ),
                              const Divider(),
                              Text(
                                'Display Name : ${countryPickerController.displayName}',
                                style: const TextStyle(fontSize: 16),
                              ),
                              const Divider(),
                              Text(
                                'Display Name on Country Code : ${countryPickerController.displayNameNoCountryCode}',
                                style: const TextStyle(fontSize: 16),
                              ),
                              const Divider(),
                              Text(
                                'e164Key : ${countryPickerController.e164Key}',
                                style: const TextStyle(fontSize: 16),
                              ),
                              const Divider(),
                              Text(
                                'e164Sc : ${countryPickerController.e164Sc}',
                                style: const TextStyle(fontSize: 16),
                              ),
                              const Divider(),
                              Text(
                                'Exapmle : ${countryPickerController.example}',
                                style: const TextStyle(fontSize: 16),
                              ),
                              const Divider(),
                              Text(
                                'Geographic : ${countryPickerController.geographic}',
                                style: const TextStyle(fontSize: 16),
                              ),
                              const Divider(),
                              Text(
                                'Level : ${countryPickerController.level}',
                                style: const TextStyle(fontSize: 16),
                              ),
                              const Divider(),
                              Text(
                                'Name Localized : ${countryPickerController.nameLocalized}',
                                style: const TextStyle(fontSize: 16),
                              ),
                              const Divider(),
                              Text(
                                'Full Example With PlusSign : ${countryPickerController.fullExampleWithPlusSign}',
                                style: const TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                      )
                    : const SizedBox(),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
          child: MaterialButton(
            onPressed: () {
              countryPickerController.country(context);
            },
            height: 50,
            minWidth: double.infinity,
            color: Colors.red[200],
            shape: const StadiumBorder(),
            child: const Text(
              'Show Country picker',
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
      ),
    );
  }
}
