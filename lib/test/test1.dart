AlertDialog(
                                  shape: ShapeBorder.lerp(, 5, 4),
                                  content: Column(
                                        children: [
                                          Image.asset(
                                            'assets/icon/gulabjamun.jpeg',
                                            height: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    3 -
                                                40,
                                            fit: BoxFit.fill,
                                          ),
                                          Text(p.getProducts()[i]),
                                        ],
                                      ),
                                      actions: [
                                        IconButton(
                                          onPressed: () {
                                            add2cart(i);
                                          },
                                          icon: Icon(CupertinoIcons.add),
                                        )
                                      ],

                                );