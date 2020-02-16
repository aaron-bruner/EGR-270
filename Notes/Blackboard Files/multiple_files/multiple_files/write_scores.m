%Script write_scores

bucs_score=input('Enter the Buccaneer''s score : ');
vikings_score=input('Enter the Viking''s score : ');


bucs=fopen('buccaneers.txt','w');
vikings=fopen('vikings.txt','w');

fprintf(bucs,'%i\n',bucs_score);
fprintf(vikings,'%i\n',vikings_score);

fclose(bucs);
fclose(vikings);
