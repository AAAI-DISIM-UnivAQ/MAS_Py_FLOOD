 told(var_From,send_message(var_M)):-true. told(var_Ag,execute_proc(var__)):-true. told(var_Ag,query_ref(var__,var__)):-true. told(var_Ag,agree(var__)):-true. told(var_Ag,confirm(var__),200):-true. told(var_Ag,disconfirm(var__)):-true. told(var_Ag,request(var__,var__)):-true. told(var_Ag,propose(var__,var__)):-true. told(var_Ag,accept_proposal(var__,var__),20):-true. told(var_Ag,reject_proposal(var__,var__),20):-true. told(var__,failure(var__,var__),200):-true. told(var__,cancel(var__)):-true. told(var_Ag,inform(var__,var__),70):-true. told(var_Ag,inform(var__),70):-true. told(var_Ag,reply(var__)):-true. told(var__,refuse(var__,var_Xp)):-functor(var_Xp,var_Fp,var__),var_Fp=agree. tell(var_To,var_From,send_message(var_M)):-true. tell(var_To,var__,confirm(var__)):-true. tell(var_To,var__,disconfirm(var__)):-true. tell(var_To,var__,propose(var__,var__)):-true. tell(var_To,var__,request(var__,var__)):-true. tell(var_To,var__,execute_proc(var__)):-true. tell(var_To,var__,agree(var__)):-true. tell(var_To,var__,reject_proposal(var__,var__)):-true. tell(var_To,var__,accept_proposal(var__,var__)):-true. tell(var_To,var__,failure(var__,var__)):-true. tell(var_To,var__,query_ref(var__,var__)):-true. tell(var_To,var__,eve(var__)):-true. tell(var__,var__,refuse(var_X,var__)):-functor(var_X,var_F,var__),(var_F=send_message;var_F=query_ref). tell(var_To,var__,inform(var__,var_M)):-true;var_M=motivation(refused_message). tell(var_To,var__,inform(var__)):-true,var_To\=user. tell(var_To,var__,propose_desire(var__,var__)):-true. meta(var_P,var_V,var_AgM):- functor(var_P,var_F,var_N),var_N=0,clause(agent(var_Ag),var__), clause(ontology(var_Pre,[var_Rep,var_Host],var_Ag),var__), if( (eq_property(var_F,var_V,var_Pre,[var_Rep,var_Host]); same_as(var_F,var_V,var_Pre,[var_Rep,var_Host]); eq_class(var_F,var_V,var_Pre,[var_Rep,var_Host]) ),true, 			if(clause(ontology(var_PreM, [var_RepM,var_HostM], var_AgM),var__), 	(if( 	 (eq_property(var_F,var_V,var_PreM,[var_RepM,var_HostM]); 	 	 same_as(var_F,var_V,var_PreM,[var_RepM,var_HostM]); 	 eq_class(var_F,var_V,var_PreM,[var_RepM,var_HostM]) 	 ),true,false) 				),false 			) ). meta(var_P,var_V,var_AgM):- functor(var_P,var_F,var_N),(var_N=1;var_N=2),clause(agent(var_Ag),var__), clause(ontology(var_Pre,[var_Rep,var_Host],var_Ag),var__), if( (eq_property(var_F,var_H,var_Pre,[var_Rep,var_Host]); same_as(var_F,var_H,var_Pre,[var_Rep,var_Host]); eq_class(var_F,var_H,var_Pre,[var_Rep,var_Host]) ),true, 			if(clause(ontology(var_PreM, [var_RepM,var_HostM], var_AgM),var__), 	(if( 	 (eq_property(var_F,var_H,var_PreM,[var_RepM,var_HostM]); 	 	 same_as(var_F,var_H,var_PreM,[var_RepM,var_HostM]); 	 eq_class(var_F,var_H,var_PreM,[var_RepM,var_HostM]) 	 ),true,false) 				),false 			) ), 		 var_P=..var_L,substitute(var_F,var_L,var_H,var_Lf),var_V=..var_Lf. meta(var_P,var_V,var__):-functor(var_P,var_F,var_N),var_N=2,symmetric(var_F),var_P=..var_L, delete(var_L,var_F,var_R),reverse(var_R,var_R1), append([var_F],var_R1,var_R2),var_V=..var_R2. meta(var_P,var_V,var_AgM):- 			 clause(agent(var_Ag),var__),functor(var_P,var_F,var_N),var_N=2,(symmetric(var_F,var_AgM);symmetric(var_F)), var_P=..var_L, delete(var_L,var_F,var_R),reverse(var_R,var_R1), 		 	 clause(ontology(var_Pre,[var_Rep,var_Host],var_Ag),var__), if( (eq_property(var_F,var_Y,var_Pre,[var_Rep,var_Host]); same_as(var_F,var_Y,var_Pre,[var_Rep,var_Host]); eq_class(var_F,var_Y,var_Pre,[var_Rep,var_Host]) ),true, 			 if(clause(ontology(var_PreM, [var_RepM,var_HostM], var_AgM),var__), 	 (if( 	 (eq_property(var_F,var_Y,var_PreM,[var_RepM,var_HostM]); 	 	 same_as(var_F,var_Y,var_PreM,[var_RepM,var_HostM]); 	 eq_class(var_F,var_Y,var_PreM,[var_RepM,var_HostM]) 	 ),true,false) 				 ),false 			 ) ), 			 append([var_Y],var_R1,var_R2),var_V=..var_R2. meta(var_P,var_V,var_AgM):- 			clause(agent(var_Ag),var__),clause(ontology(var_Pre,[var_Rep,var_Host],var_Ag),var__), 			functor(var_P,var_F,var_N),var_N>2, 			if( (eq_property(var_F,var_H,var_Pre,[var_Rep,var_Host]); same_as(var_F,var_H,var_Pre,[var_Rep,var_Host]); eq_class(var_F,var_H,var_Pre,[var_Rep,var_Host]) ),true, 			 if(clause(ontology(var_PreM, [var_RepM,var_HostM], var_AgM),var__), 	 (if( 	 (eq_property(var_F,var_H,var_PreM,[var_RepM,var_HostM]); 	 	 same_as(var_F,var_H,var_PreM,[var_RepM,var_HostM]); 	 eq_class(var_F,var_H,var_PreM,[var_RepM,var_HostM]) 	 ),true,false) 				 ),false 			 ) ), 			var_P=..var_L,substitute(var_F,var_L,var_H,var_Lf),var_V=..var_Lf. meta(var_P,var_V,var_AgM):-clause(agent(var_Ag),var__), clause(ontology(var_Pre,[var_Rep,var_Host],var_Ag),var__), functor(var_P,var_F,var_N),var_N=2,var_P=..var_L, 			if( (eq_property(var_F,var_H,var_Pre,[var_Rep,var_Host]); same_as(var_F,var_H,var_Pre,[var_Rep,var_Host]); eq_class(var_F,var_H,var_Pre,[var_Rep,var_Host]) ),true, 			 if(clause(ontology(var_PreM, [var_RepM,var_HostM], var_AgM),var__), 	 (if( 	 (eq_property(var_F,var_H,var_PreM,[var_RepM,var_HostM]); 	 	 same_as(var_F,var_H,var_PreM,[var_RepM,var_HostM]); 	 eq_class(var_F,var_H,var_PreM,[var_RepM,var_HostM]) 	 ),true,false) 				 ),false 			 ) ), 			substitute(var_F,var_L,var_H,var_Lf),var_V=..var_Lf. told(var_From,send_message(var_M)):-true. told(var_Ag,execute_proc(var__)):-true. told(var_Ag,query_ref(var__,var__)):-true. told(var_Ag,agree(var__)):-true. told(var_Ag,confirm(var__),200):-true. told(var_Ag,disconfirm(var__)):-true. told(var_Ag,request(var__,var__)):-true. told(var_Ag,propose(var__,var__)):-true. told(var_Ag,accept_proposal(var__,var__),20):-true. told(var_Ag,reject_proposal(var__,var__),20):-true. told(var__,failure(var__,var__),200):-true. told(var__,cancel(var__)):-true. told(var_Ag,inform(var__,var__),70):-true. told(var_Ag,inform(var__),70):-true. told(var_Ag,reply(var__)):-true. told(var__,refuse(var__,var_Xp)):-functor(var_Xp,var_Fp,var__),var_Fp=agree. tell(var_To,var_From,send_message(var_M)):-true. tell(var_To,var__,confirm(var__)):-true. tell(var_To,var__,disconfirm(var__)):-true. tell(var_To,var__,propose(var__,var__)):-true. tell(var_To,var__,request(var__,var__)):-true. tell(var_To,var__,execute_proc(var__)):-true. tell(var_To,var__,agree(var__)):-true. tell(var_To,var__,reject_proposal(var__,var__)):-true. tell(var_To,var__,accept_proposal(var__,var__)):-true. tell(var_To,var__,failure(var__,var__)):-true. tell(var_To,var__,query_ref(var__,var__)):-true. tell(var_To,var__,eve(var__)):-true. tell(var__,var__,refuse(var_X,var__)):-functor(var_X,var_F,var__),(var_F=send_message;var_F=query_ref). tell(var_To,var__,inform(var__,var_M)):-true;var_M=motivation(refused_message). tell(var_To,var__,inform(var__)):-true,var_To\=user. tell(var_To,var__,propose_desire(var__,var__)):-true. meta(var_P,var_V,var_AgM):- functor(var_P,var_F,var_N),var_N=0,clause(agent(var_Ag),var__), clause(ontology(var_Pre,[var_Rep,var_Host],var_Ag),var__), if( (eq_property(var_F,var_V,var_Pre,[var_Rep,var_Host]); same_as(var_F,var_V,var_Pre,[var_Rep,var_Host]); eq_class(var_F,var_V,var_Pre,[var_Rep,var_Host]) ),true, 			if(clause(ontology(var_PreM, [var_RepM,var_HostM], var_AgM),var__), 	(if( 	 (eq_property(var_F,var_V,var_PreM,[var_RepM,var_HostM]); 	 	 same_as(var_F,var_V,var_PreM,[var_RepM,var_HostM]); 	 eq_class(var_F,var_V,var_PreM,[var_RepM,var_HostM]) 	 ),true,false) 				),false 			) ). meta(var_P,var_V,var_AgM):- functor(var_P,var_F,var_N),(var_N=1;var_N=2),clause(agent(var_Ag),var__), clause(ontology(var_Pre,[var_Rep,var_Host],var_Ag),var__), if( (eq_property(var_F,var_H,var_Pre,[var_Rep,var_Host]); same_as(var_F,var_H,var_Pre,[var_Rep,var_Host]); eq_class(var_F,var_H,var_Pre,[var_Rep,var_Host]) ),true, 			if(clause(ontology(var_PreM, [var_RepM,var_HostM], var_AgM),var__), 	(if( 	 (eq_property(var_F,var_H,var_PreM,[var_RepM,var_HostM]); 	 	 same_as(var_F,var_H,var_PreM,[var_RepM,var_HostM]); 	 eq_class(var_F,var_H,var_PreM,[var_RepM,var_HostM]) 	 ),true,false) 				),false 			) ), 		 var_P=..var_L,substitute(var_F,var_L,var_H,var_Lf),var_V=..var_Lf. meta(var_P,var_V,var__):-functor(var_P,var_F,var_N),var_N=2,symmetric(var_F),var_P=..var_L, delete(var_L,var_F,var_R),reverse(var_R,var_R1), append([var_F],var_R1,var_R2),var_V=..var_R2. meta(var_P,var_V,var_AgM):- 			 clause(agent(var_Ag),var__),functor(var_P,var_F,var_N),var_N=2,(symmetric(var_F,var_AgM);symmetric(var_F)), var_P=..var_L, delete(var_L,var_F,var_R),reverse(var_R,var_R1), 		 	 clause(ontology(var_Pre,[var_Rep,var_Host],var_Ag),var__), if( (eq_property(var_F,var_Y,var_Pre,[var_Rep,var_Host]); same_as(var_F,var_Y,var_Pre,[var_Rep,var_Host]); eq_class(var_F,var_Y,var_Pre,[var_Rep,var_Host]) ),true, 			 if(clause(ontology(var_PreM, [var_RepM,var_HostM], var_AgM),var__), 	 (if( 	 (eq_property(var_F,var_Y,var_PreM,[var_RepM,var_HostM]); 	 	 same_as(var_F,var_Y,var_PreM,[var_RepM,var_HostM]); 	 eq_class(var_F,var_Y,var_PreM,[var_RepM,var_HostM]) 	 ),true,false) 				 ),false 			 ) ), 			 append([var_Y],var_R1,var_R2),var_V=..var_R2. meta(var_P,var_V,var_AgM):- 			clause(agent(var_Ag),var__),clause(ontology(var_Pre,[var_Rep,var_Host],var_Ag),var__), 			functor(var_P,var_F,var_N),var_N>2, 			if( (eq_property(var_F,var_H,var_Pre,[var_Rep,var_Host]); same_as(var_F,var_H,var_Pre,[var_Rep,var_Host]); eq_class(var_F,var_H,var_Pre,[var_Rep,var_Host]) ),true, 			 if(clause(ontology(var_PreM, [var_RepM,var_HostM], var_AgM),var__), 	 (if( 	 (eq_property(var_F,var_H,var_PreM,[var_RepM,var_HostM]); 	 	 same_as(var_F,var_H,var_PreM,[var_RepM,var_HostM]); 	 eq_class(var_F,var_H,var_PreM,[var_RepM,var_HostM]) 	 ),true,false) 				 ),false 			 ) ), 			var_P=..var_L,substitute(var_F,var_L,var_H,var_Lf),var_V=..var_Lf. meta(var_P,var_V,var_AgM):-clause(agent(var_Ag),var__), clause(ontology(var_Pre,[var_Rep,var_Host],var_Ag),var__), functor(var_P,var_F,var_N),var_N=2,var_P=..var_L, 			if( (eq_property(var_F,var_H,var_Pre,[var_Rep,var_Host]); same_as(var_F,var_H,var_Pre,[var_Rep,var_Host]); eq_class(var_F,var_H,var_Pre,[var_Rep,var_Host]) ),true, 			 if(clause(ontology(var_PreM, [var_RepM,var_HostM], var_AgM),var__), 	 (if( 	 (eq_property(var_F,var_H,var_PreM,[var_RepM,var_HostM]); 	 	 same_as(var_F,var_H,var_PreM,[var_RepM,var_HostM]); 	 eq_class(var_F,var_H,var_PreM,[var_RepM,var_HostM]) 	 ),true,false) 				 ),false 			 ) ), 			substitute(var_F,var_L,var_H,var_Lf),var_V=..var_Lf.