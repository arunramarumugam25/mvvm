class Ipl
{
  final String name;
  final String team;
  Ipl(
    {
      this.name,this.team
    }
  );

  factory Ipl.fromJson(Map<String,dynamic> json)
  {
    return Ipl
    (
      name: json["headline"],
      team: json["newsimage"]
    );
  }
}