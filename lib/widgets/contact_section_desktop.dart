import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myportfolio/constants/colors.dart';
import 'package:myportfolio/constants/timeline_project.dart';
import 'package:myportfolio/services/send_email.dart';
import 'package:myportfolio/widgets/navigate_to_github.dart';
import 'package:myportfolio/widgets/navigate_header.dart';

class ContactSectionDesktop extends StatefulWidget {
  final double screenWidth;
  final double screenHeight;
  const ContactSectionDesktop(
      {super.key, required this.screenWidth, required this.screenHeight});
  @override
  ContactSectionDesktopState createState() => ContactSectionDesktopState();
}

class ContactSectionDesktopState extends State<ContactSectionDesktop> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return KeyedSubtree(
        key: listGlobalKey[3],
        child: Container(
          //key: listGlobalKey[3],
          height: 440,
          width: double.infinity,
          color: CustomColor.light,
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: widget.screenWidth > 1000 ? 50 : 20,
                      vertical: 30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Contact Info",
                        style: TextStyle(
                            color: CustomColor.subColor,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      const Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 12),
                            child: Icon(
                              Icons.location_on_outlined,
                              size: 18,
                              color: CustomColor.subColor,
                            ),
                          ),
                          Expanded(
                              child: Text(
                            "37/15 Trần Trọng Cung Tân Thuận Đông, Quận 7, Hồ Chí Minh",
                            style: TextStyle(
                                color: CustomColor.subColor,
                                fontSize: 18,
                                fontWeight: FontWeight.normal),
                            softWrap: true,
                          )),
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 12),
                            child: Icon(
                              Icons.email_outlined,
                              size: 18,
                              color: CustomColor.subColor,
                            ),
                          ),
                          Text(
                            "trinhhau010820@gmail.com",
                            style: TextStyle(
                                color: CustomColor.subColor,
                                fontSize: 18,
                                fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 12),
                            child: Icon(
                              Icons.phone_in_talk_outlined,
                              size: 18,
                              color: CustomColor.subColor,
                            ),
                          ),
                          Text(
                            "0392567375",
                            style: TextStyle(
                                color: CustomColor.subColor,
                                fontSize: 18,
                                fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              launchURL(socialList[0]['url']!);
                            },
                            icon: const Icon(
                              FontAwesomeIcons.facebook,
                              size: 20,
                            ),
                            color: CustomColor.subColor,
                          ),
                          IconButton(
                            onPressed: () {
                              launchURL(socialList[1]['url']!);
                            },
                            icon: const Icon(
                              FontAwesomeIcons.instagram,
                              size: 20,
                            ),
                            color: CustomColor.subColor,
                          ),
                          IconButton(
                              onPressed: () {
                                launchURL(socialList[2]['url']!);
                              },
                              icon: const Icon(
                                FontAwesomeIcons.linkedin,
                                color: CustomColor.subColor,
                                size: 20,
                              ))
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                  flex: 1,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: widget.screenWidth > 1000 ? 50 : 20,
                        vertical: 30),
                    child: Form(
                        key: _formKey,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(bottom: 4),
                              child: Text(
                                "Send a Message",
                                style: TextStyle(
                                    color: CustomColor.subColor,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            TextFormField(
                              controller: nameController,
                              validator: (value) => value!.isEmpty
                                  ? 'Vui lòng nhập họ tên'
                                  : null,
                              decoration: const InputDecoration(
                                  // prefixIcon: Icon(
                                  //   Icons.person_outline_outlined,
                                  //   color: CustomColor.subColor,
                                  // ),
                                  labelText: "Enter your Name",
                                  labelStyle:
                                      TextStyle(color: CustomColor.subColor),
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: CustomColor.subColor,
                                          width: 1)),
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: CustomColor.subColor))),
                              style:
                                  const TextStyle(color: CustomColor.subColor),
                              cursorColor: CustomColor.subColor,
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            TextFormField(
                              controller: emailController,
                              validator: (value) => value!.contains('@')
                                  ? null
                                  : 'Email không hợp lệ',
                              decoration: const InputDecoration(
                                // prefixIcon: Icon(
                                //   Icons.email_outlined,
                                //   color: CustomColor.subColor,
                                // ),
                                labelText: "Enter your Email Adress",
                                labelStyle:
                                    TextStyle(color: CustomColor.subColor),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: CustomColor.subColor, width: 1),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: CustomColor.subColor, width: 1)),
                              ),
                              style:
                                  const TextStyle(color: CustomColor.subColor),
                              cursorColor: CustomColor.subColor,
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            TextFormField(
                              controller: messageController,
                              validator: (value) => value!.isEmpty
                                  ? 'Vui lòng nhập nội dung'
                                  : null,
                              maxLines: 3,
                              keyboardType: TextInputType.multiline,
                              decoration: const InputDecoration(
                                  // prefixIcon: Icon(
                                  //   Icons.contact_support_outlined,
                                  //   color: CustomColor.subColor,
                                  // ),
                                  labelText: "Write your message here..",
                                  labelStyle:
                                      TextStyle(color: CustomColor.subColor),
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: CustomColor.subColor,
                                          width: 1)),
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: CustomColor.subColor,
                                          width: 1))),
                              style:
                                  const TextStyle(color: CustomColor.subColor),
                              cursorColor: CustomColor.subColor,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            TextButton(
                                style: TextButton.styleFrom(
                                    fixedSize: const Size(130, 45),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(0)),
                                    foregroundColor: CustomColor.light,
                                    backgroundColor: CustomColor.bgDark),
                                onPressed: () {
                                  if (_formKey.currentState!.validate()) {
                                    sendEmail(
                                        nameController.text,
                                        emailController.text,
                                        messageController.text,
                                        context);
                                    nameController.clear();
                                    emailController.clear();
                                    messageController.clear();
                                  }
                                },
                                child: const Text("Send"))
                          ],
                        )),
                  ))
            ],
          ),
        ));
  }
}
