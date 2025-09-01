import 'package:challeng_app/features/data/comunity.dart';
import 'package:challeng_app/features/data/user_score.dart';

class DummyData {
  static final komunitas = [
    UserScore(
      username: '',
      name: "Komunitas Teal",
      region: "Jakarta Selatan",
      score: 120, // langsung isi angka
      avatar: "https://i.pravatar.cc/150?img=1",
    ),
    UserScore(
      username: '',
      name: "Komunitas Purple",
      region: "Bandung",
      score: 95,
      avatar: "https://i.pravatar.cc/150?img=2",
    ),
    UserScore(
      username: '',
      name: "Komunitas Pinky",
      region: "Surabaya",
      score: 110,
      avatar: "https://i.pravatar.cc/150?img=3",
    ),
    UserScore(
      username: '',
      name: "Komunitas Hijau",
      region: "Yogyakarta",
      score: 87,
      avatar: "https://i.pravatar.cc/150?img=10",
    ),
    UserScore(
      username: '',
      name: "Komunitas Merah",
      region: "Semarang",
      score: 102,
      avatar: "https://i.pravatar.cc/150?img=11",
    ),
  ];

  static final tunggal = [
    UserScore(
      name: "Budiman Tanuwijaya",
      username: "budiman88",
      score: 150,
      avatar: "https://i.pravatar.cc/150?img=4",
    ),
    UserScore(
      name: "Gilang Kencana",
      username: "gilangken",
      score: 140,
      avatar: "https://i.pravatar.cc/150?img=5",
    ),
    UserScore(
      name: "Narpati Lukita",
      username: "narpatiL",
      score: 135,
      avatar: "https://i.pravatar.cc/150?img=6",
    ),
    UserScore(
      name: "Ravi Pratama",
      username: "ravi_p",
      score: 128,
      avatar: "https://i.pravatar.cc/150?img=12",
    ),
    UserScore(
      name: "Kevin Saputra",
      username: "kevinsp",
      score: 122,
      avatar: "https://i.pravatar.cc/150?img=13",
    ),
    UserScore(
      name: "Kemal Surya",
      username: "kemals",
      score: 119,
      avatar: "https://i.pravatar.cc/150?img=14",
    ),
    UserScore(
      name: "Leo Prakoso",
      username: "leo_pr",
      score: 115,
      avatar: "https://i.pravatar.cc/150?img=15",
    ),
  ];

  static final ganda = [
    UserScore(
      name: "Budiman / Ravi",
      username: "bud_ravi",
      score: 180,
      avatar: "https://i.pravatar.cc/150?img=7",
    ),
    UserScore(
      name: "Kevin / Kemal",
      username: "kev_kem",
      score: 172,
      avatar: "https://i.pravatar.cc/150?img=8",
    ),
    UserScore(
      name: "Narpati / Leo",
      username: "nar_leo",
      score: 169,
      avatar: "https://i.pravatar.cc/150?img=9",
    ),
    UserScore(
      name: "Gilang / Surya",
      username: "gil_sur",
      score: 160,
      avatar: "https://i.pravatar.cc/150?img=16",
    ),
    UserScore(
      name: "Andi / Budi",
      username: "andi_budi",
      score: 158,
      avatar: "https://i.pravatar.cc/150?img=17",
    ),
  ];
}
final List<Community> communities = [
  Community(id: 1, name: "Far East United", location: "Surabaya"),
  Community(id: 2, name: "Le Tropico Sports Club", location: "Bandung"),
];
