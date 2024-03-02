import 'package:assignment/widgets/custom_button.dart';
import 'package:assignment/widgets/custom_feedback.dart';
import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/images/4.jpg'),
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(height: 20),
                              Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        CircleAvatar(
                                          backgroundImage:
                                              AssetImage('assets/images/1.jpg'),
                                        ),
                                        SizedBox(width: 10),
                                        Text(
                                          'cc_creative',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text(
                                        'UI/UX Designer',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        CustomButton(
                                          buttonText: 'SEO',
                                        ),
                                        CustomButton(
                                          buttonText: 'Freelancing',
                                        ),
                                        CustomButton(
                                          buttonText: 'User Research',
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Icon(
                      Icons.star,
                      color: Color.fromARGB(255, 240, 212, 0),
                    ),
                    const Text(
                      '4.2',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: 80),
                    ElevatedButton(
                      style: const ButtonStyle(
                        fixedSize: MaterialStatePropertyAll(Size.infinite),
                        backgroundColor: MaterialStatePropertyAll(Colors.black),
                      ),
                      onPressed: () {},
                      child: const Row(
                        children: [
                          Text(
                            'Faridabad, Harayana',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                          SizedBox(width: 5),
                          Icon(
                            Icons.location_on_outlined,
                            color: Colors.white,
                            size: 12,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const Text(
                  'Fashion Photographer',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                const Text(
                  'I do all kinds of fashion Photography.',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 15),
                const Text(
                  'Service Provided',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black54,
                  ),
                ),
                const SizedBox(height: 10),
                const Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CustomButton(buttonText: 'SEO'),
                        CustomButton(buttonText: 'Freelancing'),
                        CustomButton(buttonText: 'User Research'),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CustomButton(buttonText: 'UI Research'),
                        CustomButton(buttonText: 'Prototyping'),
                        CustomButton(buttonText: 'Wire Framing'),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const Text(
                  'About Me',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Design a futuristic 3D skeleton model with a dynamic RGB lighting system set against a captivating space-themed background. Craft the skeleton to have a sleek, futuristic aesthetic, incorporating intricate details and streamlined features. Implement an RGB lighting scheme that pulsates or transitions smoothly across the skeleton, creating an engaging visual effect. Ensure compatibility with real-time rendering engines to maximize interactivity. The space- themed background should complement the futuristic theme, with stars, nebulae, or cosmic elements. Prioritize a balance between creativity and functionality, delivering a visually stunning 3D model ready for use in various digital or multimedia applications.',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 15),
                const Text(
                  'Skills',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black54,
                  ),
                ),
                const SizedBox(height: 10),
                const Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CustomButton(buttonText: 'SEO'),
                        CustomButton(buttonText: 'Freelancing'),
                        CustomButton(buttonText: 'User Research'),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CustomButton(buttonText: 'UI Research'),
                        CustomButton(buttonText: 'Prototyping'),
                        CustomButton(buttonText: 'Wire Framing'),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/3.jpg'),
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(12),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/2.jpg'),
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(12),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/1.jpg'),
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(12),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/5.jpg'),
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(12),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                const Text(
                  'Client FeedBack',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 30),
                const CustomFeedback(
                  imagePath: 'assets/images/2.jpg',
                  name: 'Jane Doe',
                  message:
                      'I really appreciate the insights and perspective shared in this article. It\'s definitely given mesomething to think about and has helped me see things from a different angle. Thank you for writing and sharing!',
                  ratings: 3.0,
                ),
                const SizedBox(height: 40),
                const CustomFeedback(
                  imagePath: 'assets/images/2.jpg',
                  name: 'Jane Doe',
                  message:
                      'I really appreciate the insights and perspective shared in this article. It\'s definitely given mesomething to think about and has helped me see things from a different angle. Thank you for writing and sharing!',
                  ratings: 3.0,
                ),
                Container(
                  padding: const EdgeInsets.all(15),
                  width: double.infinity,
                  child: TextButton(
                    style: ButtonStyle(
                      side: const MaterialStatePropertyAll(
                        BorderSide(style: BorderStyle.none),
                      ),
                      backgroundColor: MaterialStatePropertyAll(
                        Colors.grey.shade200,
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Load More',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
