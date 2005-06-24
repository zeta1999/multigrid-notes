<TeXmacs|1.0.5>

<project|multigrid.tm>

<style|<tuple|article|skript|number-long-article>>

<\body>
  <assign|section-nr|6><section|Multiplicative Schwarz Methods>

  <\theorem>
    For the successive subspace correction method, we have

    <\equation*>
      <enorm|(id-P<rsub|0>)(id-P<rsub|1>)\<cdots\>(id-P<rsub|N>)||2>=1-<frac|1|1+C<rsub|0>>\<less\>1<space|1em>(C<rsub|0>\<neq\>0)
    </equation*>

    with

    <\equation*>
      C<rsub|0>=sup<rsub|<enorm|v||>=1>inf<rsub|v=<big|sum>w<rsub|n>><big|sum><rsub|n=0><rsup|N><enorm|P<rsub|n><big|sum><rsub|k=n+1><rsup|N>w<rsub|k>||2>
    </equation*>

    for <with|mode|math|w<rsub|n>\<in\>W<rsub|n>>, considering

    <\equation*>
      <enorm|P<rsub|n><big|sum><rsub|k=n+1><rsup|N>w<rsub|k>||2>=<enorm|P<rsub|0>(v-w<rsub|0>)||2>+<enorm|P<rsub|0>(v-w<rsub|0>-w<rsub|1>)||2>+<enorm|P<rsub|0>(v-w<rsub|0>-w<rsub|1>-w<rsub|2>)||2>.
    </equation*>
  </theorem>

  <\proof>
    <em|Step 1.> <with|mode|math|E<rsub|1>=id>.
    <with|mode|math|E<rsub|n>=E<rsub|n-1>(id-P<rsub|n>)>. Now,

    <\equation>
      <label|eq:muschwa-diff><enorm|v||2>-<enorm|E<rsub|N>v||2>=<big|sum><rsub|n=0><rsup|N>a(h*E<rsub|n-1>v,E<rsub|n-1>v)=<big|sum><rsub|n=0><rsup|N><enorm|P<rsub|n>E<rsub|n-1>v||2>
    </equation>

    and

    <\equation>
      <label|eq:muschwa-idsum><big|sum><rsub|m=0><rsup|n-1>P<rsub|m>E<rsub|m-1>+E<rsub|n-1>=id.
    </equation>

    We define

    <\eqnarray*>
      <tformat|<table|<row|<cell|<wide|I|~>:V>|<cell|\<rightarrow\>>|<cell|V<rsup|N+1>,<space|1em><wide|I|~>v\<assign\>(v,\<ldots\>,v)<rsup|T>>>|<row|<cell|<wide|E|~>:V>|<cell|\<rightarrow\>>|<cell|V<rsup|N+1>,<space|1em><wide|E|~>v\<assign\>(v,E<rsub|1>v,E<rsub|2>v,\<ldots\>,E<rsub|N-1>v)<rsup|T>>>|<row|<cell|<wide|L|~>:V<rsup|N+1>>|<cell|\<rightarrow\>>|<cell|V<rsup|N+1>,<space|1em><wide|L|~>\<assign\><matrix|<tformat|<table|<row|<cell|id>|<cell|>|<cell|>|<cell|>|<cell|>>|<row|<cell|P<rsub|0>>|<cell|\<ddots\>>|<cell|>|<cell|>|<cell|>>|<row|<cell|\<vdots\>>|<cell|P<rsub|1>>|<cell|\<ddots\>>|<cell|>|<cell|>>|<row|<cell|\<vdots\>>|<cell|\<vdots\>>|<cell|\<ddots\>>|<cell|\<ddots\>>|<cell|>>|<row|<cell|P<rsub|0>>|<cell|P<rsub|1>>|<cell|\<cdots\>>|<cell|P<rsub|n-1>>|<cell|id>>>>>>>|<row|<cell|<wide|U|~>:V<rsup|N+1>>|<cell|\<rightarrow\>>|<cell|V<rsup|N+1>,<space|1em><wide|U|~>\<assign\><matrix|<tformat|<table|<row|<cell|0>|<cell|>|<cell|>|<cell|>>|<row|<cell|id>|<cell|\<ddots\>>|<cell|>|<cell|>>|<row|<cell|\<vdots\>>|<cell|\<ddots\>>|<cell|\<ddots\>>|<cell|>>|<row|<cell|id>|<cell|\<cdots\>>|<cell|id>|<cell|0>>>>>>>|<row|<cell|<wide|P|~>:V<rsup|N+1>>|<cell|\<rightarrow\>>|<cell|V<rsup|N+1>,<space|1em><wide|P|~>\<assign\>diag({P<rsub|n>}<rsub|n>)>>>>
    </eqnarray*>

    Note that <with|mode|math|<wide|L|~>> is invertible and
    <with|mode|math|<wide|U|~>> is nilpotent (such that, by the Neumann
    series, <with|mode|math|1\<pm\><wide|U|~>> is invertible). We observe
    <with|mode|math|<wide|L|~><wide|P|~>-<wide|P|~>=<wide|U|~><wide|P|~>>.
    This and (<reference|eq:muschwa-idsum>) is equivalent to
    <with|mode|math|<wide|L|~><wide|E|~>=<wide|I|~>>, and thus
    <with|mode|math|<wide|E|~>=<wide|L|~><rsup|-1><wide|I|~>>. Futhermore,
    (<reference|eq:muschwa-diff>) means that

    <\equation*>
      <enorm|v||2>-<enorm|E<rsub|N>v||2>=<enorm|<wide|P|~><wide|E|~>v|N+1|2>=<enorm|<wide|P|~><wide|L|~><rsup|-1><wide|I|~>v|N+1|2>
    </equation*>

    The norm is defined in an obvious manner:

    <\equation*>
      <enorm|(v<rsub|0>,\<ldots\>,v<rsub|T>)<rsup|T>|N+1|2>=<big|sum><enorm|v<rsub|n>||2>.
    </equation*>

    <\eqnarray*>
      <tformat|<table|<row|<cell|>|<cell|>|<cell|<enorm|(id-P<rsub|0>)\<cdots\>(id-P<rsub|N>)||2>>>|<row|<cell|>|<cell|=>|<cell|<enorm|E<rsub|N>||2>=sup<rsub|<enorm|v||>=1><enorm|E<rsub|N>v||2>=sup<rsub|<enorm|v||>=1><enorm|v||2>-<enorm|<wide|P|~><wide|L|~><rsup|-1><wide|I|~>v|N+1|2>>>|<row|<cell|>|<cell|=>|<cell|1-inf<rsub|<enorm|v||>=1><enorm|<wide|P|~><wide|L|~><rsup|-1><wide|I|~>v|N+1|2>.>>|<row|<cell|>|<cell|<above|=|(\<ast\>)>>|<cell|1-inf<rsub|<enorm|v||>=1><enorm|<wide|P|~><wide|L|~><rsup|-1><wide|P|~><wide|I|~>v|N+1|2>>>|<row|<cell|>|<cell|=>|<cell|1-inf<rsub|<enorm|v||>=1><enorm|<wide|P|~>(<wide|P|~>+<wide|V|~>)<rsup|-1><wide|P|~><wide|I|~>v|N+1|2>,>>>>
    </eqnarray*>

    where the step <with|mode|math|(\<ast\>)> uses

    <\eqnarray*>
      <tformat|<table|<row|<cell|<wide|L|~><rsup|-1>>|<cell|=>|<cell|(<wide|I|~>-(<wide|I|~>-<wide|L|~><rsup|>))<rsup|-1><below|=|<with|mode|text|Neumann>><big|sum><rsub|k=0><rsup|N>(<wide|I|~>-<wide|L|~>)<rsup|k>=<big|sum><rsub|k=0><rsup|N>(-<wide|U|~><wide|P|~>)<rsup|k><wide*|<wide|P|~>|\<wide-underbrace\>><rsub|<with|mode|text|can
      be added>>>>>>
    </eqnarray*>

    and we defined <with|mode|math|<wide|V|~>\<assign\><wide|P|~><wide|U|~><wide|P|~>>.

    Now, we show that

    <\equation*>
      <left|(>inf<rsub|<enorm|v||>=1><enorm|<wide|P|~>(<wide|P|~>+<wide|V|~>)<rsup|-1><wide|P|~><wide|I|~>v|N+1|2><right|)><rsup|-1>=1+C<rsub|0>,
    </equation*>

    with

    <\equation*>
      C<rsub|0>\<assign\>sup<rsub|<enorm|v||>=1><enorm|<wide|P|~><wide|U|~><rsup|T><wide|P|~><wide|I|~>v|N+1|>.
    </equation*>

    To start out, consider that <with|mode|math|(<wide|U|~>+<wide|U|~><rsup|T>+<wide|id|~>)=(N+1)<wide|id|~>>.
    Consider

    <\eqnarray*>
      <tformat|<table|<row|<cell|>|<cell|>|<cell|inf<rsub|v\<neq\>0><frac|N+1|<enorm|<wide|I|~>v|N+1|2>><enorm|<wide|P|~>(<wide|P|~>+<wide|V|~>)<rsup|-1><wide|P|~><wide|I|~>v|N+1|2>>>|<row|<cell|>|<cell|=>|<cell|inf<rsub|v\<neq\>0><frac|N+1|a(<wide|I|~>v,<wide|I|~>v)>a(<wide|P|~>(<wide|P|~>+<wide|V|~><rsup|T>)<rsup|-1><wide|P|~>(<wide|P|~>+<wide|V|~>)<rsup|-1><wide|P|~><wide|I|~>v,<wide|P|~><wide|I|~><wide|v|~>)>>|<row|<cell|>|<cell|=>|<cell|inf<rsub|v\<neq\>0>(N+1)<frac|a(<wide|P|~><wide|I|~>v,<wide|P|~><wide|I|~>v)|a(<wide|P|~>(<wide|P|~>+<wide|V|~>)<wide|P|~>(<wide|P|~>+<wide|V|~><rsup|T>)<wide|P|~><wide|I|~>v,<wide|P|~><wide|I|~>v)>>>|<row|<cell|>|<cell|=>|<cell|inf<rsub|v\<neq\>1>*<frac|(N+1)a(<wide|P|~><wide|I|~>v,<wide|P|~><wide|I|~>v)|(N+1)a(<wide|P|~><wide|I|~>v,<wide|P|~><wide|I|~>v)+a(<wide|P|~><wide|V|~><wide|V|~><rsup|T><wide|P|~><wide|I|~>v,<wide|P|~><wide|I|~>v)>>>|<row|<cell|>|<cell|=>|<cell|inf<rsub|(N+1)<enorm|<wide|P|~><wide|I|~>v|N+1|2>\<neq\>1><frac|1|1+<enorm|<wide|P|~><wide|V|~><rsup|T><wide|P|~><wide|I|~>v|N+1|2>>>>>>
    </eqnarray*>

    It remains to show that

    <\equation*>
      sup<rsub|(N+1)<enorm|<wide|P|~><wide|I|~>v|N+1|2>><enorm|<wide|P|~><wide|V|~><rsup|T><wide|P|~><wide|I|~>v|N+1|>=sup<rsub|<enorm|v||>=1>inf<rsub|v=<big|sum>w<rsub|n>><enorm|<wide|P|~><wide|U|~><rsup|T>w|N+1|2>
    </equation*>

    with <with|mode|math|w=(w<rsub|0>,\<ldots\>,w<rsub|N>)<rsup|T>>.
  </proof>
</body>

<\initial>
  <\collection>
    <associate|language|american>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|7|?>>
    <associate|eq:muschwa-diff|<tuple|7.1|?>>
    <associate|eq:muschwa-idsum|<tuple|7.2|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|7<space|2spc>Multiplicative
      Schwarz Methods> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>