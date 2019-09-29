import 'package:flutter/material.dart';
import './home.dart';

abstract class HomeViewModel extends State<Home> {
  bool subscribe = true;
  bool trashTaken = true;
  List feeds = [
    {
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRSZssboCMO06M73T1RVVDxzrgjKoEydpCoc0bAjG_IDEu5AHy2",
      "title": "Sampah menjadi masalah terbesar untuk Indonesia",
      "detail":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc euismod, nulla eget pretium laoreet, arcu massa malesuada lacus, quis rutrum velit mi suscipit felis. Nunc in malesuada nunc, ut tincidunt urna. Mauris sed nunc nisi. Vestibulum nec nunc eget erat lacinia vehicula. In vitae accumsan erat."
    },
    {
      "image":
          "https://environment-indonesia.com/wp-content/uploads/2015/10/sampah-1-1024x682.jpg",
      "title":
          "Gunungan Sampah TPA Cipayung Pengaruhi Depok Gagal Raih Piala Adipura",
      "detail":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc euismod, nulla eget pretium laoreet, arcu massa malesuada lacus, quis rutrum velit mi suscipit felis. Nunc in malesuada nunc, ut tincidunt urna. Mauris sed nunc nisi. Vestibulum nec nunc eget erat lacinia vehicula. In vitae accumsan erat."
    },
    {
      "image":
          "https://asset.kompas.com/crops/tUtpDxpKrp51gC3YkOhpAI0SSEA=/0x86:996x750/750x500/data/photo/2018/05/08/1384659099.jpg",
      "title":
          "Hasanudin Terusik dengan Isu Lingkungan di Jawa Barat Halaman all",
      "detail":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc euismod, nulla eget pretium laoreet, arcu massa malesuada lacus, quis rutrum velit mi suscipit felis. Nunc in malesuada nunc, ut tincidunt urna. Mauris sed nunc nisi. Vestibulum nec nunc eget erat lacinia vehicula. In vitae accumsan erat."
    }
  ];
}
