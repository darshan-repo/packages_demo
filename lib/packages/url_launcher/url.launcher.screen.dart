import 'package:packages_demo/controllers/url.launcher.controller.dart';
import 'package:packages_demo/libs.dart';

class URLLauncherScreen extends StatelessWidget {
  URLLauncherScreen({super.key});
  final URLLauncherController urlLauncherController = Get.find();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appBar(titleText: 'URL launcher'),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextField(
                controller: urlLauncherController.txtPhoneNo,
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(hintText: 'Phone No'),
              ),
              const SizedBox(height: 10),
              TextField(
                controller: urlLauncherController.txtEmail,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(hintText: 'Email'),
              ),
              const SizedBox(height: 10),
              MaterialButton(
                onPressed: () {
                  urlLauncherController.phoneNo.value =
                      urlLauncherController.txtPhoneNo.text;
                  urlLauncherController.email.value =
                      urlLauncherController.txtEmail.text;
                  urlLauncherController.isShow.value = true;
                },
                color: Colors.red[200],
                child: const Text('Submit'),
              ),
              const SizedBox(height: 10),
              Obx(
                () => urlLauncherController.isShow.value == true
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(urlLauncherController.phoneNo.toString()),
                          IconButton(
                            onPressed: () {
                              urlLauncherController.phoneNumber;
                            },
                            icon: const Icon(Icons.phone),
                          )
                        ],
                      )
                    : const SizedBox(),
              ),
              Obx(
                () => urlLauncherController.isShow.value == true
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(urlLauncherController.email.toString()),
                          IconButton(
                            onPressed: () {
                              urlLauncherController.emailAddress;
                            },
                            icon: const Icon(Icons.email),
                          )
                        ],
                      )
                    : const SizedBox(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
