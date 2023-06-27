import 'package:packages_demo/controllers/permission.handler.controller.dart';
import 'package:packages_demo/libs.dart';

class PermissionHandlerScreen extends StatelessWidget {
  PermissionHandlerScreen({super.key});
  static final PermissionHandlerController _permissionHandlerController =
      Get.find();
  final List<Map> permissionData = [
    {
      'onPressed': () => _permissionHandlerController.requestCamera,
      'buttonText': 'Camara'
    },
    {
      'onPressed': () => _permissionHandlerController.accessMediaLocation,
      'buttonText': 'Access Media Location'
    },
    {
      'onPressed': () => _permissionHandlerController.accessNotificationPolicy,
      'buttonText': 'Access Notification Policy'
    },
    {
      'onPressed': () => _permissionHandlerController.activityRecognition,
      'buttonText': 'activity Recognition'
    }
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appBar(titleText: 'Permission Handler'),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
          child: ListView.builder(
            itemCount: permissionData.length,
            itemBuilder: (context, index) =>
                GetBuilder<PermissionHandlerController>(
              builder: (controller) => materialButton(
                onPressed: () {
                  permissionData[index]['onPressed']();
                  controller.isShowMessage.value == true
                      ? ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Align(
                              alignment: Alignment.center,
                              child: Obx(
                                () => Text(
                                  controller.permissionMessage.value,
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            duration: const Duration(seconds: 1),
                            backgroundColor: Colors.green[200],
                            margin: const EdgeInsets.all(20),
                            behavior: SnackBarBehavior.floating,
                          ),
                        )
                      : Text(controller.permissionMessage.value);
                },
                buttonText: permissionData[index]['buttonText'],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget materialButton({
    String buttonText = '',
    required void Function()? onPressed,
  }) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
      child: MaterialButton(
        onPressed: onPressed,
        height: 50,
        color: Colors.red[200],
        shape: BeveledRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          buttonText,
          style: const TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
    );
  }
}
