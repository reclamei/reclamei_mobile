import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:reclamei_mobile/components/box_card.dart';
import 'package:reclamei_mobile/components/color_dot.dart';
import 'package:reclamei_mobile/components/content_division.dart';
import 'package:reclamei_mobile/models/complaint_model.dart';
import 'package:reclamei_mobile/themes/theme_colors.dart';

class ComplaintsCarousel extends StatelessWidget {
  const ComplaintsCarousel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                "Minhas reclamações",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          _ComplaintsCarouselContent(),
        ],
      ),
    );
  }
}

class _ComplaintsCarouselContent extends StatelessWidget {
  const _ComplaintsCarouselContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      child: ListView.builder(
        shrinkWrap: true,
        padding: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
        scrollDirection: Axis.horizontal,
        itemCount: Complaint.complaints.isEmpty ? 1 : Complaint.complaints.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Complaint.complaints.isEmpty ?
              AddComplaintCard() :
              ComplaintCard(complaint: Complaint.complaints[index],),
          );
        }
      ),
    );
  }
}

class AddComplaintCard extends StatelessWidget {
  const AddComplaintCard({ Key? key }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width / 2,
          height: 150,
          decoration: BoxDecoration(
            color: Colors.black.withAlpha(40),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  color: ThemeColors.primaryColor.withAlpha(70),
                  borderRadius: BorderRadius.circular(120),
                ),
                child: InkWell(
                  child: Icon(
                    Icons.post_add,
                    size: 40,
                    color: ThemeColors.fontColor,
                  ),
                  onTap: () {}
                ),
              )
            ],
          )
        ),
      ],
    );
  }
}

class ComplaintCard extends StatelessWidget {
  final Complaint complaint;
  
  const ComplaintCard({ Key? key, required this.complaint }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width / 2,
          height: 150,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              complaint.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          top: 155,
          left: 5,
          child: Container(
            width: MediaQuery.of(context).size.width / 2 - 10,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        complaint.description,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  )
                )
              ],
            ),
          )
        )
      ],
    );
  }
}


// class _ComplaintsCarouselContent extends StatelessWidget {
//   const _ComplaintsCarouselContent({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Row(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(right: 4.0),
//                   child: ColorDot(color: ThemeColors.recentActivity['spent']),
//                 ),
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text('Saída'),
//                     Text(
//                       '\$9900.97',
//                       style: Theme.of(context).textTheme.bodyLarge,
//                     )
//                   ],
//                 )
//               ],
//             ),
//             Row(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(right: 4.0),
//                   child: ColorDot(color: ThemeColors.recentActivity['income']),
//                 ),
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text('Entrada'),
//                     Text(
//                       '\$9900.97',
//                       style: Theme.of(context).textTheme.bodyLarge,
//                     )
//                   ],
//                 )
//               ],
//             ),
//           ],
//         ),
//         Padding(
//           padding: const EdgeInsets.only(top: 16.0, bottom: 8.0),
//           child: Text('Limite de gastos \$432.90'),
//         ),
//         Container(
//           clipBehavior: Clip.hardEdge,
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(5),
//           ),
//           child: LinearProgressIndicator(
//             value: 0.3,
//             minHeight: 8,
//           ),
//         ),
//         Padding(
//           padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
//           child: ContentDivision(),
//         ),
//         Text(
//             'Esse mës vocë gastou \$1500.00 com jogos. Tente abaixar esse custo!'),
//         TextButton(
//             onPressed: (){},
//             child: Text('Diga-me como!', style: TextStyle(fontSize: 16),)
//         )
//       ],
//     );
//   }
// }


