import 'package:flutter/material.dart';

import 'package:proof_of_concept/ui/theme.dart';
import 'package:proof_of_concept/model/job.dart';

class JobProvider {
  var _currentJob = 0;
  var _availableJobs = [
    Job('Medewerker bediening', 'Medewerker in de bediening.', 'La Place Utrecht - Hoog Catherijne', 'assets/img/cards/bediening.png', primaryColor),
    Job('Vakkenvuller', 'Medewerker van de ploeg vakkenvullers.', 'AH Biltstraat', 'assets/img/cards/ah.png', Colors.blue),
    Job('Assistent boswachter', 'Lekker in de natuur.', 'Noorderbos Utrecht', 'assets/img/cards/bos.png', Colors.green),
    Job('Administratief medewerker', 'Op kantoor.', 'Kantoor, Utrecht', 'assets/img/cards/administratief.png', Colors.pink)
  ];

  Job getNextJob() {
    if (_currentJob < _availableJobs.length - 1)
      _currentJob++;
    else
      _currentJob = 0;

    return _availableJobs[_currentJob];
  }

  Job getCurrentJob() {
    return _availableJobs[_currentJob];
  }
}
