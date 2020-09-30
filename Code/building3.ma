[top]
components : evacuation

[evacuation]
type : cell
dim : (20,15,4)
delay : transport
defaultDelayTime : 20
border : nowrapped 
neighbors : ship(-2,0,0)
neighbors : ship(-1,-1,0) ship(-1,0,0) ship(-1,1,0)
neighbors : ship(0,-1,0)  ship(0,0,0) ship(0,1,0) ship(0,2,0)
neighbors : ship(1,-1,0)  ship(1,0,0) ship(1,1,0)
neighbors : ship(0,0,-1)  ship(0,0,1)


initialvalue : 0
initialCellsValue : building3.val




localtransition : evacuation-rule
[evacuation-rule]
rule : {3 + randInt(1)} 0 { (0,0,0) = 0 and (1,0,0) > 1 and (1,0,0) < 10}
rule : {5 + randInt(1)} 0 { (0,0,0) = 0 and (0,1,0) > 1 and (0,1,0) < 10}
rule : {7 + randInt(1)} 0 { (0,0,0) = 0 and (-1,0,0) > 1 and (-1,0,0) < 10} 
rule : {9 + randInt(1)} 0 { (0,0,0) = 0 and (0,-1,0) > 1 and (0,-1,0) < 10}

rule : {3 + randInt(1)} 0 { (0,0,0) = 0 and (1,0,0) > 10 and (1,0,0) < 13}
rule : {5 + randInt(1)} 0 { (0,0,0) = 0 and (0,1,0) > 10 and (0,1,0) < 13}
rule : {7 + randInt(1)} 0 { (0,0,0) = 0 and (-1,0,0) > 10 and (-1,0,0) < 13} 
rule : {9 + randInt(1)} 0 { (0,0,0) = 0 and (0,-1,0) > 10 and (0,-1,0) < 13}

rule : 4  100 { (0,0,0) = 3 and ( (0,1,0) = 10 or (-1,0,0) = 4 or (0,-1,0) = 6 or (-1,0,0) = 14 or (1,0,0) = 14 or (0,1,0) = 14 or (0,-1,0) = 14 )}
rule : 6  100 { (0,0,0) = 5 and ( (1,0,0) = 8 or (-1,0,0) = 4 or (0,-1,0) = 6 or (-1,0,0) = 14 or (1,0,0) = 14  or (0,1,0) = 14 or (0,-1,0) = 14 )}
rule : 8  100 { (0,0,0) = 7 and ( (1,0,0) = 8 or (0,1,0) = 10 or (0,-1,0) = 6 or (-1,0,0) = 14 or (1,0,0) = 14  or (0,1,0) = 14 or (0,-1,0) = 14 )}
rule : 10 100 { (0,0,0) = 9 and ( (1,0,0) = 8 or (0,1,0) = 10 or (-1,0,0) = 4 or (-1,0,0) = 14 or (1,0,0) = 14  or (0,1,0) = 14 or (0,-1,0) = 14 )}

rule : 3 100 { (0,0,0) = 4 and ((1,0,0) = 2 or (1,0,0) = 11) }
rule : 9 100 { (0,0,0) = 10 and ((0,-1,0) = 2 or (0,-1,0) = 11) }
rule : 7 100 { (0,0,0) = 8 and ((-1,0,0) = 2 or (-1,0,0) = 11) }
rule : 5 100 { (0,0,0) = 6 and ((0,1,0) = 2 or (0,1,0) = 11) }

rule : 3  100 { (0,0,0) = 4 and odd((1,0,0)) }
rule : 9  100 { (0,0,0) = 10 and odd((0,-1,0)) and (-1,-1,0) != 4 }
rule : 7  100 { (0,0,0) = 8 and odd((-1,0,0)) and (-2,0,0) != 4 and (-1,1,0) != 10 }		
rule : 5  100 { (0,0,0) = 6 and odd((0,1,0)) and (-1,1,0) != 4 and (0,2,0) != 10 and (1,1,0) != 8 }

rule : 12 100 { (0,0,0) = 11 and ((-1,0,0) = 4 or (0,-1,0) = 6 or (1,0,0) = 8 or (0,1,0) = 10 ) } 
rule : 11 100   { (0,0,0) = 12 and (0,0,-1) = 13 } 

rule : 13 100 { (0,0,0) = 14 and ( (1,0,0) = 3 or (1,0,0) = 5 or (1,0,0) = 7 or (1,0,0) = 9 or (-1,0,0) = 3 or (-1,0,0) = 5 or (-1,0,0) = 7 or (-1,0,0) = 9 or (0,1,0) = 3 or (0,1,0) = 5 or (0,1,0) = 7 or (0,1,0) = 9 or (0,-1,0) = 3 or (0,-1,0) = 5 or (0,-1,0) = 7 or (0,-1,0) = 9) }
rule : 14 100 { (0,0,0) = 13 and (0,0,1) = 12 }

rule : {(0,0,0)} 100 { t } 

