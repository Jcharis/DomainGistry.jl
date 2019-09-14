# DomainGistry.Jl
Domain Name Generation Package For Julia Language

### Installation

#### Method 1 
```julia
using Pkg
```

```julia
Pkg.add("DomainGistry")
```
#### Method 2  with the Pkg Mode ]
```julia
]
```
add DomainGistry

#### Method 3 Clone the Repo
git clone https://github.com/Jcharis/DomainGistry.jl

#### Usage

```julia
using DomainGistry
```

```julia
generate("example")
```

```julia
DomainGistry.generate("example")
```

#### Get Common Domain Names eg [com,org,net]
```julia
getcommon("example")
```

#### Get New Domain Names eg [example.app,example.tech]
```julia
getnew("example")
```

#### Get Extra Domain Names eg [example.asia,example.ru]
```julia
getextra("example")
```

#### Get Prefix Domain Names eg [topexample.com,theexample.com]
```julia
getprefix("example")
```

#### Get Suffix Domain Names eg [examplify.com,exampleonline.com]
```julia
getsuffix("example")
```


You can also use it explicitly by calling the Pkg name
eg 
```julia
DomainGistry.getcommon("example")
```


#### Author
+ Jesse E.Agbe(JCharis)
+ Jesus Saves@JCharisTech