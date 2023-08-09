class faq_model {
  List<Faq>? faq;

  faq_model({this.faq});

  faq_model.fromJson(Map<String, dynamic> json) {
    if (json['faq'] != null) {
      faq = <Faq>[];
      json['faq'].forEach((v) {
        faq!.add(Faq.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.faq != null) {
      data['faq'] = this.faq!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Faq {
  String? question;
  String? answer;

  Faq({this.question, this.answer});

  Faq.fromJson(Map<String, dynamic> json) {
    question = json['question'];
    answer = json['answer'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['question'] = this.question;
    data['answer'] = this.answer;
    return data;
  }
}
