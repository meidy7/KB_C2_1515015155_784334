predicates
  nondeterm can_fight(symbol,symbol) 
  nondeterm player(symbol) 
  nondeterm monster(symbol) 
  nondeterm lebih_kuat(symbol,symbol) 
  nondeterm monster_terdekat(symbol) 
  nondeterm ada_item(symbol,symbol)
  nondeterm perlu_item(symbol, symbol)

  
clauses
  can_fight(X,Y):- %X=player dan Y=monster
	player(X), 
	monster(Y),
	lebih_kuat(X,Y), 
   	monster_terdekat(Y),
   	ada_item(X,C),
   	perlu_item(Y,C). 
   	% jadi player bisa melawan monster jika player ada, monster ada, player lebih kuat dari monster
   	% player membawa item, untuk melawan monster perlu item.

%fakta player yg ada
  player(darkuser).
  player(kurashi).
  player(smith).
  player(feryquitos).
  
%fakta player yang membawa item 
  ada_item(darkuser, fur_meet).
  ada_item(feryquitos, aqua_sword).
  
% fakta monster yang ada
  monster(kronos).
  monster(tiger).
  monster(bandit_zombie).
  monster(lagus).

%fakta player yang kuat
  lebih_kuat(feryquitos, kronos).
  lebih_kuat(smith, lagus).
  lebih_kuat(kurashi, lagus).
  lebih_kuat(darkuser, tiger).
  
%fakta item yang diperlukan untuk melawan monster  
  perlu_item(lagus,neros).
  perlu_item(bandit_zombie,darkgold).
  perlu_item(kronos,aqua_sword).
  perlu_item(tiger, fur_meet).
  
%fakta monster yang terdekat dengan player   
  monster_terdekat(lagus).
  monster_terdekat(tiger).
  monster_terdekat(kronos).
  
goal
  can_fight(Player,Monster).
