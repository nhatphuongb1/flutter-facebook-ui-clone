import 'package:flutter_facebook_clone/models/models.dart';

final User currentUser = User(
    name: "Phuong Tran",
    imageUrl:
        "https://scontent-hkg4-1.xx.fbcdn.net/v/t1.0-9/64243386_874161216293273_5147180565207711744_o.jpg?_nc_cat=101&_nc_sid=09cbfe&_nc_ohc=zTFpwUtdVtEAX-pEVPw&_nc_ht=scontent-hkg4-1.xx&oh=c4a9d9fc0125dde5d10636952c91be39&oe=5F5270ED");

final List<User> onlineUsers = [
  User(
      name: "Lê Hiếu",
      imageUrl:
          "https://scontent-hkg4-1.xx.fbcdn.net/v/t1.0-9/110136914_1197964473888923_2578012507053649237_n.jpg?_nc_cat=104&_nc_sid=09cbfe&_nc_ohc=oFa2i1f_rQ8AX92wRR8&_nc_ht=scontent-hkg4-1.xx&oh=58b4b263435b9fb007b75765d5990a2d&oe=5F52FB28"),
  User(
      name: "Sơn Tùng",
      imageUrl:
          "https://kenh14cdn.com/thumb_w/660/2020/1/11/hoatran-6839-15787049420131101625916.jpg"),
  User(
      name: "Mr. Siro",
      imageUrl:
          "https://kenh14cdn.com/2018/6/4/tieu-su-ca-si-mr-siro-10362-1528072491282380217582-15281245164901611435322.jpg"),
  User(
      name: "Trấn Thành",
      imageUrl:
          'https://thegioinghesi.com/wp-content/uploads/2019/12/tranthanh-2.jpg'),
  User(
      name: "Trường Giang",
      imageUrl:
          "https://yt3.ggpht.com/a/AATXAJwIviEJRjGahmeb2uybu7_Ds4bYDSSma1eoHoglJg=s900-c-k-c0xffffffff-no-rj-mo"),
  User(
      name: "Ngô Kiến Huy",
      imageUrl:
          "https://vnn-imgs-f.vgcloud.vn/2020/04/18/16/ngo-kien-huy-co-duyen-mc-ma-lo-duyen-duong-tinh-1.jpg"),
  User(
      name: "Donald Trump",
      imageUrl:
          'https://vcdn-vnexpress.vnecdn.net/2019/08/14/bai1-4586-1565752606.jpg'),
  User(
      name: "Bill Gates",
      imageUrl:
          "https://upload.wikimedia.org/wikipedia/commons/a/a0/Bill_Gates_2018.jpg"),
  User(
      name: "Mark Zuckerberg",
      imageUrl:
          "https://www.gstatic.com/tv/thumb/persons/589228/589228_v9_ba.jpg"),
  User(
      name: "Jack Ma",
      imageUrl:
          "https://cafebiz.cafebizcdn.vn/thumb_w/600/162123310254002176/2020/4/15/photo1586959612502-15869596126371012438315.jpg"),
];

final List<Story> stories = [
  Story(
      user: onlineUsers[2],
      imageUrl:
          "https://avatar-nct.nixcdn.com/playlist/2013/11/06/c/c/a/8/1383712474084_500.jpg"),
  Story(
      user: onlineUsers[0],
      imageUrl:
          "https://scontent-xsp1-2.xx.fbcdn.net/v/t1.0-9/109374213_1190929651259072_6411157587828518135_n.jpg?_nc_cat=104&_nc_sid=174925&_nc_ohc=MsWT_qqLgREAX82mZ3V&_nc_ht=scontent-xsp1-2.xx&oh=8557cba52ecd6a669be3724b6bff64a0&oe=5F5487BB"),
  Story(
      user: onlineUsers[1],
      imageUrl:
          "https://cdn.pixabay.com/photo/2020/05/17/20/26/tee-5183448_960_720.jpg"),
  Story(
      user: onlineUsers[3],
      imageUrl: "https://vnn-imgs-f.vgcloud.vn/2020/05/17/01/5-hari-won.jpg"),
  Story(
      user: onlineUsers[6],
      imageUrl:
          "https://pbs.twimg.com/media/Ee03jZrWoAEhgOF?format=jpg&name=large"),
  Story(
      user: onlineUsers[4],
      imageUrl:
          "https://scontent-xsp1-2.xx.fbcdn.net/v/t1.0-9/108203410_1330091543828279_5204224615042278422_o.jpg?_nc_cat=107&_nc_sid=730e14&_nc_ohc=nsYhL-pCbvYAX93SwE5&_nc_ht=scontent-xsp1-2.xx&oh=16365d267df5ac3c148355819bbcc384&oe=5F52135D"),
  Story(
      user: onlineUsers[5],
      imageUrl:
          "https://scontent.fdad2-1.fna.fbcdn.net/v/t1.0-9/105023531_3549876645041035_2017648122075484766_o.jpg?_nc_cat=101&_nc_sid=8bfeb9&_nc_ohc=rywaJDhxU7IAX_evL7Q&_nc_ht=scontent.fdad2-1.fna&oh=03b1fd7b7e143d7f7491c6daa1dff538&oe=5F52C4AD"),
  Story(
      user: onlineUsers[7],
      imageUrl:
          "https://scontent-xsp1-1.xx.fbcdn.net/v/t1.0-9/13413721_10154554188675101_6012001313181167364_n.jpg?_nc_cat=105&_nc_sid=8bfeb9&_nc_ohc=gPzvlfGoGn8AX8nAzqO&_nc_ht=scontent-xsp1-1.xx&oh=ec16c957e9fe5f7a1ea90e7da2d89fc5&oe=5F53BA58"),
  Story(
      user: onlineUsers[8],
      imageUrl:
          "https://scontent.fdad1-1.fna.fbcdn.net/v/t1.0-9/106398883_10112062633203161_2656094466680824455_o.jpg?_nc_cat=100&_nc_sid=8bfeb9&_nc_ohc=ROBHskgYWdsAX-LZBLu&_nc_ht=scontent.fdad1-1.fna&oh=85128131eac7d373496af5af9feaa5e6&oe=5F52839C"),
];

// final List<Post> posts = [
//   Post(caption: "", comments: 32, imageUrl: );
// ];
