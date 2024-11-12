class Department {
  final int departmentId;
  final String displayName;

  Department({
    required this.departmentId,
    required this.displayName,
  });

  factory Department.fromJson(Map<String, dynamic> json) {
    return Department(
      departmentId: json['departmentId'],
      displayName: json['displayName'],
    );
  }

  Map<String, dynamic> toJson() => {
        "departmentId": departmentId,
        "displayName": displayName,
      };
}
