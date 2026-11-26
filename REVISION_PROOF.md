# Revision v2: quantitative uniform approximation and exact moment threshold

Revision of the public paper, 26 November 2026. AI-assisted analytical research, not peer reviewed. This supplement is an original derivation candidate relative to the sources reviewed; it does not assert exhaustive priority. The previous public release and its hashes are preserved. Throughout the large-n section the field is complex and the definitions of $v_n,p_{n,j},R_i,X_{n,q},c_{n,s}$ are as in PROOF.md (v1).

## A. A quantitative theorem uniform over arbitrary spectra

Fix $s=q/2$ in $(0,1)$ and write $L=\log n$. Put $T_n=\sum_{j=1}^n p_{n,j} E_j$ for independent mean-one exponentials, and $a_{n,s}=\mathbb E T_n^{-s}$. There are constants depending only on $s$ such that, for sufficiently large $n$,

$$\sup_{\Lambda_n}\mathbb E|X_{n,q}-c_{n,s}|\le C_s/L,\qquad \sup_{\Lambda_n}\mathbb E|X_{n,q}-a_{n,s}|\le C_s/L.$$

The rate is sharp in this uniform assertion. More precisely, with $\gamma$ the Euler constant, there is a constant $C_s$ such that every spectrum satisfies

$$1-s\gamma/L-C_s/L^2 \le \mathbb E X_{n,q}/c_{n,s}\le 1+s(1-\gamma)/L+C_s/L^2.$$

For a rank-one spectrum, $\mathbb E X_{n,q}/c_{n,s}=1-s\gamma/L+O_s(L^{-2})$. Neither this statement nor the mean bracket is an exact first-correction coefficient for general spectra. In the bounded standardized-spectrum regime, Veceř already gives a stronger expansion of the expected MST for $q=1$ (Theorem 2, Corollary 3). The recursive construction and the conditional law are explicitly his Section 3 and Lemma 6, and his Lemma 7(19) already provides the spectrum-uniform inverse-radius bound used below.

### A.1 Quantitative row maxima and recursive comparison

Set $m=n-1$, $D_k=\max_{1\le j\le k}E_j$, $S_m=\sum_{j=1}^m E_j$, $B_{m,k}=D_k/S_m$. The gamma-to-simplex factorization and prior v1 negative-moment estimate give $\mathbb E[(\log k/D_k)^b]\le C_b$ for each fixed $b>0$ and sufficiently large $k$. For $t\ge0$, the upper tail of $D_k-\log k$ is at most $e^{-t}$. The lower tail is at most $\exp(-e^t)$ for $0\le t\le\log k$, and zero thereafter. These bounds give a uniformly bounded second moment of $D_k-\log k$. The event $D_k<\frac12\log k$ has probability at most $\exp(-\sqrt k)$. On its complement the mean value theorem bounds $|(D_k/\log k)^{-s}-1|$ by $C_s|D_k-\log k|/\log k$; on the exceptional event Cauchy--Schwarz and the negative-moment bound control the expectation. Thus $\mathbb E| (\log k/D_k)^s-1|=O_s(1/\log k)$.

For $0<s<1$, $|x^s-1|\le|x-1|^s$ for $x\ge0$ by subadditivity of $x^s$. Hence $\mathbb E|(S_m/m)^s-1|^2\le m^{-s}$. Cauchy--Schwarz with the preceding inverse-maximum bound, without assuming independence of $S_m,D_k$, yields

$$\mathbb E| (\log k/m)^s B_{m,k}^{-s}-1|=O_s(1/\log k +m^{-s/2}).$$

For $k\ge\sqrt n$ multiply by $(\log n/\log k)^s$; the resulting error $\epsilon_{n,k}=\mathbb E|(\log n/m)^s B_{m,k}^{-s}-1|$ is bounded by $C_s[(1+\log(n/k))/L+m^{-s/2}]$. For $k<\sqrt n$, use monotonicity of $B_{m,k}$ in $k$ and its one-coordinate moment to get $\epsilon_{n,k}\le C_s(1+L^s)$. The sum of $\log(n/k)$ for $1\le k\le m$ is at most $n$ (right Riemann sum for the decreasing function $-\log x$); therefore $n^{-1}\sum_{k=1}^m\epsilon_{n,k}=O_s(1/L)$, as is $\epsilon_{n,m}$.

Use Veceř's recursive tree: for vertex $i\ge2$ attach to the cheapest edge going to an earlier label. Labels decrease strictly along parents, so the result is a tree. With $Q_n=(m/L)^s\sum_iR_i^{-2s}$, the averaged rooted lower bound $L_n$ from v1 and this upper bound $U_n^{rec}$ satisfy, by conditional factorization and the triangle inequality,

$$\frac{\mathbb E|L_n-Q_n|}{\mathbb E Q_n}\le\epsilon_{n,m}+1/n,\quad \frac{\mathbb E|U_n^{rec}-Q_n|}{\mathbb E Q_n}\le\frac1n+\frac1n\sum_{k=1}^m\epsilon_{n,k}.$$

Since $L_n\le M_{n,q}\le U_n^{rec}$ pathwise, the error of $M_{n,q}$ is bounded by the sum of the two errors. Using the uniformly bounded inverse-radius mean from v1, this proves an $O_s(1/L)$ bound for $\mathbb E|X_{n,q}-(m/n)^s\overline V_n|$, where $\overline V_n=n^{-1}\sum_i(R_i^2/v_n)^{-s}$.

### A.2 Quantitative two-column self-averaging

Write $P=\mathrm{diag}(p_{n,j})$, $\mathrm{tr}P=1$. Take independent complex standard Gaussian vectors $g,h$, $x=g/\|g\|$, $a=x^*h$, $z=h-xa$, $y=z/\|z\|$. These are two Haar columns. Let $Z_i=R_i^2/v_n$, and $T^g=g^*Pg,T^h=h^*Ph$ (independent, each with law $T_n$).

For the first column, $g^*Pg=(\|g\|^2/n)nx^*Px$. Gaussian radius and direction are independent and $\mathbb E(nx^*Px)=1$. Consequently $\mathbb E|nx^*Px-g^*Pg|\le n^{-1/2}$. Conditional on $x$, the projected Gaussian $z$ has independent radius and direction in dimension $n-1$. Its squared radius $S'$ has Gamma$(n-1,1)$ law independent of $x$, hence independent of $y$. With $\mathbb E(ny^*Py)=1$, $\mathbb E|ny^*Py-z^*Pz|\le n^{-1/2}$, since $\mathbb E(1-S'/n)^2=1/n$.

PSD Cauchy--Schwarz gives
$$|z^*Pz-h^*Ph|\le 2|a|\sqrt{x^*Px}\sqrt{h^*Ph}+|a|^2x^*Px.$$
Conditional on $x$, $\mathbb E|a|^2=1$, so $\mathbb E[|a|^2x^*Px]=1/n$; also $\mathbb E h^*Ph=1$. Applying ordinary Cauchy--Schwarz to the first term gives $2n^{-1/2}$, and the second has mean $1/n$. Each centered diagonal correction between $nx^*Px$ and $Z_i$ has mean $1/(n+1)$ by the original Dirichlet second moments. Consequently
$$\mathbb E|Z_1-T^g|+\mathbb E|Z_2-T^h|\le C n^{-1/2}$$
with an absolute constant, uniformly in spectrum.

For $B\ge1$, set $h_B(t)=\min(B,t^{-s})$, $h_B(0)=B$. This is bounded by $B$ and globally Lipschitz with constant $s B^{1+1/s}$. Coupling both truncated variables to the independent $h_B(T^g),h_B(T^h)$ gives
$$|\mathrm{Cov}(h_B(Z_1),h_B(Z_2))|\le C_s B^{2+1/s}n^{-1/2}.$$
Indeed the joint product and the product of the two marginal means each differ from their independent analogues by at most $B$ times the sum of the two mean coupling errors. Permutation invariance gives empirical variance at most $B^2/n+C_s B^{2+1/s}/\sqrt n$. For $a_0=(1+s)/2$, v1's uniform inverse-radius estimate supplies $\mathbb E Z_i^{-a_0}\le C_s$. Jensen applied to the weighted sum $T_n$ gives $\mathbb E T_n^{-a_0}\le\Gamma(1-a_0)$. Each truncation error is at most $C_s B^{-(a_0/s-1)}$. Thus
$$\mathbb E|\overline V_n-c_{n,s}|\le C_s B^{-(a_0/s-1)} + [B^2/n+C_s B^{2+1/s}/\sqrt n]^{1/2},$$
$$|c_{n,s}-a_{n,s}|\le C_s B^{-(a_0/s-1)} + C_s B^{1+1/s}/\sqrt n.$$
Take $B=n^{s/[8(2s+1)]}$. The two bounds are $O_s(n^{-\eta_s})$ with $\eta_s=(1-s)/[16(2s+1)]>0$; the variance square root is $O_s(n^{-3/16})$, and the untruncated coupling term decays faster than $n^{-\eta_s}$. Combining A.1, $|(m/n)^s-1|=O_s(1/n)$, and bounded means proves the two quantitative uniform assertions. This does not assert independence of all rows or any fluctuation law.

### A.3 Uniform mean bracket and sharpness of the rate

Let $g_{k,s}=\mathbb E D_k^{-s}$ and $f_{m,k,s}=\Gamma(m)g_{k,s}/\Gamma(m-s)$. Exact finite-dimensional expectation comparison (conditional factorization) now gives
$$ (n-1)f_{m,m,s}\mathbb E R_1^{-2s}\le\mathbb E M_{n,q}\le \mathbb E R_1^{-2s}\sum_{k=1}^m f_{m,k,s}.$$
The upper bound is Veceř's recursive comparison extended to these powers. A direct Taylor estimate gives
$$g_{k,s}=(\log k)^{-s}\{1-s\gamma/\log k+O_s((\log k)^{-2})\}.$$
To justify the coefficient, $\mathbb E D_k=\sum_{i=1}^k 1/i$, by integrating its survival function, using $u=e^{-t}$, and expanding $[1-(1-u)^k]/u$ as a finite geometric sum. Hence $\mathbb E(D_k-\log k)=\gamma+O(1/k)$. On $D_k\ge\frac12\log k$ the second derivative of $x^{-s}$ at $x=D_k/\log k$ along the Taylor segment is bounded by $C_s$. The bounded second moment and the exponentially small exceptional tail (with the inverse moments as in A.1) justify the expansion. For $k\ge\sqrt n$ put $b=\log(n/k)$, expand $(1-b/L)^{-s}$ to order $b/L$ with error $O_s(b^2/L^2)$, and use $1/\log k=1/L+O(b/L^2)$. The average of $b$ tends to one with error $O(L/n)$ by integral comparison (or Stirling); the average of $b^2$ is at most two by the same decreasing-function bound. Terms $k<\sqrt n$ contribute $O_s(n^{-1/2}L^s)$ after normalization. Thus $L^s n^{-1}\sum_{k=1}^{m}g_{k,s}=1+s(1-\gamma)/L+O_s(L^{-2})$. The lower bound has $L^s g_{m,s}=1-s\gamma/L+O_s(L^{-2})$. Finally $\Gamma(m)/[n^s\Gamma(m-s)]=1+O_s(n^{-1})$ by the gamma-ratio asymptotic. This proves the bracket, with constants independent of spectrum.

For a rank-one matrix $H=\lambda z z^*$ with uniform complex unit vector $z$, a largest amplitude vertex is a star hub minimizing every other vertex's incident edge. The optimum is exactly the sum of the row minima except for that hub. Hence it is also bounded above by the sum of all row minima, whose expectation differs from the averaged rooted lower bound by only a factor $n/(n-1)$. The resulting first mean correction is $-s\gamma c_{n,s}/L$ as claimed. Since $c_{n,s}\ge1$ and $\gamma>0$, the expectation difference is bounded below in absolute value by a positive multiple of $1/L$ for all large $n$. Jensen then gives a matching lower bound on the uniform $L^1$ error; the rate for the explicit target $a_{n,s}$ is sharp as well because its difference from $c_{n,s}$ is polynomially small. This does not identify the coefficient for non-rank-one spectra.

## B. Exact fixed-dimension tail and moment threshold for all inverse powers

Fix $n\ge2$ and a nonscalar real diagonal spectrum, with distinct eigenvalues $\theta_1,\ldots,\theta_d$ of multiplicities $m_1,\ldots,m_d$ (sum $n$). Let $\mathbb F=\mathbb R$ or $\mathbb C$, with real field dimension $\beta=1$ or $2$ respectively, and conjugate by a Haar orthogonal or unitary matrix. For any cut $I$ of size $k$, $1\le k<n$, put $B_I=\max_{i\in I,j\notin I}|H_{ij}|$. Define
$$d_k=\min_{0\le r_i\le m_i,\,r_i\in\mathbb Z,\,\sum r_i=k}\left[k(n-k)-\sum_i r_i(m_i-r_i)\right].$$
Then $\mathbb P(B_I\le\epsilon)=\Theta_{n,\Lambda}(\epsilon^{\beta d_k})$ as $\epsilon\downarrow0$ (constants may depend on $k$ and field). There is an explicit computation of $d_k$: arrange the $n$ numbers $m_i-1,m_i-3,\ldots,1-m_i$ over all groups in decreasing order $g_1\ge\cdots\ge g_n$. Then $d_k=k(n-k)-\sum_{j=1}^k g_j$.

Let $\delta=n-\max_i m_i\ge1$. The minimum of $d_k$ over nontrivial $k$ equals $\delta$. For every fixed $q>0$, the MST cost has a two-sided tail estimate
$$\mathbb P(M_{n,q}>t)=\Theta_{n,\Lambda,q}(t^{-\beta\delta/q})\quad(t\to\infty).$$
For every $p>0$ this gives the exact moment criterion
$$\mathbb E M_{n,q}^{p}<\infty \quad\Longleftrightarrow\quad p q<\beta(n-\max_i m_i).$$
In particular, in the complex case $\mathbb E M_{n,q}$ is finite exactly for $q<2\delta$, and in the real case for $q<\delta$. The criterion is at fixed spectrum and dimension; constants need not be uniform as eigenvalues coalesce, or as dimension grows. The theorem does not claim an unrestricted high-dimensional asymptotic beyond the range of A.

### B.1 Cut geometry and explicit projection rounding

For the cut $I$, let $P_I$ project onto its coordinate subspace and $P=U P_I U^*$, a uniform rank-$k$ orthogonal projection over the field. The cross block of $H=U^*\Lambda U$ is unitarily equivalent to the block $(I-P)\Lambda P$. Its Frobenius norm $F$ satisfies $B_I\le F\le\sqrt{k(n-k)} B_I$. Furthermore $\|[\Lambda,P]\|_F^2=2F^2$ from the orthogonal decomposition into range and kernel of $P$. Its zero set $Z$ is exactly the commuting rank-$k$ projections.

Let $D$ denote block diagonal projection in the orthogonal decomposition into distinct eigenspaces of $\Lambda$, $Q=D(P)$, and $E=P-Q$. Put $e=\|E\|_F$, $g=\min_{a\ne b}|\theta_a-\theta_b|>0$. Since $[\Lambda,P]_{ab}=(\theta_a-\theta_b)P_{ab}$, $e\le \|[\Lambda,P]\|_F/g$. The matrix $Q$ is a Hermitian positive contraction. Applying $D$ to $P^2=P$ shows $Q-Q^2=D(E^2)$: the two mixed products have zero diagonal blocks. Hence $\|Q-Q^2\|_F\le\|E^2\|_F\le e^2$. Round each block of $Q$ spectrally at $1/2$ to obtain a block-diagonal projection $P_0$. For $0\le u\le1$, $|u-\mathbf 1_{u>1/2}|\le2u(1-u)$, so $\|Q-P_0\|_F\le2e^2$. Thus $\|P-P_0\|_F\le e+2e^2$. If $e<1/4$ then this is strictly less than one, also in operator norm. Two orthogonal projections of different ranks have operator-norm distance at least one: a larger range contains a nonzero vector orthogonal to the smaller range. Therefore $P_0$ has rank $k$ and belongs to $Z$. For sufficiently small $F$, distance to $Z$ in the ambient Frobenius norm is at most $C_{\Lambda}F$. Conversely for any $P_0\in Z$, $\|[\Lambda,P]\|_F=\|[\Lambda,P-P_0]\|_F\le2\|\Lambda\|_{op}\|P-P_0\|_F$; the infimum over $P_0$ proves the other inequality. This yields two-sided local linear comparison, without a generic-spectrum or regular-value assumption.

### B.2 Tube volume and all cut exponents

A commuting projection preserves each eigenspace: $P_0$ is precisely the direct sum of projections of ranks $r_i$, $0\le r_i\le m_i$, $\sum r_i=k$. The rank-$k$ Grassmann manifold $G_{\mathbb F}(k,n)$ has real dimension $\beta k(n-k)$, as seen by graph-of-linear-map charts. For each such tuple the commuting locus is a smooth compact embedded product $\prod_i G_{\mathbb F}(r_i,m_i)$ of dimension $\beta\sum_i r_i(m_i-r_i)$. One can see embeddedness directly: in the graph chart around a commuting projection the condition of invariance by every eigenspace projection is exactly that the graph map has only within-eigenspace blocks. Distinct tuples give disjoint compact components. There are finitely many tuples. Uniform Grassmann measure is its normalized invariant smooth Riemannian volume (the Frobenius metric is invariant, and invariant probability is unique). In a smooth chart adapted to an embedded submanifold, the submanifold is a coordinate plane and volume density is bounded above and below on a smaller compact chart. Ambient Frobenius distance and coordinate distance are comparable on that chart. A finite cover of each compact component and a smaller local chart for the lower bound show that the probability of an ambient epsilon tube is bounded above and below by positive constants times $\epsilon^{\mathrm{codim}}$. In the upper bound points sufficiently close to the submanifold lie in the chosen finite larger charts; in the lower bound restrict to a fixed tangential patch and a transverse ball. Taking the finite union gives the smallest codimension, namely $\beta d_k$. B.1 transfers the tube estimate to $F$ and then to $B_I$. No claim about the coefficient or independence of different cuts is needed. This proves the cut-specific exponent for every field, spectrum and cut in the statement.

For computation, $r_i(m_i-r_i)$ is the sum of the first $r_i$ increments in the strictly decreasing list $m_i-1,m_i-3,\ldots,1-m_i$. Selecting the $k$ largest increments globally automatically respects the prefix constraint in every group (ties between different groups may be broken arbitrarily), and no selection of $k$ increments has greater sum. This proves the sorted formula, including all repeated eigenvalues.

### B.3 Smallest codimension is the minimum degree of a multipartite graph

Interpret $c(r)=k(n-k)-\sum_i r_i(m_i-r_i)$ as the number of cut edges in the complete multipartite graph with part sizes $m_i$ and cut having $r_i$ vertices in part $i$. Put $M=\max m_i$, $\delta=n-M$. By complement symmetry take $1\le k\le n/2$. Every vertex has degree at least $\delta$. If $k\le\delta$, at most $k-1$ neighbors of any cut-side vertex lie within that side, so $c(r)\ge k(\delta-k+1)=\delta+(k-1)(\delta-k)\ge\delta$.

If $k>\delta$, then $M=n-\delta>n/2\ge k$ and $n-k\ge k>\delta$. Both sides must contain at least one vertex of a largest part, since there are only $\delta$ vertices outside it. Each of these $\delta$ outside vertices has at least one edge to a vertex of the largest part on the opposite side; these edges are distinct. Thus $c(r)\ge\delta$ also in this case. Equality is achieved by isolating one vertex of a largest part, yielding $d_1=\delta$. This elementary graph property is classical; the contribution is its use as the exact smallest rare-cut exponent, not a new edge-connectivity theorem.

### B.4 Bottleneck-to-total-cost comparison and the moment criterion

Almost surely all couplings are nonzero (conditional sphere law as in v1, with real sphere in the real case). Define $\tau=\min_{\varnothing\ne I\subsetneq[n]} B_I>0$. Every spanning tree crosses the minimizing cut, hence contains an edge of magnitude at most $\tau$ and costs at least $\tau^{-q}$. Conversely the graph retaining edges of magnitude at least $\tau$ is connected: a disconnected component would define a cut all of whose magnitudes are strictly below $\tau$. It has a spanning tree costing at most $(n-1)\tau^{-q}$. Thus $\tau^{-q}\le M_{n,q}\le(n-1)\tau^{-q}$. For fixed $n$, the probability $\mathbb P(\tau\le\epsilon)$ is bounded below by the event for a singleton cut, and above by the sum over all finitely many nontrivial cuts. B.2--B.3 give two-sided constants times $\epsilon^{\beta\delta}$. The bottleneck bounds transfer this to the claimed tail of $M$ (strict vs non-strict thresholds can be adjusted by a fixed factor). Integrating $p\int_0^\infty t^{p-1}\mathbb P(M>t)\,dt$ proves the iff criterion, including divergence at the boundary. In the nonscalar case no $d_k=0$ is possible by B.3. This also shows why checking the inverse moment of one arbitrary matrix entry is insufficient: a tree can avoid isolated small entries, but not a whole weak cut.

## C. Rank-one transition beyond the universal L1 range (complex case)

For $\Lambda=\mathrm{diag}(\lambda,0,\ldots,0)$, $\lambda\ne0$, retain the original normalization $X_{n,q}$. Write $S_n=\sum_i E_i$, $D_n=\max_i E_i$. The exact optimal star gives
$$X_{n,2s}=(1-1/n)^s(S_n/n)^{2s}(\log n/D_n)^s\,\frac1n\left(\sum_i E_i^{-s}-D_n^{-s}\right).$$
For each fixed $s>0$ the prefactor tends to one in probability. The $s<1$ case recovers the v1 limit $\Gamma(1-s)$ (indeed v1 gives L1). At $s=1$, $X_{n,2}/\log n\to1$ in probability. To prove this, $Y=E^{-1}$ has survival function $1-e^{-1/y}\sim 1/y$. Truncate at $u_n=n\log n$: the probability any $Y_i>u_n$ is $O(1/\log n)$, the mean of $Y\mathbf1_{Y\le u_n}$ is asymptotic to $\log n$ by tail integration, and its second moment is $O(u_n)$. The variance of the truncated normalized sum is $O(1/\log n)$. The removed root term tends to zero after normalization.

For $s>1$, set $\alpha=1/s\in(0,1)$. Then $n^{1-s}X_{n,2s}$ converges in distribution to the positive stable law with Laplace transform $\exp[-\Gamma(1-\alpha)t^\alpha]$. Indeed $Y=E^{-s}$ has survival function $1-e^{-y^{-\alpha}}$, and
$$n\,\mathbb E(1-e^{-tY/n^s})=t\int_0^\infty e^{-tx} n(1-e^{-x^{-\alpha}/n})\,dx\to \Gamma(1-\alpha)t^\alpha$$
by dominated convergence with bound $n(1-e^{-x^{-\alpha}/n})\le x^{-\alpha}$. Independence gives the claimed Laplace limit for $n^{-s}\sum Y_i$; the limiting transform is continuous at zero, so the Laplace continuity theorem applies. The prefactor and removed root are handled by Slutsky. At and above the transition the fixed-n mean is infinite by B; no L1 convergence is claimed. This rank-one corollary applies standard heavy-tail limit theory to the exact star and is not an independent discovery of stable laws.
