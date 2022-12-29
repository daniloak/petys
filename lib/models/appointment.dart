class Appointment{
  final String id;
  final String clientId;
  final String clientFullName;
  final DateTime dateTime;

  bool isConfirmed;

  Appointment({
    required this.id,
    required this.clientId,
    required this.clientFullName,
    required this.dateTime,
    this.isConfirmed = false,
  });

  void confirm(){
    isConfirmed = true;
  }
}