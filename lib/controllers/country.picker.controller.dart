import 'package:country_picker/country_picker.dart';
import 'package:packages_demo/libs.dart';

class CountryPickerController extends GetxController {
  RxString name = ''.obs;
  RxString countryCode = ''.obs;
  RxString phoneCode = ''.obs;
  RxString displayName = ''.obs;
  RxString displayNameNoCountryCode = ''.obs;
  RxString e164Key = ''.obs;
  RxInt e164Sc = 0.obs;
  RxString example = ''.obs;
  RxBool geographic = false.obs;
  RxInt level = 0.obs;
  RxString nameLocalized = ''.obs;
  RxString fullExampleWithPlusSign = ''.obs;
  RxBool isShow = false.obs;
  void country(BuildContext context) {
    showCountryPicker(
      context: context,
      exclude: <String>['KN', 'MF'],
      favorite: <String>['SE'],
      showPhoneCode: true,
      onSelect: (Country country) {
        isShow.value = true;
        name.value = country.name;
        countryCode.value = country.countryCode;
        phoneCode.value = country.phoneCode;
        displayName.value = country.displayName;
        displayNameNoCountryCode.value = country.displayNameNoCountryCode;
        e164Key.value = country.e164Key;
        e164Sc.value = country.e164Sc;
        example.value = country.example;
        geographic.value = country.geographic;
        level.value = country.level;
        nameLocalized.value = country.nameLocalized!;
        fullExampleWithPlusSign.value = country.fullExampleWithPlusSign!;
      },
      countryListTheme: CountryListThemeData(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(40.0),
          topRight: Radius.circular(40.0),
        ),
        inputDecoration: InputDecoration(
          labelText: 'Search',
          hintText: 'Start typing to search',
          prefixIcon: const Icon(Icons.search),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: const Color.fromRGBO(140, 152, 168, 1).withOpacity(0.2),
            ),
          ),
        ),
        searchTextStyle: const TextStyle(
          color: Colors.blue,
          fontSize: 18,
        ),
      ),
    );
  }
}
