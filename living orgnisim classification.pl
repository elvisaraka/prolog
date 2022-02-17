%CCS/03002/019 OGESA ELVIS ARAKA
%CCS/00216/019 SUHEL JUNAID ESMAIL
%CCS/00009/019 KARIUKI ERICK MURIITHI
go :-
write('Organism name? '),
read(Organism),get_single_char(Code),
hypothesis(Organism,Kingdom),
write_list([Organism,', probably is in Kingdom ',Kingdom,'.']),nl.

go :-
write('Sorry, I don''t seem to be able to'),nl,
write('diagnose the Kingdom.'),nl.

characteristic(Organism,locomote) :- 
verify(Organism," does it locomote (y/n) ?").
characteristic(Organism,eukaryotic) :- 
verify(Organism," is it eukaryotic (y/n) ?").
characteristic(Organism,multicellular) :- 
verify(Organism," is it multicellular (y/n) ?").
characteristic(Organism,heterotrophic) :- 
verify(Organism," is it heterotrophic (y/n) ?").
characteristic(Organism,sessile) :- 
verify(Organism," does it sessile (y/n) ?").
characteristic(Organism,no_cell_wall) :- 
verify(Organism," does it no_cell_wall (y/n) ?").
characteristic(Organism,stem) :- 
verify(Organism," does it have a stem (y/n) ?").
characteristic(Organism,leaves) :- 
verify(Organism," does it have leaves (y/n) ?").
characteristic(Organism,roots) :- 
verify(Organism," does it have roots (y/n) ?").
characteristic(Organism,cellulose_cell_wall) :- 
verify(Organism," does it have a cellulose_cell_wall (y/n) ?").
characteristic(Organism,no_cellulose_cell_wall) :- 
verify(Organism," does it have a no_cellulose_cell_wall (y/n) ?").
characteristic(Organism,autotrophic) :- 
verify(Organism," is it autotrophic (y/n) ?").
characteristic(Organism,transport_system) :- 
verify(Organism," does it have a transport_system (y/n) ?").
characteristic(Organism,alternation_of_generation) :- 
verify(Organism," does it have alternation_of_generation (y/n) ?").
characteristic(Organism,chitin_cell_wall) :- 
verify(Organism," does it have chitin_cell_wall (y/n) ?").
characteristic(Organism,glycogen_cytoplasm) :- 
verify(Organism," does it have glycogen_cytoplasm (y/n) ?").
characteristic(Organism,hyphae) :- 
verify(Organism," is the basic unit hyphae (y/n) ?").
characteristic(Organism,mycelium) :- 
verify(Organism," is hyphae made of mycelium (y/n) ?").
characteristic(Organism,sexually) :- 
verify(Organism," does it reproduce sexually (y/n) ?").
characteristic(Organism,asexually) :- 
verify(Organism," does it reproduce asexually (y/n) ?").
characteristic(Organism,heterotrophic) :- 
verify(Organism," is it heterotrophic (y/n) ?").
characteristic(Organism,membrane_bound) :- 
verify(Organism," are the organelles membrane_bound (y/n) ?").
characteristic(Organism,not_membrane_bound) :- 
verify(Organism," are the organelles not_membrane_bound (y/n) ?").
characteristic(Organism,unicellular) :- 
verify(Organism," is it unicellular (y/n) ?").
characteristic(Organism,contractile_vacuole) :- 
verify(Organism," does it have contractile_vacuole (y/n) ?").
characteristic(Organism,microscopic) :- 
verify(Organism," is it microscopic (y/n) ?").
characteristic(Organism,prokaryotic) :- 
verify(Organism," is it prokaryotic (y/n) ?").
characteristic(Organism,aerobically) :- 
verify(Organism," does it respire aerobically (y/n) ?").



ask(Organism,Question) :-
	write(Organism),write(', does it'),write(Question),
	read(N),
	( (N == yes ; N == y)
      ->
       assert(yes(Question)) ;
       assert(no(Question)), fail).
	
:- dynamic yes/1,no/1.		
	
verify(P,S) :-
   (yes(S) -> true ;
    (no(S) -> fail ;
     ask(P,S))).
	 
undo :- retract(yes(_)),fail. 
undo :- retract(no(_)),fail.
undo.



hypothesis(Organism,monera) :-
characteristic(Organism,unicellular),
characteristic(Organism,microscopic),
characteristic(Organism,heterotrophic),
characteristic(Organism,autotrophic),
characteristic(Organism,prokaryotic),
characteristic(Organism,not_membrane_bound),
characteristic(Organism,no_cellulose_cell_wall),
characteristic(Organism,asexually),
characteristic(Organism,locomote),
characteristic(Organism,autotrophic).

hypothesis(Organism,protoctista) :-
characteristic(Organism,eukaryotic),
characteristic(Organism,heterotrophic),
characteristic(Organism,autotrophic),
characteristic(Organism,unicellular),
characteristic(Organism,multicellular),
characteristic(Organism,asexually),
characteristic(Organism,locomote),
characteristic(Organism,contractile_vacuole),
characteristic(Organism,membrane_bound).

hypothesis(Organism,fungi) :-
characteristic(Organism,eukaryotic),
characteristic(Organism,chitin_cell_wall),
characteristic(Organism,glycogen_cytoplasm),
characteristic(Organism,hyphae),
characteristic(Organism,mycelium),
characteristic(Organism,sexually),
characteristic(Organism,asexually).

hypothesis(Organism,plantae) :-
characteristic(Organism,multicellular),
characteristic(Organism,eukaryotic),
characteristic(Organism,sexually),
characteristic(Organism,asexually),
characteristic(Organism,leaves),
characteristic(Organism,stem),
characteristic(Organism,roots),
characteristic(Organism,transport_system),
characteristic(Organism,cellulose_cell_wall),
characteristic(Organism,autotrophic),
characteristic(Organism,alternation_of_generation).

hypothesis(Organism,animalia) :-
characteristic(Organism,locomote),
characteristic(Organism,sessile),
characteristic(Organism,sexually),
characteristic(Organism,asexually),
characteristic(Organism,eukaryotic),
characteristic(Organism,multicellular),
characteristic(Organism,heterotrophic),
characteristic(Organism,no_cell_wall).


write_list([]).
write_list([Term| Terms]) :-
write(Term),
write_list(Terms).

response(Reply) :-
get_single_char(Code),
put_code(Code), nl,
char_code(Reply, Code).
