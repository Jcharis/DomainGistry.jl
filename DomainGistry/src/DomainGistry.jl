"""
DomainGistry - Domain Name Generation Package

#Usage

```julia-repl
using DomainGistry
```
# or after downloading the github repository
```julia-repl
include("DomainGistry.jl)
```

```julia-repl
DomainGistry.generate("example","common")
```


"""
module DomainGistry
export generate,getnew,getcommon,getextra,getprefix,getsuffix,getshuffled

# Data
new_domain = ["app","site","online","xyz","tech","shop","blog","space","live","life","website","news","ninja","solutions","expert","services","media","rocks","company","guru","club","today","agency","technology","tips","center","link","click","ltd","win","work"]
common_domain = ["com","edu","net","org","site","co","io","ai","app","ca","uk","ua","us","ru","ch"]
extra_domain =["asia","africa","us","me","biz","info","name","mobi","cc","tv","ly","tk","ml","it","to","eu","ch","online"]
prefix_domain = ["a","i","e","the","my","me","we","top","best","get","co","nu","up","new","live","bestof","meta","just","99","101","insta","try","hit","go","re","dr","mr","bit","net","hot","beta","you","our","x","buy","for","pro","ez","on","v","hd","max","digi","free","very","all","easy","cool","air","next","find","uber",]
suffix_domain = ["online.com","world.com","io.com","me.com","you.com","up.com","new.com","blog.com","web.com","hd.com","hq.com","tip.com","tips.com","guru.com","link.com","sumo.com","mob.com","lab.com","labs.com","list.com","info.com","jar.com","egg.com","site.com","app.com","apps.com","net.com","inc.com","247.com","360.com","24x7.com","corp.com","page.com","llc.com","now.com","all.com","box.com","base.com","zone.com","zoom.com","bit.com","bits.com","byte.com","bros.com","cart.com","sale.com","shop.com","store.com","free.com","soft.com","101.com","center.com","pro.com","pros.com","co.com","space.com","hub.com","spot.com","ware.com","talk.com","place.com","kit.com","pad.com","tool.com","bot.com","bots.com","bee.com","doc.com",".com","al.com","ity.com","iput.com","ally.com","ality.com","alness.com","ipital.com"]


"""
Generate Domain Names Using Specified Category [common,new,extra,prefix,suffix]

```julia-repl
include("DomainGistry.jl")
```
# or
```julia-repl
using DomainGistry
```

```julia-repl
DomainGistry.generate("example","common")
```
"""
function generate(name::AbstractString,category::AbstractString="common")
	new_name = join(split(lowercase(name)," "),"")
	if category == "new"
		result = ["$new_name.$i" for i in new_domain]
	elseif category == "common"
		result = ["$new_name.$i" for i in common_domain]
	elseif category == "extra"
		result = ["$new_name.$i" for i in extra_domain]
	elseif category =="prefix"
		result = ["$i$new_name.com" for i in prefix_domain]
	elseif category == "suffix"
		result = ["$new_name$i" for i in suffix_domain]		
	else
		result = ["$new_name.$i" for i in common_domain]
	end

	return result

end

"""
 Get New Domain Names eg [example.app,example.tech]

"""
function getnew(name::AbstractString)
	new_name = join(split(lowercase(name)," "),"")
	result = ["$new_name.$i" for i in new_domain]
	return result

end

"""
 Get Common Domain Names eg [com,org,net]

"""
function getcommon(name::AbstractString)
	new_name = join(split(lowercase(name)," "),"")
	result = ["$new_name.$i" for i in common_domain]
	return result

end

"""
 Get Extra Domain Names eg [example.asia,example.ru]

"""
function getextra(name::AbstractString)
	new_name = join(split(lowercase(name)," "),"")
	result = ["$new_name.$i" for i in extra_domain]
	return result

end

"""
 Get Prefix Domain Names eg [topexample.com,theexample.com]

"""
function getprefix(name::AbstractString)
	new_name = join(split(lowercase(name)," "),"")
	result = ["$i$new_name.com" for i in prefix_domain]
	return result

end

"""
 Get New Domain Names eg [examplify.com,exampleonline.com]

"""
function getsuffix(name::AbstractString)
	new_name = join(split(lowercase(name)," "),"")
	result = ["$new_name$i" for i in suffix_domain]
	return result

end

"""
 Get Shuffled Domain Names 

"""
function getshuffled(name::AbstractString)
	new_word = split(lowercase(name)," ")
	if length(new_word) == 2
		first_text = new_word[1]
		last_text = new_word[2]
		new_name = "$last_text$first_text"
	elseif length(new_word) == 3
		first_text = new_word[1]
		mid_text = new_word[2]
		last_text = new_word[3]
		new_name = "$last_text$first_text$mid_text"
	end
	result = ["$new_name.$i" for i in common_domain]
	return result

end



end