data other_option;
	merge brfss_a (IN = In1) vet_b (IN = In2);
	by _STATE;
	if (In1 and In2) then output other_option;
RUN;
data no_match;
	merge brfss_a (IN = In1) vet_b (IN = In2);
	by _STATE;
	if (NOT In1 and In2) then output no_match;
RUN;