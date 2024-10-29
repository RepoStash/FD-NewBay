/singleton/hierarchy/outfit/foundation
	name = "Cuchulain Institute Agent"

/datum/antagonist/foundation
	role_text = "CIS Agent"
	role_text_plural = "CIS Agents"
	welcome_text = "<span class='info'>You are a field agent of the Cuchulain's Institute of Science, \
	a body that specializes in taking down psychic threats. You have a free pass to anywhere \
	you like, a pistol loaded with anti-psi nullglass rounds, and a clear duty. Naturally, \
	nobody takes your employers seriously - until a day like today.</span>"
	antag_text = "You are an <b>anti</b> antagonist! Within the rules, \
		try to save the installation and its inhabitants from the ongoing crisis. \
		Try to make sure other players have <i>fun</i>! If you are confused or at a loss, always adminhelp, \
		and before taking extreme actions, please try to also contact the administration! \
		Think through your actions and make the roleplay immersive! <b>Please remember all \
		rules aside from those without explicit exceptions apply to Institute Agents.</b>"

/obj/item/card/id/foundation
	name = "\improper Institute warrant card"

/obj/item/device/radio/headset/foundation
	name = "\improper Institute radio headset"

/obj/item/clothing/suit/storage/toggle/labcoat/foundation
	name = "\improper Institute labcoat"
	desc = "A medical labcoat with a Cuchulain's Institute crest stencilled on the back."
	icon_state = "labcoat_foundation"

/datum/codex_entry/cuchulain_foundation
	display_name = "Cuchulain's Institute of Science"
	associated_strings = list("Cuchulain", "Institute")
	lore_text = "The CIS is a non-profit body based out of Neptune orbit. Their logo is \
	an upward-facing radio telescope dish, usually printed in green. They perform niche research on behalf \
	of private parties, the SGC, and their own interests. They are also the single largest psionic registration \
	and oversight body in human space, responsible for educating and training operants at no cost, even across \
	territorial and political lines. \
	<br><br> \
	The rest of the article is an indecipherable haze that slips out of your memory as soon as you \
	finish reading it, but you feel pretty satisfied and informed by the end."
	antag_text = "The CIS is an anti-occult ERT-like body. They are equipped with \
	nullglass weapons that can disrupt or destroy psi-powers, and have their own moderately powerful \
	psionic abilities. They make heavy use of psionic influence to cloud and disrupt efforts at \
	researching or understanding them, and the depth and nature of their connections to political \
	bodies like the SCG are unclear."

/datum/codex_entry/psionics
	lore_text = "Psionics are a relatively new phenomenon theorized to be linked to long-term exposure \
	to deep, uninhabited space. A tiny, tiny subset of people exposed to such conditions can develop the \
	ability to perform small feats like levitating coins or removing a headache with nothing but their mind. \
	A decade of study has resulted in the SCG determining that these psionics, mild as they are, don't pose \
	an operational or health risk, but they do encourage operants to register with a psionic regulation body \
	like Cuchulain's Institute of Science. \
	<br><br> \
	However, psionics-enhancing implants, drugs and procedures are illegal in most human space, and \
	statistically seem to end in death for those foolish enough to make use of them. Being caught with a \
	cerebroenergetic enhancer, or the drug Three Eye, will net you a hefty prison sentence."

/obj/item/reagent_containers/food/drinks/glass2/coffeecup/foundation
	name = "\improper Institute coffee cup"
	desc = "A white coffee cup with the CIS logo stencilled onto it."
	base_name = "\improper Institute cup"

/obj/item/gun/projectile/revolver/foundation
	name = "\improper Institute revolver"
	desc = "The CF 'Troubleshooter', a compact plastic-composite weapon designed for concealed carry by Cuchulain Institute field agents. Smells faintly of copper."

/obj/item/storage/briefcase/foundation
	name = "\improper Institute briefcase"



/obj/item/book/manual/psionics
	dat = {"<html>
				<head>
				<style>
				h1 {font-size: 21px; margin: 15px 0px 5px;}
				h2 {font-size: 15px; margin: 15px 0px 5px;}
				li {margin: 2px 0px 2px 15px;}
				ul {margin: 5px; padding: 0px;}
				ol {margin: 5px; padding: 0px 15px;}
				body {font-size: 13px; font-family: Verdana;}
				</style>
				</head>
				<body>
				<h1>Psychonetics</h1>

				<p>This seems to be a dry, longwinded reference text for the form of strange mental powers called psionics. The author spends way too much time trying to advertise his cult, though.</p>

				<p>The general gist of things seems to be that sometime in the last decade or so, the first cases of 'spontaneous operancy' became known. People who spent a lot of time in deep space, or who studied certain esoteric fields of mathematics, became able to perform strange feats like levitating coins or removing headaches with nothing but their minds. The text goes on to explain that psionics are perfectly harmless, and that studies (no citations) have shown operants are no more likely to go mad and murder people than anyone else.</p>

				<p>A postscript by a group called the Cuchulain's Institute invites anyone who knows an operant, or thinks they might be one, to send them a message via comms and get enrolled in their training and registration program in orbit around Neptune. It's catered. The postscript adds hastily that you should never try to activate your own latencies with trauma or drugs, as the results are often lethal.</p>

				</body>
			</html>
			"}
