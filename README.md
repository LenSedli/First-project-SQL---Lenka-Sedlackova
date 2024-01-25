Průvodní listina

1.  Jedná se o projekt analytického oddělení nezávislé společnosti, která se zabývá životními
	  úrovněmi občanů ohledně dostuponosti základních potravin široké veřejnosti. Výsledky
	  budou předány tiskovému oddělení, které je odprezentuje na následující konferenci zaměřené
	  na tuto oblast. DATA vychází z dostupných informacích o mzdách a odvětvích, z informací o 
	  cenách vybraných potravin a jejich katerogií a nakonec z informací o HDP pro Českou republiku.
	
2.  První tabulku o datech mezd, cen potravin a HDP pro Českou republiku jsem tvořila podle
	  výzkumných otázek a průběžně ji doplňovala o DATA, která byla potřeba pro zodpovězení.
	  Jak se tabulka zvětšovala, musela jsem některá DATA agregovat, aby byl výstup rychlejší
	  a hlavně možný. Proto jsem při spojování tabulkem používala vnořené SELECTY, kde bylo
	  možné provádět více úprav tabulek, tak jak bylo třeba. Poslední tabulka economies neměla
	  pro spojení primární klíč, proto jsem použila za ON 1=1 namísto klasického spojování
	  primárního klíče s cizím.
	
3.  Výzkumné otázky:
	  a) Rostou v průběhu let mzdy ve všech odvětvích, nebo v některých klesají?
		   V průběhu uplynulých let 2016 až 2021 se mzdy ve všech odvětvích zvyšovaly až do 
		   roku 2020. V roce 2021 se mzdy výrazně snížily.


  	b) Kolik je možné si koupit litrů mléka a kilogramů chleba za první a poslední
		   srovnatelné období dostupné datech cen a mezd?
		   Jako srovnatelné období jsem určila roky 2007 a 2018. To jsou roky, kde jsou plné hodnoty.
		   V roce 2007 bylo možné si koupit 177.599 kg chleba a 210.901 l mléka a v roce 2018 206.167 kg chleba
		   a 247.367 l mléka. Mzdy rostly, ale ceny potravin se zmenšily.
		
	
	  c) Která kategorie potravin zdražuje nejpomaleji (je u nejnižší nejnižší meziroční nárůst)?
		   Nejpomaleji zdražuje cukr krystalový, který zároveň o proti ostatním potravinám zlevňuje.
	
		
	  d) Existuje rok, ve kterém byl meziroční nárůst potravin výrazně vyšší než růst mezd 
	     (větší než 10 %)?
	     Žádný rok nemá meziroční nárůst cen vyšší než 10%. Největší rozdíl mezi nárůstem cen a mezd byl 8 % v roce 2013.
	
 	
	  e) Má HDP na změny ve mzdách a ceně potravin? Neboli, pokud HDP vzroste výrazně
		   v jednom roce, projeví se to na cenu potravin či mzdách ve stejném nebo násdujícím
		   roce výraznějším růstem?
		   Viditelný nárůst mezd a cen v souvislosti s výraznějším růstem HDP je viditelný v roce 2017.
		   Toto však není pravidlem, jak je vidět v roce 2015, kdy HDP vzrostlo o stejnou hodnotu jako v 2017, ale vliv 
		   na růst mezd či cen to nemělo.
		
