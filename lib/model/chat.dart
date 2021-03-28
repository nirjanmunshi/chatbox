class Chat {
  final String name, lastMessage, image, time;
  final bool isActive;

  Chat({
    this.name,
    this.lastMessage,
    this.image,
    this.time,
    this.isActive,
  });
}

List chatsData = [
  Chat(
    name: "Demon Salvatore",
    lastMessage: "Happy Holi",
    image: "assets/images/user_1.png",
    time: "5m ago",
    isActive: false,
  ),
  Chat(
    name: "Esther Makelson",
    lastMessage: "Hello Esther! I am...",
    image: "assets/images/user_1.png",
    time: "20 ago",
    isActive: true,
  ),
  Chat(
    name: "Toni Edwards",
    lastMessage: "I am so sorry for this loss",
    image: "assets/images/user_1.png",
    time: "1d ago",
    isActive: false,
  ),
  Chat(
    name: "Jacob Grams",
    lastMessage: "You’re welcome :)",
    image: "assets/images/user_1.png",
    time: "5d ago",
    isActive: true,
  ),
  Chat(
    name: "Albert Forbes",
    lastMessage: "Hey, how are you brother",
    image: "assets/images/user_1.png",
    time: "6d ago",
    isActive: false,
  ),
  Chat(
    name: "Bonney Rose",
    lastMessage: "Hope you are doing well Bonni...",
    image: "assets/images/user_1.png",
    time: "3m ago",
    isActive: false,
  ),
  Chat(
    name: "Kathrine Gilbert",
    lastMessage: "Hello Kathrine! I am...",
    image: "assets/images/user_1.png",
    time: "8m ago",
    isActive: true,
  ),
  Chat(
    name: "Ralph Roy",
    lastMessage: "Do you have update...",
    image: "assets/images/user_1.png",
    time: "5d ago",
    isActive: false,
  ),
];
