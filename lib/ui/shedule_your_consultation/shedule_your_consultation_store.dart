import 'package:mobx/mobx.dart';
part 'shedule_your_consultation_store.g.dart';

class SheduleConsultationStore = _SheduleConsultationStore with _$SheduleConsultationStore;
abstract class _SheduleConsultationStore with Store{

  @observable
  String? date;

  @action
  Future<void> setDate(String dataRecebida)async {
    date = dataRecebida;
  }

}