import 'package:equatable/equatable.dart';

class Complaint extends Equatable {
  final String description;
  final String imageUrl;

  const Complaint({
    required this.description,
    required this.imageUrl
  });

  @override
  List<Object?> get props => [
    description,
    imageUrl,
  ];
  
  static List<Complaint> complaints = [
    Complaint(
        description: "Essa porcaria não está funcionando",
        imageUrl: "https://images.unsplash.com/photo-1568751908541-21cb7bd8e6ea?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80"
    ),
    Complaint(
        description: "Alguém conserta isso pelo amor",
        imageUrl: "https://images.unsplash.com/photo-1585496661952-434a2b7b5375?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80"
    ),
    Complaint(
        description: "Ponte quebrada desde quando nasci",
        imageUrl: "https://images.unsplash.com/23/broken-bridge.JPG?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=896&q=80"
    ),
  ];

}