#!/bin/bash

#---------- A ----------
function funcA {
	        c=$(awk '{gsub("[a-zA-Z]",""); print $1}' $1)
		        echo "$c" > $1
		}

	#---------- B ----------
	function funcB {
		        c=$(sed 's/[0-9]*//g' < $1)
			        echo "$c" > $1
			}

		#---------- C ---------- 
		function funcC {
			        c=$(awk '{gsub("[^a-zA-Z0-9]","~"); print $1}' $1)
				        echo "$c" > $1
				}

			#teste $1

			function menu {

				echo -e "---------- MENU ----------\nr: Digite o nome de um arquivo que será processado\na: Remova todas as letras do arquivo\nb: Remova todos os dígitos do arquivo\nc: Substitua todos os caracteres que não são letras nem dígitos do arquivo por (~)\nq: Sair"
						read -p "Digite uma das opções: " op
						        if [ $op == "r" ]
								        then
										                read -p "Digite o nome do arquivo: " arq
												        fi

													        if [ $op == "a" ]
															        then
																	                if [ -z $arq ]
																						then
																										echo "nenhum arquivo foi digitalizado"
																													menu
																															else
																																			funcA $arq
																																						cat $arq
																																						 	       	fi
																																									fi

																																									        if [ $op == "b" ]
																																											        then
																																													                if [ -z $arq ]
																																																                then
																																																			                        echo "nenhum arquivo foi digitalizado"
																																																						                        menu
																																																									                else
																																																												                        funcB $arq
																																																															                        cat $arq
																																																																		                fi

																																																																				        fi

																																																																					        if [ $op == "c" ]
																																																																							        then
																																																																									                if [ -z $arq ]
																																																																												                then
																																																																															                        echo "nenhum arquivo foi digitalizado"
																																																																																		                        menu
																																																																																					                else
																																																																																								                        funcC $arq
																																																																																											                        cat $arq
																																																																																														                fi

																																																																																																        fi

																																																																																																	        if [ $op == "q" ]
																																																																																																			        then
																																																																																																					                exit
																																																																																																							        fi

																																																																																																							}


																																																																																																						while true
																																																																																																						do


																																																																																																							menu



																																																																																																						 
																																																																																																				
																																																																																																							     
																																																																																																							        
																																																																																																								  
																																																																																																								   
																																																																																																								  
																																																																																																								    
																																																																																																								        
																																																																																																									
																																																																																																									 
																																																																																																									  
																																																																																																									  
																																																																																																									      
																																																																																																									         
																																	
							 																																																																						    done
