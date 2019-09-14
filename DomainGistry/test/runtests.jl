using Test
using DomainGistry

@testset "Domain Name Generation Fxn" begin
    @test DomainGistry.generate("example") == ["example.com" ,"example.edu" ,"example.net" ,"example.org" ,"example.site","example.co"  ,"example.io"  ,"example.ai"  ,"example.app" ,"example.ca"  ,"example.uk"  ,"example.ua"  ,"example.us"  ,"example.ru"  ,"example.ch" ]
    @test DomainGistry.generate("example","common") == ["example.com" ,"example.edu" ,"example.net" ,"example.org" ,"example.site","example.co"  ,"example.io"  ,"example.ai"  ,"example.app" ,"example.ca"  ,"example.uk"  ,"example.ua"  ,"example.us"  ,"example.ru"  ,"example.ch" ]
end

