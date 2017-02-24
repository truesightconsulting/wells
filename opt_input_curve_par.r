# set beta based on clv value
if (curve_f=="ninah") {
  if(ex.setup$optimization_target==2){
    curve=curve[,beta:=beta*clv]
  }else if (ex.setup$optimization_target==3){
    curve=curve[,beta:=beta/factor_1]
  } else if (ex.setup$optimization_target==4){
    curve=curve[,beta:=beta/factor_2]
  } else if (ex.setup$optimization_target==5){
    curve=curve[,beta:=beta/factor_3]
  }
}else if (curve_f %in% c("exp","exp000","exp_cpm")){
  if(ex.setup$optimization_target==2){
    curve=curve[,a:=a*clv]
  }
}
