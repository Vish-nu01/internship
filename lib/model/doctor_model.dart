class DoctorModel {
  final int docId;
  final String docName;
  final String docSpecialization;
  final String hospital;
  final String dept;
  final String degree;
  final String docImg;
  final String docAbout;
  final String consultType;

 const DoctorModel({required this.hospital,required this.dept,required this.degree,required this.consultType,
      required this.docAbout,
      required this.docName,
      required this.docImg,
      required this.docId,
      required this.docSpecialization});
}
