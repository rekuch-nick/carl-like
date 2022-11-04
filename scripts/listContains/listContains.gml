function listContains(list, s){
	for(var i=0; i<ds_list_size(list); i++){
		if(ds_list_find_value(list, i) == s){
			return true;
		}
	}
	return false;
}