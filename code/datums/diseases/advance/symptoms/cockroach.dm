/datum/symptom/cockroach

	name = "SBG Syndrome"
	desc = "ERROR: BLUESPACE INTERFERENCE RENDERS COMPLETE ANALYSIS IMPOSSIBLE" 
	stealth = 0
	resistance = 3
	stage_speed = 3
	transmittable = 1
	level = 0
	severity = 6 //the joke here is that this relatively mundane and harmless symptom, which only spawns cockroaches, seems incredibly frightening
	symptom_delay_min = 10
	symptom_delay_max = 30
	var/scratch = FALSE
	threshold_desc = "<b>Stage Speed 8:</b> CALCULATIONS FORECAST HEIGHTENED ACTIVITY<br>\
	<b>Transmission 8:</b> CALCULATIONS FORECAST BRIEFLY ESCALATED ACTIVITY IMMEDIATELY FOLLOWING CESSATION OF HOST LIFESIGNS<br>" 
            
/datum/symptom/cockroach/Start(datum/disease/advance/A)
	if(!..())
		return
	if(A.properties["stage_rate"] >= 8) /
		symptom_delay_min = 5
		symptom_delay_max = 15
	if(A.properties["transmittable"] >= 8) 
		death_roaches = TRUE

/datum/symptom/cockroach/Activate(datum/disease/advance/A)
	if(!..())
		return
	var/mob/living/M = A.affected_mob
	switch(A.stage)
		if(2)
			if(prob(50))
				to_chat(M, "<span class='notice'>You feel a tingle under your skin</span>")
		if(3)
			if(prob(50))
				to_chat(M, "<span class='notice'>Your pores feel drafty.</span>")
			if(prob(5))
				to_chat(M, "<span class='notice'>You feel attuned to the atmosphere</span>")
		if(4)
			if(prob(50))
				to_chat(M, "<span class='notice'>You feel in tune with the station</span>")
		if(5)
			if(prob(10))
				M.visible_message("<span class='danger'>[M] squirms as a cockroach crawls from their pores!</span>", \
								  "<span class='userdanger'>A cockroach crawls out of your face!!</span>")
					new /mob/living/simple_animal/roach(M.loc)
			if(prob(50))
				to_chat(M, "<span class='notice'>You feel something crawling in your pipes!</span>")
			if(death_roaches)
  				on_death(A.affected_mob)
					new /mob/living/simple_animal/roach(M.loc)
						(M.loc)for(var/i in 1 to 5)
    						if(prob(75))
       							new /mob/living/simple_animal/roach(M.loc)
