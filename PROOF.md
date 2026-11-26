# Spectral concentration and reciprocal spanning trees under Haar conjugation

2026-11-26. AI-assisted research manuscript. Authorship and affiliations pending; no independent peer review or academic grade is claimed.

## Main theorem and precise scope
For each n>=2 let Lambda_n be an arbitrary deterministic nonscalar real diagonal n-by-n matrix, U_n Haar unitary, H_n=U_n^* Lambda_n U_n. No bound on the normalized spectral norm, no assumption of distinct eigenvalues, no Gaussian replacement and no coupling across dimensions are required. Center the eigenvalues l_j=lambda_j-mean(lambda), put v_n=(sum l_j^2)/n>0, and order p_{n,j}=l_j^2/(n v_n) decreasingly, padding with zeros. For a fixed q in (0,2), let s=q/2, M_{n,q} be the minimum over spanning trees of sum |H_ij|^{-q}. The edge costs are finite a.s. Define R_i^2=(H^2)_ii-H_ii^2=sum_{j!=i}|H_ij|^2 and c_{n,s}=E[(R_1^2/v_n)^{-s}]. Then

 X_{n,q} = (v_n log n)^s M_{n,q} / n^{1+s},
 sup_{nonscalar real Lambda_n} E|X_{n,q}-c_{n,s}| -> 0.

If p_{n,j}->p_j for each j along a sequence, p_j>=0, sum p_j<=1, then

 X_{n,q} -> C_s(p) in L1,
 C_s(p) = E[(1-sum p_j + sum p_j E_j)^{-s}], E_j iid Exp(1).

This classifies every subsequential normalized limit; every decreasing mass partition p is realizable by a centered spectral sequence. In particular 1<=C_s(p)<=Gamma(1-s); equality at 1 holds exactly for p_j=0 all j, equality at Gamma(1-s) exactly for p=(1,0,...). Hence Gaussian leading constant 1 holds in L1 iff max_j l_j^2/sum l_j^2 ->0. Pure fixed equal spikes of multiplicity r have C_s=r^s Gamma(r-s)/Gamma(r). In the q=1 case this is sqrt(r) Gamma(r-1/2)/Gamma(r), including sqrt(pi) for rank one. The restriction q<2 is sharp for finite means uniformly over all spectra: for rank one and q>=2 the mean MST cost is infinite for each n>=2. These statements are for complex Haar unitary matrices, not real orthogonal matrices.

## 1. Exact finite-dimensional deterministic comparison
On any complete graph on n vertices with finite positive edge weights W_ij=W_ji, write b_i=min_{j!=i}W_ij. Orient any spanning tree toward an arbitrary root r. Each vertex i!=r has exactly one edge to its parent, and each tree edge occurs once. Thus M>=sum_{i!=r}b_i for every root r, and averaging over the n roots gives M>=(1-1/n)sum_i b_i. No independence, degree bound, or connectivity threshold assumption is involved.

For a deterministic hub set K of size k, choose r in K. Join every i outside K to a hub minimizing W_ij, and every j in K\{r} directly to r. This is a connected tree (each outside vertex is a leaf, and the hubs form a star), with cost U_K=sum_{i notin K} min_{j in K} W_ij + sum_{j in K\{r}}W_jr. Thus the two bounds hold for the same realization. All choices can use deterministic tie-breaking.

## 2. Haar rows and an exact expectation sandwich
Condition on column u_i of U. Its remaining columns are a Haar orthonormal basis of u_i^perp, by unitary invariance (equivalently sample an independent Haar basis in that subspace). The vector (H_ji)_{j!=i} consists of the coordinates of (I-u_i u_i^*)Lambda u_i in that basis. Hence conditional on u_i, it is distributed as R_i times a uniform unit vector z in C^{m}, m=n-1. The conditional directional law is independent of u_i and thus of R_i. Since a nonscalar diagonal matrix has only proper eigenspaces, R_i>0 a.s. For m>=1 each coordinate of the uniform sphere is nonzero a.s. All costs therefore finite almost surely. Hermitian symmetry of H makes absolute row and column values identical.

Squared coordinates of z have the distribution (E_1/S_m,...,E_m/S_m), with iid mean-one exponentials and S_m=sum E_j. They are independent of S_m, which is Gamma(m,1), by the gamma-to-simplex change of variables. Define B_{m,k}=max_{j<=k}|z_j|^2, D_k=max_{j<=k} E_j, g_{k,s}=E[D_k^{-s}]. For 0<s<1, all these negative moments are finite, including k=1. Since D_k=S_m B_{m,k},

 f_{m,k,s}:=E[B_{m,k}^{-s}]=Gamma(m)/Gamma(m-s) g_{k,s},
 g_{k,s}=Gamma(1-s) sum_{j=1}^k (-1)^{j-1} binom(k,j) j^s.

The last identity follows by expanding the density k exp(-x)(1-exp(-x))^{k-1}; for numerical evaluation use the positive integral instead of the alternating sum. It applies for m>=k>=1 and 0<s<1 (m=1 gives B=1).

The deterministic bounds and permutation invariance, using only these conditional single-row laws, give the exact finite-n inequalities

 (n-1) E[R_1^{-2s}] f_{m,m,s} <= E[M_{n,q}]
 <= E[R_1^{-2s}] ((n-k) f_{m,k,s}+(k-1) f_{m,1,s}).

Inverse-radius integrability is proved next, so this is an ordinary finite-mean inequality. This sandwich is independent of any spectral regularity. It holds for 1<=k<=n-1; we use k=floor(n/(log n)^2) for large n, clipped to [1,n-1].

## 3. Uniform inverse-radius moments
A Haar column's squared moduli w_j have Dirichlet(1,...,1) law. Writing the centered eigenvalues l_j, the elementary weighted-variance identity gives

 R_i^2=sum_j w_j l_j^2-(sum_j w_j l_j)^2 = sum_{j<k} w_j w_k(l_j-l_k)^2,
 sum_{j<k}(l_j-l_k)^2=n^2 v_n.

Thus R_i^2/v_n is a convex combination of n^2 w_j w_k, j<k, with deterministic weights (l_j-l_k)^2/(n^2 v_n). For any 0<a<1, Jensen's inequality for x^{-a} and the Dirichlet moment integral yield

 E[(R_i^2/v_n)^{-a}] <= n^{-2a} Gamma(n) Gamma(1-a)^2 / Gamma(n-2a).

The expression is finite for every n>=2 and bounded uniformly in n, by the gamma-ratio asymptotic. This includes arbitrarily clustered, spiked, signed or rescaled spectra. For a fixed s<1 choose a with s<a<1; the inverse-s energy variables have a uniform L^{a/s} bound and are uniformly integrable. Also E[R_i^2/v_n]=n/(n+1) by E w_j=1/n, E w_j w_k=(1+1_{j=k})/[n(n+1)] and centering. Jensen gives c_{n,s}>=(1+1/n)^s>0. Uniform integrability does not require bounded spectral norm.

## 4. Row maxima: convergence of negative moments
For k->infinity, D_k/log k->1 in probability: at (1+delta)log k the upper tail is at most k^{-delta}; at (1-delta)log k the lower tail is at most exp(-k^delta). For every fixed b>0 and k>b,

 E[D_k^{-b}]=b integral_0^infty t^{-b-1}(1-exp(-t))^k dt.

For large k split at 1/2 and (log k)/2. The first part is bounded by b(1/2)^{k-b}/(k-b); on the middle part use exp(-sqrt(k)) and integrate t^{-b-1}; on the last part use 1, giving (2/log k)^b. Thus E[D_k^{-b}]=O_b((log k)^{-b}). This controls the singularity at zero without an unproved tail approximation.

For m=n-1, k<=m with log k/log n->1, put Z=(log n/m)^s B_{m,k}^{-s}. Since S_m/m->1 and D_k/log n->1 in probability, Z->1 in probability. The gamma-to-simplex factorization in section 2 (valid also for exponent b when b<m and b<k) and the bound just proved with b=sp, p>1 fixed, give sup E Z^p<infinity (for large m,k>sp). Therefore E|Z-1|->0. For a single coordinate E[B_{m,1}^{-s}]=Gamma(m)Gamma(1-s)/Gamma(m-s)=O_s(m^s).

Define Q_n=(m/log n)^s sum_i R_i^{-2s}. For the lower bound L=(1-1/n)sum_i R_i^{-2s} B_{m,m,i}^{-s}, conditional factorization and triangle inequality imply E|L-Q_n|/E Q_n ->0 uniformly over nonscalar spectra. Indeed each term differs from its radius-only approximation by the dimension-only E|Z-1| and the factor 1-1/n contributes O(1/n). For the hub upper bound, replace each outside minimum by (m/log n)^s R_i^{-2s}; their normalized L1 errors are again E|Z-1|. The missing k radius terms cost a fraction k/n in mean. The hub-star connector terms have expectation at most (k-1) E R_i^{-2s} O_s(m^s), hence fraction O_s((k/n)(log n)^s)=o(1). Here k=floor(n/log^2 n) for large n. Consequently E|U_K-Q_n|/E Q_n->0 uniformly. As L<=M<=U_K, E|M-Q_n|/E Q_n->0. Equivalently,

 sup_Lambda E|X_{n,q} - (m/n)^s n^{-1} sum_i (R_i^2/v_n)^{-s}| ->0,

 using the uniform bound on c_{n,s}. This is an L1 comparison on the actual Haar matrix; no joint row independence is assumed.

## 5. Spectral mass limits and asymptotic independence of two radii
The decreasing weights p_{n,j} sum to 1. Every subsequence has a further coordinatewise convergent subsequence by diagonal compactness; its limit p has sum<=1 by finite partial sums. Assume such convergence. For a single common sequence of iid mean-one exponentials, T_n=sum_j p_{n,j}E_j converges in L2 to T=1+sum_j p_j(E_j-1)=1-sum_j p_j+sum_j p_j E_j. Indeed the first K coefficients converge, while sum_{j>K} p_{n,j}^2<=1/(K+1) uniformly (decreasing order and sum 1), and the same holds for p. Orthogonality of the centered independent exponentials gives the L2 result. The nonnegative sum defining T converges a.s. by its finite expectation; T>0 a.s. (either positive dust, or a positive exponential term). Its mean is 1.

For a Haar column x, write P=diag(p_{n,j}) after permutation of the centered spectrum and x=g/||g|| with independent standard complex Gaussian coordinates. Then

 R(x)^2/v_n = n x^*P x - (x^*diag(l)x)^2/v_n.

The first term is (n/||g||^2) T_n(g), and the correction has expectation 1/(n+1) by the Dirichlet second moments. The radius ratio therefore converges in law to T. We also need a two-column statement, not just the marginal. Take independent g,h in C^n, put x=g/||g|| and y=(h-x a)/||h-x a||, a=x^*h. These are the first two Haar columns. Conditional on x, a has standard complex normal law, so |a|=O_P(1); E x^*P x=1/n and E h^*P h=1, because tr P=1. Cauchy-Schwarz in the positive semidefinite quadratic form yields

 |(h-xa)^*P(h-xa)-h^*P h| <=2|a| sqrt(x^*P x) sqrt(h^*P h)+|a|^2 x^*P x=o_P(1).

 Also ||h-xa||^2/n=(||h||^2-|a|^2)/n->1. Thus n y^*P y is approximated in probability by h^*P h; the analogous statement for x follows from Gaussian norm concentration. The two independent Gaussian weighted sums converge jointly to independent T,T'. Each centered-mean correction tends to zero by the same marginal bound. Therefore (R_1^2/v_n,R_2^2/v_n) converges in law to independent copies of T, even for arbitrary spectral spikes. This is not an assertion that all rows or entries are independent.

## 6. L1 self-averaging and complete classification
Write V_i=(R_i^2/v_n)^{-s}, and fix B>0. The function h_B(t)=min(B,t^{-s}), extended by B at t=0, is bounded continuous. The preceding two-column limit and permutation invariance give convergence of the mean of h_B(R_1^2/v_n), and covariance of the two truncated rows tends to zero. Hence the variance of their empirical mean tends to zero: it equals Var(h_B)/n+(n-1)Cov(h_B(row1),h_B(row2))/n. Uniform integrability from section 3 makes the difference between the full and truncated averages uniformly small in L1 as B->infinity. It also implies c_{n,s}->E T^{-s}. Taking limits in this order gives E|n^{-1}sum_i V_i-C_s(p)|->0. Combining with section 4 proves X_{n,q}->C_s(p) in L1. In particular E|X_{n,q}-c_{n,s}|->0 along each coordinatewise convergent spectral subsequence. If the supremum in the main theorem failed to tend to zero, choose spectra along a subsequence with error bounded away from zero and extract a convergent mass partition subsequence. The result just proved is a contradiction. The asserted convergence is therefore uniform over all nonscalar spectra for fixed q.

Jensen's strict convexity gives C_s(p)>=1, equality iff T is a.s. constant, iff sum p_j^2=0. Applying Jensen instead to the weighted mixture of 1 and independent exponentials gives C_s(p)<=(1-sum p_j)+sum p_j Gamma(1-s)<=Gamma(1-s). Gamma(1-s)>1 by strict Jensen for Exp(1). If dust is positive the upper inequality is strict; if dust is zero and at least two p_j are positive, strict convexity of x^{-s} gives a.s. strict inequality because the two exponentials differ a.s. Countably many weights are handled by Jensen for a probability measure on a countable index set, conditional on the sampled exponentials. This establishes equality exactly at a single full spike. For equal r spikes, T has Gamma(r,1)/r law, giving the stated formula. Tonelli and the gamma integral also give

 C_s(p)=1/Gamma(s) integral_0^infty t^{s-1} exp(-(1-sum p_j)t) product_j (1+p_j t)^{-1} dt.

The product converges at each finite t because sum p_j<=1; finiteness follows already from Jensen. For p=(u,0,...) the function C_s(p) varies continuously from 1 to Gamma(1-s) as u goes from 0 to 1, by dominated convergence (u<=1/2 gives bound 2^s; u>=1/2 gives bound 2^s E_1^{-s}). It is strictly increasing: the function is strictly convex in u by strict convexity almost surely, has its strict minimum at 0, and thus increases on [0,1]. All intermediate constants are attainable.

Every decreasing mass partition p is realizable: let K=floor(sqrt n) (for large n); form a vector with first K entries sqrt(p_j) and remaining n-K entries of equal magnitude sqrt((1-sum_{j<=K}p_j)/(n-K)), using signs with counts differing by at most one. Its squared norm is 1. The squared norm lost by subtracting the mean is at most (sqrt K+1)^2/n=o(1). The change of any entry is o(1), and all tail entries are o(1) uniformly. Thus after centering, normalizing the squared norm and sorting squared magnitudes, each fixed coordinate tends to p_j. This provides actual deterministic nonscalar centered spectra for sufficiently large n; finite initial dimensions may be assigned arbitrarily.

The equivalence between Gaussian leading constant and p_{n,1}->0 follows from subsequence compactness and strictness of the lower endpoint: if p_{n,1} does not vanish, extract a subsequence with p_1>0. The same argument shows the upper endpoint occurs iff p_{n,1}->1. For q>=2 take the rank-one spectrum Lambda=diag(1,0,...,0). H has form z z^* with z a uniform unit vector. Any spanning tree contains an edge incident to a given vertex i, costing at least |z_i|^{-q} (all other amplitudes <=1). |z_i|^2 is Beta(1,n-1); its negative moment of order q/2 diverges. Hence E M_{n,q}=infinity for all n>=2, although M is finite a.s. This proves the universal integrability cutoff sharp. In the same rank-one model the star rooted at a largest |z_i| is exactly optimal by the rooted-edge lower bound; its cost is (sum_i |z_i|^{-q}-|z_*|^{-q})/|z_*|^q.

## 7. Quantum control implication and prior art boundaries
For q=1, the normalized MST lies asymptotically in L1 between the endpoints 1 and sqrt(pi) in the sense that its distance to that interval tends to zero, by compactness and the classification. Consequently M_{n,1}->0 in probability (equivalently E M_{n,1}->0) iff n^{3/2}/sqrt(v_n log n)->0. Necessity for convergence in probability follows by taking a subsequence on which the scale is bounded below and a convergent mass partition, with limit constant >=1. This is a necessary and sufficient criterion for the MST bound to vanish, not for the true optimal control time to vanish. Under the rational independence and isotropy hypotheses of Chambrion--Mendico [1], the deterministic bound tau_SS<=(pi/2)M implies vanishing time whenever the criterion holds.

For lambda_j=j^{3/2}, Riemann sums give v_n/n^3-> integral_0^1 x^3 dx-(integral_0^1 x^{3/2} dx)^2=1/4-4/25=9/100, and max p_{n,j}=O(1/n). Thus sqrt(log n) M_{n,1}->10/3 in L1. This is a corollary, not a priority claim: Vecer's 23 November preprint [3] already derives stronger mean asymptotics under bounded standardized spectra. Theorem 11 and Remark 3 in [1] already use the projected single-coordinate law, the pairwise variance identity and the inverse-square-root Jensen estimate to bound a fixed path cost. Their shape classification (Proposition 26, Proposition 29 and Section 5.1) concerns individual coupling laws and motivates the spectral parameters. Remark 6 anticipates a logarithmic gain in the dominant regime. The main theorem above treats *all* deterministic nonscalar spectra, including p_1>0, gives a full spectral mass-partition classification, uniform L1 self-averaging, and reciprocal powers 0<q<2. For example the centered rank-one spectrum has p_{n,1}=(n-1)/n and normalized mean limit sqrt(pi), contradicting any unrestricted Gaussian universality claim. We do not claim the bounded-spectrum case, classical sphere laws, or gamma/Dirichlet identities as novel. We do not derive a log-power expansion, compare fluctuations, or prove global priority.

References (access 2026-11-26):
[1] T. Chambrion and C. Mendico, Vanishing control times for single-input bilinear quantum systems under rapid drift spectral growth, arXiv:2611.12502v2, https://arxiv.org/abs/2611.12502. Theorem 11, Remark 3, Proposition 26 and Section 5. Text via https://arxiv.cnoctave.top/pdf/2611.12502; screenshot attempt failed.
[2] T. Chambrion and C. Mendico, Numerical investigation of a MST conjecture for random Haar matrices, arXiv:2611.14091v1, https://arxiv.org/abs/2611.14091. Sections 1.2--1.3, Theorem 3, Appendix A. Text via https://arxiv.cnoctave.top/pdf/2611.14091; direct arXiv and screenshot access failed.
[3] J. Vecer, Frieze's zeta(3) and the Avram--Bertsimas constant under Haar conjugation, arXiv:2611.31583, https://arxiv.org/abs/2611.31583. Abstract reports bounded standardized spectrum and stronger reciprocal mean expansion. Direct PDF and HTML, and two PDF mirrors, unavailable; full hypotheses and theorem text not independently obtained. Do not claim exhaustive exclusion of overlap.
[4] Institute for Recursive Self Improvement, Critical Haar MST weight tends to zero, 12 Nov 2026, https://irsi.ai/notes/haar-mst-critical/. Indexed note gives qualitative decay via blocks and inverse-moment bounds, explicitly no logarithmic rate or general spectrum theorem. Full proof link not obtained. AI-developed, not independent human review.
[5] E. S. Meckes, The Random Matrix Theory of the Classical Compact Groups, Cambridge University Press, 2019 (standard Haar frame representation).
