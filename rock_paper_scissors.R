rock_paper_scissors<-function(my_choice=NULL){
if(is.null(my_choice)){
my_choice<-readline("write here ")} else {my_choice <- my_choice}
pc_choice<-sample(c("sasso","carta","forbici"),1)

if(!my_choice %in% c("sasso","carta","forbici")) {
print("Error message: please select one option among sasso,carta e forbici") 
stop()
}

esito<-NULL
if(my_choice==pc_choice){esito="pareggio"}
if(my_choice=="forbici" & pc_choice=="sasso") {esito="hai perso"}
if(my_choice=="forbici" & pc_choice=="carta") {esito="hai vinto"}
if(my_choice=="sasso" & pc_choice=="carta") {esito="hai perso"}
if(my_choice=="sasso" & pc_choice=="forbici") {esito="hai vinto"}
if(my_choice=="carta" & pc_choice=="forbici") {esito="hai perso"}
if(my_choice=="carta" & pc_choice=="sasso") {esito="hai vinto"}

cat(paste("Il computer ha scelto",pc_choice),'\n',esito)
}


rock_paper_scissors(my_choice="sasso")
rock_paper_scissors()
