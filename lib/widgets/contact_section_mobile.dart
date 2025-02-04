import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myportfolio/constants/colors.dart';
import 'package:myportfolio/constants/timeline_project.dart';
import 'package:myportfolio/services/send_email.dart';
import 'package:myportfolio/widgets/navigate_to_github.dart';
import 'package:myportfolio/widgets/navigate_header.dart';

class ContactSectionMobile extends StatefulWidget {
  const ContactSectionMobile({super.key});
  @override
  ContactSectionMobileState createState() => ContactSectionMobileState();
}

class ContactSectionMobileState extends State<ContactSectionMobile> {
  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    final TextEditingController nameController = TextEditingController();
    final TextEditingController emailController = TextEditingController();
    final TextEditingController messageController = TextEditingController();

    return KeyedSubtree(
        key: listGlobalKey[3],
        child: Container(
          width: double.infinity,
          height: 590,
          color: CustomColor.light,
          padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
          child: Column(
            children: [
              const Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Contact Info",
                    style: TextStyle(
                        color: CustomColor.subColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 12),
                        child: Icon(
                          Icons.location_on_outlined,
                          size: 22,
                          color: CustomColor.subColor,
                        ),
                      ),
                      Expanded(
                          child: Text(
                        "37/15 Trần Trọng Cung Tân Thuận Đông, Quận 7, Hồ Chí Minh",
                        style: TextStyle(
                            color: CustomColor.subColor,
                            fontSize: 16,
                            fontWeight: FontWeight.normal),
                        softWrap: true,
                      )),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 12),
                        child: Icon(
                          Icons.email_outlined,
                          size: 22,
                          color: CustomColor.subColor,
                        ),
                      ),
                      Text(
                        "trinhhau010820@gmail.com",
                        style: TextStyle(
                            color: CustomColor.subColor,
                            fontSize: 16,
                            fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 12),
                        child: Icon(
                          Icons.phone_in_talk_outlined,
                          size: 22,
                          color: CustomColor.subColor,
                        ),
                      ),
                      Text(
                        "0392567375",
                        style: TextStyle(
                            color: CustomColor.subColor,
                            fontSize: 16,
                            fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 28,
              ),
              Form(
                  key: formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Send a Message",
                        style: TextStyle(
                            color: CustomColor.subColor,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      TextFormField(
                        controller: nameController,
                        validator: (value) =>
                            value!.isEmpty ? 'Vui lòng nhập họ tên!' : null,
                        decoration: const InputDecoration(
                            // prefixIcon: Icon(
                            //   Icons.person_outline_outlined,
                            //   color: CustomColor.subColor,
                            // ),
                            labelText: "Enter your Name",
                            labelStyle: TextStyle(color: CustomColor.subColor),
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: CustomColor.subColor, width: 1)),
                            focusedBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: CustomColor.subColor))),
                        style: const TextStyle(color: CustomColor.subColor),
                        cursorColor: CustomColor.subColor,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      TextFormField(
                        controller: emailController,
                        validator: (value) =>
                            value!.contains('@') ? null : 'Email không hợp lệ!',
                        decoration: const InputDecoration(
                          // prefixIcon: Icon(
                          //   Icons.email_outlined,
                          //   color: CustomColor.subColor,
                          // ),
                          labelText: "Enter your Email Adress",
                          labelStyle: TextStyle(color: CustomColor.subColor),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: CustomColor.subColor, width: 1),
                          ),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: CustomColor.subColor, width: 1)),
                        ),
                        style: const TextStyle(color: CustomColor.subColor),
                        cursorColor: CustomColor.subColor,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      TextFormField(
                        controller: messageController,
                        validator: (value) =>
                            value!.isEmpty ? 'Vui lòng nhập nội dung!' : null,
                        maxLines: 2,
                        keyboardType: TextInputType.multiline,
                        decoration: const InputDecoration(
                            // prefixIcon: Icon(
                            //   Icons.contact_support_outlined,
                            //   color: CustomColor.subColor,
                            // ),
                            labelText: "Write your message here..",
                            labelStyle: TextStyle(color: CustomColor.subColor),
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: CustomColor.subColor, width: 1)),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: CustomColor.subColor, width: 1))),
                        style: const TextStyle(color: CustomColor.subColor),
                        cursorColor: CustomColor.subColor,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextButton(
                          style: TextButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)),
                              foregroundColor: CustomColor.light,
                              backgroundColor: CustomColor.buttonSecondary,
                              fixedSize: const Size(130, 40)),
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
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
                          child: const Text(
                            "Send",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          )),
                      const SizedBox(
                        height: 12,
                      ),
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {
                                launchURL(socialList[0]['url']!);
                              },
                              icon: const Icon(
                                FontAwesomeIcons.facebook,
                                color: CustomColor.subColor,
                                size: 20,
                              )),
                          IconButton(
                              onPressed: () {
                                launchURL(socialList[1]['url']!);
                              },
                              icon: const Icon(
                                FontAwesomeIcons.instagram,
                                color: CustomColor.subColor,
                                size: 20,
                              )),
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
                  ))
            ],
          ),
        ));
  }
}
