/proc/cmp_embed_text_asc(a,b)
	if(isdatum(a))
		a = REF(a)
	if(isdatum(b))
		b = REF(b)
	return sorttext("[b]", "[a]")

/proc/type2parent(child)
	var/string_type = "[child]"
	var/last_slash = findlasttext(string_type, "/")
	if(last_slash == 1)
		switch(child)
			if(/datum)
				return null
			if(/obj, /mob)
				return /atom/movable
			if(/area, /turf)
				return /atom
			else
				return /datum
	return text2path(copytext(string_type, 1, last_slash))

/proc/REF(input)
	return "\ref[input]"
