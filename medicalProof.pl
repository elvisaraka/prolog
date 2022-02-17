check:-


hypothesis(Disease),


nl,
write('The patient has: '),
write(Disease),
nl,
undo.


symptom(fever):-
verify(" Fever (y/n) ? ").
symptom(rash):-
verify(" Rash (y/n) ? ").
symptom(headache):-
verify(" Headache (y/n) ? ").
symptom(dry_cough):-
verify(" Dry cough (y/n) ? ").

symptom(difficult_breathing):-
verify("Difficult breathing (y/n) ? ").
symptom(chest_pain):-
verify("Chect pain (y/n) ? ").


symptom(sneezing):-
verify("Sneezing (y/n) ? ").
symptom(runny_nose):-
verify("Runny nose (y/n) ? ").
symptom(sore_throat):-
verify("Sore throat (y/n) ? ").

symptom(appetite_loss):-
verify("Appetite loss (y/n) ? ").
symptom(swollen_lymph_nodes):-
verify("Swollen lymph nodes (y/n) ? ").
symptom(night_sweat):-
verify("Night sweat (y/n) ? ").

symptom(abdomen_pain):-
verify("Abdomen pain (y/n) ? ").
symptom(nausea):-
verify("Nausea (y/n) ? ").
symptom(bloating):-
verify("Bloating (y/n) ? ").
symptom(muscle_weaknesses):-
verify("Muscle weaknesses (y/n) ? ").


symptom(abnormal_vaginal_or_penis_discharge):-
verify("Abnormal  discharge (y/n) ? ").
symptom(irregular_menstrual):-
verify("Irregular menstrual (y/n) ? ").
symptom(pelvic_or_testicle_pain):-
verify("Pelvic or testicle pain (y/n) ? ").
symptom(fatigue):-
verify("Fatigue (y/n) ? ").


symptom(excessive_thirst):-
verify("Excessive thirst (y/n) ? ").



symptom(abnormal_bumps):-
verify("Abnormal bumps (y/n) ? ").
symptom(weight_loss):-
verify("Weight loss (y/n) ? ").
symptom(blurred_vision):-
verify("Blurred vision  (y/n) ? ").

symptom(consciousness_loss):-
verify("Consciousness (y/n) ? ").
symptom(palpitations):-
verify("Palpitations (y/n) ? ").


symptom(dehydration):-
verify("Dehydration (y/n) ? ").
symptom(wheezing):-
verify("Wheezing (y/n) ? ").

symptom(double_vision):-
verify("Double_vision (y/n) ? ").
symptom(difficulty_speaking):-
verify("Difficulty speaking (y/n) ? ").
symptom(balance_disorder):-
verify("Balance disorder (y/n) ? ").

symptom(mental_decline):-
verify("Mental decline (y/n) ? ").
symptom(depression):-
verify("Depression (y/n) ? ").
symptom(disorientation):-
verify("Disorientation (y/n) ? ").
symptom(delusion):-
verify("Delusion (y/n) ? ").
symptom(mental_confusion):-
verify("Mental confusion (y/n) ? ").


symptom(cough_with_blood):-
verify(" cough can be chronic or with blood (y/n) ? ").

symptom(fast_heart_rate):-
verify("Fast heart rate (y/n) ? ").
symptom(diarrhoea):-
verify("diarrhoea (y/n) ? ").
symptom(vomiting):-
verify(" vomiting (y/n) ? ").
symptom(shivering):-
verify(" shivering (y/n) ? ").


symptom(small_bumps):-
verify(" small_bumps (y/n) ? ").

symptom(tightness_in_the_chest):-
verify("Tightness in the chest (y/n) ? ").

symptom(squeaking_sound_when_breathing):-
verify("Squeaking sound when breathing (y/n) ? ").

symptom(nasal_polyps):-
verify("Nasal polyps (y/n) ? ").

symptom(poor_weight_gain):-
verify("Poor weight gain (y/n) ? ").





















ask(Question):-
write('Does the patient have the following symptom :'),
write(Question),

read(Response),
nl,

( (Response == yes ; Response == y)
->
assert(yes(Question));
assert(no(Question)),fail).

:-dynamic yes/1,no/1.

verify(S) :-
(yes(S)
->
true ;
(no(S)
->
fail ;
ask(S))).

undo:- retract(yes(_)),fail.
undo:-retract(no(_)),fail.
undo.

hypothesis(flu):-
symptom(fever),
symptom(rash),
symptom(headache),
symptom(dry_cough),
nl,
write('Treatment'),
nl,
write('Avoid Food that are milk-based , Avoid Caffeine ,Alcohol').


hypothesis(cold):-
symptom(sneezing),
symptom(runny_nose),
symptom(sore_throat),
nl,
write('Treatment'),
nl,
write('Decongestants , Gargling with warm salt water .').

hypothesis(corona_virus):-
symptom(difficult_breathing),
symptom(cough),
symptom(fever),
symptom(chest_pain),
nl,
write('Treatment'),
nl,
write('Vaccination as a preventive Measure').

hypothesis(hiv_aids):-
symptom(appetite_loss),
symptom(swollen_lymph_nodes),
symptom(night_sweat),
symptom(sore_throat),
nl,
write('Treatment'),
nl,
write('Antiretroural regimens').


hypothesis(typhoid):-
symptom(abdomen_pain),
symptom(nausea),
symptom(bloating),
symptom(muscle_weaknesses),
symptom(fever),
nl,
write('Treatment'),
nl,
write('Antibiotics and fluids .').

hypothesis(measles):-
symptom(runny_nose),
symptom(sneezing),
symptom(fatigue),
symptom(sore_throat),
symptom(rash),
nl,
write('Treatment'),
nl,
write('Vitamin A ,Analgestic .').


hypothesis(gonorrhea):-
symptom(abnormal_vaginal_or_penis_discharge),
symptom(irregular_menstrual),
symptom(pelvic_or_testicle_pain),
symptom(sore_throat),
nl,
write('Treatment'),
nl,
write('Antibiotics  .').

hypothesis(diabetes):-
symptom(excessive_thirst),
symptom(fatigue),
symptom(weight_loss),
symptom(blurred_vision),
nl,
write('Treatment'),
nl,
write('Controlling blood sugar through diet .').

hypothesis(cancer):-
symptom(fever),
symptom(night_sweat),
symptom(weight_loss),
symptom(abnormal_bumps),
nl,
write('Treatment'),
nl,
write('chemotherapy,radiation therapy ,surgery .').


hypothesis(cardiac_arrest):-
symptom(consciousness_loss),
symptom(chest_pain),
symptom(palpitations),
nl,
write('Treatment'),
nl,
write('lifestyle changes , surgery , pacemakers .').

hypothesis(pneumonia):-
symptom(fever),
symptom(difficult_breathing),
symptom(wheezing),
symptom(dehydration),
nl,
write('Treatment'),
nl,
write('Antibiotics and penicillin .').


hypothesis(stroke):-
symptom(blurred_vision),
symptom(difficulty_speaking),
symptom(balance_disorder),
symptom(double_vision),
nl,
write('Treatment'),
nl,
write('Pending for now .').

hypothesis(alzheimer):-
symptom(delusion),
symptom(mental_decline),
symptom(mental_confusion),
symptom(appetite_loss),
symptom(depression),
nl,
write('Treatment'),
nl,
write('physical exercise .').

hypothesis(tuberculosis):-
symptom(appetite_loss),
symptom(fatigue),
symptom(cough_with_blood),
symptom(depression),
nl,
write('Treatment'),
nl,
write('Antibiotics .').

hypothesis(malaria):-
symptom(fast_heart_rate),
symptom(diarrhoea),
symptom(vomiting),
symptom(nausea),
symptom(fever),
symptom(fatigue),
symptom(shivering),
nl,
write('Treatment'),
nl,
write('Antiparasitic .').

hypothesis(symphilis):-
symptom(small_bumps),
symptom(sore_throat),
symptom(swollen_lymph_nodes),
symptom(weight_loss),
symptom(abnormal_vaginal_or_penis_discharge),
symptom(shivering),
nl,
write('Treatment'),
nl,
write('penicillin and Antibiotics  .').

hypothesis(asthma):-
symptom(wheezing),
symptom(cough),
symptom(difficult_breathing),
symptom(tightness_in_the_chest).

hypothesis(chronic_bronchitis):-
symptom(wheezing),
symptom(cough),
symptom(difficult_breathing),
symptom(squeaking_sound_when_breathing).


hypothesis(cystic_fibrosis):-
symptom(nasal_polyps),
symptom(poor_weight_gain),
symptom(difficult_breathing),
symptom(squeaking_sound_when_breathing).















