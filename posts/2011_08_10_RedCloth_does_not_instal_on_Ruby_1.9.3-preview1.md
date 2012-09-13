Hey guys,

Installing my RoR environment on my laptop and thought I would give Ruby 1.9.3-preview1 a whirl (via RVM). When running 

<pre>
$ bundle install
</pre>

I ran into an error installing RedCloth. Below is an extract

<pre>
make
compiling redcloth_inline.c
cc1: warnings being treated as errors
ragel/redcloth_inline.c.rl: In function ‘red_parse_title’:
ragel/redcloth_inline.c.rl:68:7: error: ISO C90 forbids mixed declarations and code
ragel/redcloth_inline.c.rl: In function ‘red_block’:
ragel/redcloth_inline.c.rl:99:3: error: ISO C90 forbids mixed declarations and code
</pre>

If you want to install the RedCloth gem then run the following command

<pre>
gem install RedCloth -- --with-cflags="-std=c99"
</pre>

*Note:* I also had the same issue with the __gherkin-2.3.3__ gem.


Hope it helps others out.


-Matt