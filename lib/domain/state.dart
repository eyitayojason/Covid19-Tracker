class State {
  final String name;
  final String sId;
  final int confirmedCases;
  final int casesOnAdmission;
  final int discharged;
  final int death;

  State({
    this.name,
    this.sId,
    this.confirmedCases,
    this.casesOnAdmission,
    this.discharged,
    this.death,
  });

  factory State.fromJson(Map<String, dynamic> json) {
    return State(
      name: json['state'],
      sId: json['_id'],
      confirmedCases: json['confirmedCases'],
      casesOnAdmission: json['casesOnAdmission'],
      discharged: json['discharged'],
      death: json['death'],
    );
  }
}
