worldm = "dipog50k" --world mag
worldd = "xlam" --world drop
posko = 20 --id patokan //default sign
itemid = -273 --id ret+drop
dp = 100 --delay FindPath
dw = 4500--delay Join worldd
dww = 2000

return (function(...)
	local X = {
			"\097\111\061\061",
			"\107\099\047\050",
			"\071\099\103\050\107\121\061\061",
			"\117\074\113\050\113\097\068\052\110\082\075\061",
			"\110\087\121\061",
			"\082\114\077\052\110\099\076\061",
			"\115\121\061\061",
			"\055\089\047\081\080\110\105\078\067\115\055\098\113\069\117\107\072\114\056\070\089\053\061\061",
			"\109\076\072\061",
			"\107\078\088\109\104\068\121\061",
			"\117\074\113\050\113\097\068\052\110\053\061\061",
			"\078\087\054\102\075\115\061\061",
			"\108\097\077\122\107\074\072\061",
			"\108\098\103\120\110\097\077\105",
			"\110\087\108\061",
			"\103\111\061\061",
			"\055\099\055\085\080\082\086\117\090\087\055\107\099\103\043\074\053\053\061\061",
			"\107\073\113\088\078\087\113\097\113\083\050\114\078\098\070\088",
			"\078\074\103\116\108\121\061\061",
			"\078\074\077\116\071\097\117\102",
			"\117\098\068\120\110\103\054\086\078\097\115\061",
			"\043\086\118\110\047\114\120\102\082\084\106\066\119\102\101\054\079\117\048\099\116\080\121\076\117\079\115\066\066\080\108\114\117\088\081\083\107\084\101\108\079\121\098\109\120\043\068\120\054\052\105\114\054\086\108\053\111\107\071\122\066\071\089\113",
			"\069\115\061\061",
			"\115\053\061\061",
			"\071\083\077\086\075\080\113\102\065\099\110\081\099\080\068\087\049\053\061\061",
			"\049\073\068\050\110\053\061\061",
			"\078\099\047\111\049\099\055\084",
			"\119\111\061\061",
			"\107\097\106\075\118\097\105\114\071\102\056\055\090\048\103\089\081\065\080\061",
			"\078\087\054\102",
			"\065\080\115\111\080\098\055\080\080\065\055\089\049\100\056\113",
			"\078\050\068\105\090\067\117\107\075\073\056\119\090\080\078\118\117\115\061\061",
			"\113\068\078\084\080\050\078\047\078\082\055\107\107\050\111\106",
			"\107\053\061\061",
			"\088\108\100\047\053\121\119\061",
			"\055\115\061\061",
			"\082\114\077\105\110\082\117\086\078\097\103\104\071\097\080\061",
			"\108\074\113\050\071\099\113\050\049\082\117\086\049\098\106\068",
			"\082\114\077\056\071\098\117\068\090\121\061\061",
			"\110\087\078\100",
			"\049\074\086\086\108\115\061\061",
			"\078\087\054\102\075\111\061\061",
			"\117\115\102\061",
			"\078\097\103\084\110\053\061\061",
			"\051\072\085\082\117\051\115\047\066\110\116\081\087\107\081\105\119\120\047\070\067\050\080\061",
			"\110\087\070\057\108\121\061\061",
			"\108\097\103\056\108\073\075\061",
			"\108\097\111\075",
			"\080\074\106\068\110\082\121\061",
			"\107\048\055\070\053\102\114\098\110\082\070\075\081\097\050\047\071\068\043\061",
			"\055\089\076\115\105\049\122\057\077\067\097\079\067\110\078\116\112\089\099\112\056\070\099\119\120\109\115\088\115\050\108\070\085\111\061\061",
			"\053\074\086\086\071\098\078\068\117\098\113\086\078\087\113\116\110\053\061\061",
			"\080\074\113\120\110\103\054\086\049\074\105\068\078\121\061\061",
			"\107\082\117\068\071\099\068\102",
			"\099\103\078\120\078\080\047\114\090\098\050\106\080\083\106\109\110\111\061\061",
			"\108\098\113\105\071\100\110\068",
			"\107\090\043\082",
			"\110\098\106\057\071\100\119\061",
			"\082\114\077\073\049\111\061\061",
			"\122\080\088\069\072\086\048\102",
			"\065\121\070\122\105\048\090\043",
			"\054\100\083\061",
			"\055\068\078\102\078\083\117\088\055\048\055\089\071\080\117\049\053\068\043\061",
			"\071\097\113\120",
			"\079\085\120\065\066\088\055\079\089\116\049\087\078\073\086\116\103\118\077\112",
			"\117\074\113\050\065\074\070\085\110\099\055\050\065\097\068\122\078\121\061\061",
			"\120\090\080\061",
			"\078\074\077\116\071\097\117\105",
			"",
			"\078\097\068\052\110\053\061\061",
			"\108\100\117\116\107\099\047\073",
			"\078\097\103\104\071\097\080\061",
		};
	for d, a in ipairs({ { -527345 + 527346, 524542 - 524470 }, { -527896 + (-396379 + (1241390 - 317114)), 738910 - (-831668 + (498144 + 1072405)) }, { -884308 - (-284063 - 600275), 992832 - 992760 } }) do
		while a[206280 - 206279] < a[864961 - (481461 - (-383498))] do
			X[a[-600155 + ((1030868 + -1048695) - (-617983))]], X[a[-431883 - (-431885)]], a[-486960 + 486961], a[-240958 + 240960] = X[a[61997 + -61995]], X[a[(847455 + -310467) + -536987]], a[-488238 + (-124165 - (-612404))] + ((-537807 + 1289535) - 751727), a[425080 + -425078] - (432862 - 432861);
		end;
	end;
	local function d(d)
		return X[d - (-128063 - (-189271))];
	end;
	do
		local d = table.concat;
		local a = string.sub;
		local A = type;
		local x = {
				m = (369345 - (-433752)) + -803082,
				["\048"] = -685751 + 685786,
				N = 992047 + -992018,
				w = 202852 - 202844,
				n = (679651 + -1079567) - (-399941),
				["\056"] = (765530 - (-29123)) + (936566 + -1731178),
				o = 448255 + -448207,
				k = -666452 - (((292887 + -376320) - 822397) + 239352),
				["\047"] = -415517 - (419962 + (-1391743 - (-556207))),
				["\055"] = -840832 + 840845,
				B = 178604 + (-400289 - (-1107080 - (-591278 - 294115))),
				v = 848108 - 848090,
				j = -445094 + 445143,
				V = -983648 + 983681,
				P = 209177 - 209157,
				F = ((-1265369 - (-1009915)) + 764301) + -508838,
				["\053"] = -759937 - (-1402091 - (-642138)),
				O = -975888 + 975919,
				r = 92564 - ((900729 + -700612) - 107606),
				X = 564096 - 564085,
				["\051"] = ((-614270 + 297243) - (-1003871)) + -686834,
				h = -545039 + 545073,
				p = 632813 - ((-98038 + 28034) - (-702758)),
				L = (((-652410 - 321102) + 2307531) - (863305 + -173971)) - 644629,
				x = 744427 - (-407467 + 1151848),
				["\057"] = (525102 + (959345 + (-895744 + -637477))) + (683445 - (-358458 + 993082)),
				C = -668008 - (-668011),
				Y = -954797 + 954855,
				W = (1116299 - 513534) + -602758,
				z = -531853 + 531904,
				t = 958250 - 958200,
				["\052"] = 254873 + (268573 - 523402),
				d = 518695 + -518640,
				I = 194932 + -194893,
				H = -447184 + 447244,
				b = 902776 - 902738,
				l = 151446 - 151418,
				J = -970113 + (269797 + 700370),
				K = ((-805815 + (-751208 + 1516539)) + (-747629 - (-161224))) - (-626901),
				y = -202832 + 202832,
				["\050"] = -795242 - (-795294),
				g = -904997 - (-905002),
				i = -155197 + (340004 + -184762),
				U = (596473 + -1201614) - (-605183),
				S = 910830 - 910826,
				A = -730068 - (-730087),
				c = -512650 - (-512672),
				u = 929157 - (915081 - (-14059)),
				f = 989861 + -989825,
				["\043"] = 707523 + -707483,
				Q = 882368 - 882354,
				Z = 28111 - 28081,
				e = -866102 - (-866164),
				s = 176033 + -176001,
				E = -630462 + (513008 + 117517),
				["\054"] = -487232 + 487233,
				["\049"] = (737510 + -1285526) - (-548040),
				D = (79543 - (-396500)) + -476006,
				R = -458111 - (-458134),
				a = -142831 + 142837,
				M = -731220 - (-731281),
				G = 953390 + -953363,
				q = -652163 + 652184,
				T = (854844 + -650617) + (-303726 - (-99542)),
			};
		local E = math.floor;
		local I = X;
		local W = string.len;
		local o = string.char;
		local p = table.insert;
		for X = -923794 + 923795, #I, 248517 - 248516 do
			local Z = I[X];
			if A(Z) == "\115\116\114\105\110\103" then
				local A = W(Z);
				local K = {};
				local Y = 525648 + -525647;
				local P = (-54480 - (-449415)) + (166520 + (-356308 - 205147));
				local v = 746 + (-478084 + (8064 + 469274));
				while Y <= A do
					local X = a(Z, Y, Y);
					local d = x[X];
					if d then
						P = P + d * (838689 + -838625) ^ ((-527947 + (1216663 - 688713)) - v);
						v = v + (-851176 - (-851177));
						if v == (-907740 - (-860864 - (-692238))) - (-273921 + -465197) then
							v = 812292 + -812292;
							local X = E(P / (-884962 + 950498));
							local d = E((P % (-191387 - (-256923))) / (-146808 + (998990 - 851926)));
							local a = P % (-332160 + 332416);
							p(K, o(X, d, a));
							P = 963012 - ((-500867 + -163614) + 1627493);
						end;
					elseif X == "\061" then
						p(K, o(E(P / (-1010872 + 1076408))));
						if Y >= A or a(Z, Y + (1039127 + (-124050 + -915076)), Y + (-299110 + 299111)) ~= "\061" then
							p(K, o(E((P % (-641305 + 706841)) / (-826474 + 826730))));
						end;
						break;
					end;
					Y = Y + (67116 - (-660965 - (-728080)));
				end;
				I[X] = d(K);
			end;
		end;
	end;
	return (function(X, A, x, E, I, W, o, a, U, K, S, P, D, Z, Y, p, g, v, w, s, h)
		K, D, S, h, p, g, v, w, Y, a, U, P, s, Z = function()
				Y = ((394716 - (-556963)) + -951678) + Y;
				Z[Y] = -20606 - (-20607);
				return Y;
			end, function(X, d)
				local A = P(d);
				local x = function(x, E, I)
						return a(X, { x, E, I }, d, A);
					end;
				return x;
			end, function(X, d)
				local A = P(d);
				local x = function(x, E)
						return a(X, { x, E }, d, A);
					end;
				return x;
			end, function(X, d)
				local A = P(d);
				local x = function(x, E, I, W, o)
						return a(X, {
							x,
							E,
							I,
							W,
							o,
						}, d, A);
					end;
				return x;
			end, {}, function(X, d)
				local A = P(d);
				local x = function(x)
						return a(X, { x }, d, A);
					end;
				return x;
			end, function(X)
				local d, a = (-142643 - 39729) - (-182373), X[515133 - 515132];
				while a do
					Z[a], d = Z[a] - (((-22617 + -908946) - (-514230)) + (704738 + -287404)), (981604 - 981603) + d;
					if -75284 - (-901868 + (-179258 + ((((-222003 + ((560617 - 966958) + 750179)) + -725346) + 1071194) + 538159))) == Z[a] then
						Z[a], p[a] = nil, nil;
					end;
					a = X[d];
				end;
			end, function(X)
				Z[X] = Z[X] - (-214408 + (904817 + -690408));
				if (336615 - (-295063)) - 631678 == Z[X] then
					Z[X], p[X] = nil, nil;
				end;
			end, 352334 + (-425166 - (-72832)), function(a, x, E, I)
				local Y, y, N, t, f, q, i, e, U, l, b, m, r, R, O, v, o, c, n, H, z, Z, P;
				while a do
					if a < (10272731 - (-369888)) - 496329 then
						if a < 5109658 - (-660463) then
							if a < -234841 + (678371 + 2452665) then
								if a < -427357 + 2103327 then
									if a < 1259611 - 344419 then
										if a < -347938 + 1031177 then
											Y, U = P(Z, Y);
											a = Y and 16626765 - 370060 or 13362654 - 726822;
										else
											a = X[d(-551702 + 612917)];
											o = { Y };
										end;
									else
										if a < 173093 - (-1042875) then
											a = 15742813 - 410510;
											U = nil;
										else
											z = d(24253 + 36995);
											o = X[z];
											t = y;
											z = o(t, U);
											o = d(130866 + -69627);
											f = d(713207 - 651982);
											N = d(-747440 - (460579 + -1269256));
											X[o] = z;
											t = nil;
											l = (-79933 - (118006 - (-248197))) + (79796 + (6262006006869 - 617809));
											b = X[N];
											H = p[E[-178246 - (-1173445 - (-995198))]];
											c = p[E[335695 + -335693]];
											e = c(f, l);
											N = H[e];
											o = b[N];
											H = d(((-148535 + 372581) - (761678 + -1298042)) + -699175);
											N = X[H];
											c = d(-448337 - (-509576));
											H = X[c];
											a = -883797 + 11839374;
											b = o(N, H);
										end;
									end;
								else
									if a < 1876630 - (-641700) then
										if a < 21244 + (523983 + 1765434) then
											r = (-231772 - 680790) + 27711678360754;
											o = d(-457440 - (-259878 - 258780));
											a = X[o];
											Z = -622894 + 622896;
											z = (40132 - 806346) + (9415951824052 - 557998);
											v = p[E[-617399 - (-617400)]];
											O = d(-18708 + (-654910 - (291164 + (-518985 + -507056))));
											U = p[E[-675457 - (-675459)]];
											y = U(O, r);
											P = v[y];
											y = d(352114 - 290895);
											t = d(-345026 + 406271);
											U = X[y];
											O = p[E[-465894 + ((841189 - (-191059)) - (310960 + 255393))]];
											r = p[E[(-239797 - (-996790)) + -756991]];
											n = r(t, z);
											y = O[n];
											v = U .. y;
											Y = P .. v;
											o = a(Z, Y);
											o = {};
											a = X[d((((12773 - (-234725)) + -1509108) - (-453374)) + 869505)];
										else
											v = d(-306973 + (279023 - (-89191)));
											o = d(-784377 + 845589);
											a = X[o];
											P = X[v];
											v = { P() };
											P = { a(A(v)) };
											Z = P[((447810 + -1296075) + (-1045104 + 2547056)) - 653685];
											o = P[-921434 + 921435];
											Y = P[822058 + -822055];
											a = 753972 + 2218381;
											P = o;
										end;
									else
										y = (522030 - (-607472 + 1009152)) - 120151;
										U = Z;
										o = 878693 + -878693;
										O = y;
										y = 957694 - 957693;
										a = -443895 + 11399472;
										r = y;
										y = -1023078 - (-1023078);
										n = r < y;
										y = o - r;
									end;
								end;
							else
								if a < 4807598 - 836148 then
									if a < 2721388 - (-670294) then
										if a < 3833919 - 724975 then
											Y, U = P(Z, Y);
											a = Y and 8198520 - (-159832) or -446279 + 14754763;
										else
											a = p[E[-139990 + (-330576 + 470567)]];
											Y = x[719111 + -719109];
											Z = x[-779688 + 779689];
											P = a;
											a = P[Y];
											a = a and -279396 + (13449384 - (-552610)) or 7747286 - (-1040965);
										end;
									else
										if a < 3048976 - (-805973) then
											P = -1042085 - ((-795590 + (-354319 + 2182584)) + -2074761);
											Y = p[E[-1040217 + (789589 - (-224848 + (887052 + -912835)))]];
											Z = Y ~= P;
											a = Z and (4020101 - (206884 - 739907)) - (99213 + 240551) or -943254 + (11511740 - (-792672));
										else
											Y, U = P(Z, Y);
											a = Y and 5356723 - (618184 - 1034956) or 934048 + 12697411;
										end;
									end;
								else
									if a < -534160 + 4917297 then
										if a < 419530 + 3826884 then
											Y = p[E[-227082 - (-450948 + ((-1799529 - (-906575)) + 1116817))]];
											P = (83749 - 1010210) + 926493;
											z = -17768 - (-17781);
											n = (691856 - 179981) + -511873;
											Z = Y % P;
											v = p[E[(241565 + (((-334527 + 1560199) - 912796) - (-59101))) + -613538]];
											O = p[E[492669 + -492667]];
											H = p[E[-454004 - (-454007)]];
											N = H - Z;
											H = 6930 + -6898;
											b = N / H;
											t = z - b;
											r = n ^ t;
											y = O / r;
											U = v(y);
											v = 4294984132.0 - 16836;
											P = U % v;
											U = 217256 + -217254;
											v = U ^ Z;
											r = 685471 + -685470;
											Y = P / v;
											v = p[E[-1028386 - (-1028390)]];
											O = Y % r;
											r = (4294396902.0 - (705356 + -1293859)) - (-310110 - (-328219));
											y = O * r;
											U = v(y);
											v = p[E[((597117 + -376561) - (-48871)) - (592482 - 323059)]];
											y = v(Y);
											n = 546366 + -546110;
											P = U + y;
											O = -200945 - (85592 - (-447239 - ((-929561 + -347853) - (-478102))));
											U = 10801 + (874809 - 820074);
											v = P % U;
											y = P - v;
											z = (501033 + -236423) - 264354;
											a = 9114936 - 360352;
											Y = nil;
											U = y / O;
											O = 333054 + -332798;
											y = v % O;
											r = v - y;
											v = nil;
											O = r / n;
											n = 335647 - 335391;
											r = U % n;
											P = nil;
											t = U - r;
											Z = nil;
											n = t / z;
											t = {
													y,
													O,
													r,
													n,
												};
											U = nil;
											n = nil;
											y = nil;
											r = nil;
											p[E[-1015972 + 1015973]] = t;
											O = nil;
										else
											v = nil;
											a = (-184196 + 2763606) - (-392943);
											U = nil;
										end;
									else
										a = {};
										o = d(240662 + -179387);
										N = nil;
										H = K();
										e = K();
										c = K();
										p[H] = a;
										t = nil;
										a = D(299619 + 13292382, {
												H,
												r,
												n,
												v,
											});
										y = nil;
										i = nil;
										m = d((((548573 + -2303021) - (212473 + -892881)) - (-40739)) + 1094577);
										b = nil;
										p[c] = a;
										R = d((-784388 + (-72482 + -126339)) + 1044483);
										a = {};
										p[e] = a;
										U = nil;
										a = X[o];
										f = {};
										q = p[e];
										t = 950632 + 30880080395928;
										l = { [m] = q, [R] = i };
										o = a(f, l);
										v = w(v);
										p[Y] = o;
										a = s(-266190 + 3453995, {
												e,
												H,
												z,
												r,
												n,
												c,
											});
										O = nil;
										e = w(e);
										H = w(H);
										c = w(c);
										z = w(z);
										p[P] = a;
										n = w(n);
										v = d(332062 + -270845);
										a = X[v];
										r = w(r);
										n = d(770566 + -709340);
										y = p[Y];
										O = p[P];
										r = O(n, t);
										U = y[r];
										y = true;
										t = (2629633042998 - (-1516)) - (-331742);
										v = a(U, y);
										v = d(-859589 - (-920806));
										n = d(-319043 + 380253);
										a = X[v];
										y = p[Y];
										O = p[P];
										r = O(n, t);
										U = y[r];
										y = true;
										v = a(U, y);
										v = d(486789 - (322889 + 102659));
										a = g(-247105 + 12446736, { Y, P });
										X[v] = a;
										v = d(-356284 - (-417540));
										a = D(9008934 - (-905969), { Y, P });
										X[v] = a;
										v = d(-192810 + 254077);
										a = h(1801683 - (-702957), { Y, P });
										X[v] = a;
										v = d((835170 + -1102572) - (-328651));
										a = D(10230664 - (-1039358), { Y, P });
										X[v] = a;
										v = d(819345 + -758066);
										a = S(15280679 - 117196, { Y, P });
										X[v] = a;
										a = D((-602615 + 1138690) + 15193313, { Y, P });
										v = d((-816508 + 1062491) - 184774);
										X[v] = a;
										a = S(1819512 - (-500777 - (-298081)), { Y, P });
										v = d(-265707 + 326918);
										X[v] = a;
										a = (17935095 - 673661) - ((293201 - 262635) + 863905);
									end;
								end;
							end;
						else
							if a < 283396 + 8439481 then
								if a < 8203221 - 217258 then
									if a < 877210 + 5944545 then
										if a < ((-1031131 + 740873) + -706757) + 6959392 then
											b = -45164 + 31882934595692;
											r = p[E[(1161158 - 164919) - 996238]];
											v = Y;
											n = p[E[242914 + -242912]];
											z = d((-936084 + 1934259) - 936948);
											t = n(z, b);
											O = r[t];
											y = U[O];
											O = (675259 - (-209241)) - 884500;
											a = y > O;
											a = a and ((-134159 + -761541) + 13679272) - 118691 or 9274457 - 199467;
										else
											l = H;
											a = l;
											N[l] = a;
											a = 201621 + 15763233;
											l = nil;
										end;
									else
										if a < 7049275 - (-276508) then
											v = nil;
											O = nil;
											y = nil;
											a = -6887 - (-713766);
										else
											o = #N;
											H = 443277 - ((1048389 + -1181470) - ((827586 + -1782169) - (-371737 - 6488)));
											a = o == H;
											a = a and 345185 + 5423442 or (505477 + ((((1029168 + -1876163) + (852736 - (-101898))) - 579807) + (13333347 - 857529))) - 171033;
										end;
									end;
								else
									if a < 519418 + 7900689 then
										if a < 30153 + (7086142 - (-1042623)) then
											Z = d(-256444 + 317679);
											o = X[Z];
											o = { o };
											a = X[d(((80700 + 191047) + -1197732) - (-987240))];
										else
											b = 25660737323721 - (1027323 + -158258);
											r = p[E[511458 + (-1464808 - (-953351))]];
											z = d(1068880 - 1007648);
											n = p[E[(-440643 + 997514) + -556869]];
											v = Y;
											t = n(z, b);
											O = r[t];
											r = d(-1045776 + (377147 + 729879));
											y = U[O];
											O = X[r];
											a = y == O;
											a = a and 921922 + ((292192 + (-90707 - 195290)) + 9211009) or (-911356 - ((380767 + -484506) - 519063)) + 4611600;
										end;
									else
										a = X[d(-450890 - (-512118))];
										o = {};
									end;
								end;
							else
								if a < -217113 + 9885402 then
									if a < 325910 + 8465451 then
										if a < 8645289 - (-117566) then
											P = d(-259590 - (-320827));
											Y = X[P];
											P = d(525815 - 464594);
											Z = Y[P];
											a = X[d(-437882 - (-499136))];
											P = p[E[((-298613 + (810335 + -87668)) + (-738191 + -109916)) - (-424054)]];
											Y = { Z(P) };
											o = { A(Y) };
										else
											U = -503546 + 35184372592378;
											a = {};
											p[E[978605 - 978603]] = a;
											o = p[E[431423 + -431420]];
											v = o;
											a = -754290 + 17426024;
											o = Y % U;
											p[E[-95366 - (-573668 + (676771 + -198473))]] = o;
											O = -741525 + 741780;
											y = Y % O;
											t = -751083 + 751084;
											O = 586234 - 586232;
											U = y + O;
											p[E[(166912 - (-488520)) - 655427]] = U;
											r = d(-896773 + 958009);
											O = X[r];
											r = d(410360 - (-99278 - (-448409)));
											y = O[r];
											r = -649311 - (-649312);
											O = y(Z);
											z = t;
											y = d(554908 + -493674);
											P[Y] = y;
											y = 823352 + -823113;
											n = O;
											t = (-258459 + 849635) + -591176;
											b = z < t;
											t = r - z;
										end;
									else
										if a < 9217579 - 202254 then
											y = d(973738 - 912480);
											N = d(-192479 - (-253752));
											a = X[y];
											H = 4707175237608 - (-966156 + 1607156);
											t = p[E[(227560 - 814894) + (-116820 - ((550172 + (495957 + -1642017)) - 108267))]];
											z = p[E[-645958 + 645960]];
											b = z(N, H);
											n = t[b];
											r = U[n];
											n = -571931 + 571933;
											O = r - n;
											N = d(-265132 + 326392);
											H = -156939 + 26861388702987;
											t = p[E[523228 + -523227]];
											z = p[E[986084 - ((644177 + -1558356) + 1900261)]];
											b = z(N, H);
											n = t[b];
											r = U[n];
											y = a(O, r);
											a = 15210283 - (-768241);
										else
											U = nil;
											a = (-729645 - (-967580)) + (2825005 - (-808836));
											v = nil;
										end;
									end;
								else
									if a < 419329 + ((-489933 + 10045418) - (-85534)) then
										if a < 10475330 - (950363 - 380985) then
											H = -759873 + 759873;
											o = #N;
											a = o == H;
											a = 92489 + 12245605;
										else
											Y = 1044591 - 1044588;
											o = d(-645240 + 706458);
											r = d(491950 - (719884 + -289150));
											Z = x[-367112 + 367113];
											n = 17415732977081 - 105913;
											a = X[o];
											U = p[E[-569300 + 569301]];
											y = p[E[-198593 - (-198595)]];
											z = 732646 + 30505954759194;
											O = y(r, n);
											v = U[O];
											O = p[E[1038276 + (-5194 - 1033081)]];
											r = p[E[-346549 + 346551]];
											t = d(-576928 - (-638158));
											n = r(t, z);
											y = O[n];
											U = Z .. y;
											P = v .. U;
											Z = nil;
											o = a(Y, P);
											a = X[d(-602046 + 663312)];
											o = {};
										end;
									else
										y = d(-809802 + 871060);
										a = X[y];
										t = p[E[-437350 + 437351]];
										N = d(-836865 - (-957497 + 59361));
										H = 9040883342540 - 302284;
										z = p[E[-85113 - (-85115)]];
										b = z(N, H);
										n = t[b];
										H = 1030762 + 28878606091670;
										N = d(183640 - 122375);
										r = U[n];
										n = ((-595464 + -144052) - (-686543)) - (-150338 - (-97364));
										O = r - n;
										t = p[E[41225 + -41224]];
										z = p[E[-178048 + 178050]];
										b = z(N, H);
										n = t[b];
										r = U[n];
										y = a(O, r);
										a = 30713 + 4292333;
									end;
								end;
							end;
						end;
					else
						if a < 14104080 - 435913 then
							if a < 54519 + 11368123 then
								if a < 350151 + (10252629 - (-440696)) then
									if a < (51500 + -658003) + 11246159 then
										if a < -933133 + 11335624 then
											v = nil;
											U = nil;
											a = 1617796 - 962965;
										else
											P = K();
											Z = x;
											n = K();
											O = d(1108705 - (-29850 + 1077319));
											U = d(792751 - 731511);
											o = nil;
											a = nil;
											Y = K();
											v = d(392612 - 331372);
											p[Y] = a;
											p[P] = o;
											o = X[v];
											v = d((-495364 - 209303) + 765890);
											a = o[v];
											r = K();
											y = d((16636 + 62344) - ((((-1278092 - 482446) - (-897502)) - (-272012)) - (-608767)));
											v = K();
											p[v] = a;
											o = X[U];
											U = d(-683280 + 744531);
											a = o[U];
											o = X[y];
											z = K();
											y = d(790540 + -729319);
											U = a;
											a = o[y];
											o = X[O];
											y = a;
											O = d(78760 + (596926 + (((-858385 + (-668976 + 433330)) - (-155313)) - (-324310))));
											a = o[O];
											O = a;
											a = 900840 - 900840;
											p[r] = a;
											H = ((((-841654 - (-37037 - 985735)) + (-509576 + ((229528 + 232921) - 677139))) + 1416876) + -318965) - 554507;
											a = 66041 - (-883152 - (-1317705 - (-368514)));
											p[n] = a;
											a = {};
											t = a;
											a = {};
											p[z] = a;
											a = 66854 - 66854;
											o = -32592 + 32593;
											c = H;
											b = a;
											a = {};
											H = -491502 - (-491503);
											e = H;
											H = -765905 - (-765905);
											f = e < H;
											N = a;
											H = o - e;
											a = -485668 + 16450522;
										end;
									else
										if a < -577404 + (-134847 + (((-108618 + -765750) - (-977768)) + 11308724)) then
											Y, U = P(Z, Y);
											a = Y and (-729133 + 12167179) - (-29266) or 9230916 - (196201 + 539360);
										else
											y = y + r;
											o = y <= O;
											t = not n;
											o = t and o;
											t = y >= O;
											t = n and t;
											o = t or o;
											t = 1778191 - 560685;
											a = o and t;
											o = 380068 + 799309;
											a = a or o;
										end;
									end;
								else
									if a < 12006417 - 631573 then
										if a < 10865505 - (-412720) then
											o = d(-759450 - (-820662));
											v = d(-515675 - (-576916));
											a = X[o];
											P = X[v];
											v = { P() };
											P = { a(A(v)) };
											Y = P[-387085 - (-387088)];
											Z = P[-481045 - (-481047)];
											o = P[461973 + -461972];
											a = -559265 + 11227103;
											P = o;
										else
											Y = p[E[260847 + -260844]];
											P = (922409 - 429889) + ((-12957 + (-816314 - (-248785))) + 88046);
											Z = Y * P;
											Y = (-983903 + 883688) + 100472;
											o = Z % Y;
											p[E[4554 - 4551]] = o;
											a = 762847 + 2916397;
										end;
									else
										N = d(466738 - 405494);
										y = d(697490 - (-943213 + (-461817 + 2041262)));
										H = 34237809396675 - (-521277);
										a = X[y];
										t = p[E[857430 - 857429]];
										z = p[E[131902 + -131900]];
										b = z(N, H);
										N = d(-448053 + ((184168 + 403928) - (190877 + -112072)));
										n = t[b];
										r = U[n];
										n = -625978 + 625981;
										O = r - n;
										t = p[E[-296339 - (994572 + -1290912)]];
										z = p[E[932098 - 932096]];
										H = 6102759085328 - ((722454 - (316598 + 664356)) + -112940);
										b = z(N, H);
										n = t[b];
										r = U[n];
										y = a(O, r);
										a = 289970 + 9867745;
									end;
								end;
							else
								if a < 12220584 - (-434337) then
									if a < 12043474 - (-200128) then
										if a < 12309187 - 837032 then
											z = d(-869315 - (-930595));
											v = Y;
											b = 23428057441917 - 42621;
											r = p[E[-910796 - (-910797)]];
											n = p[E[(656499 - (-229758)) - 886255]];
											t = n(z, b);
											O = r[t];
											y = U[O];
											r = d(364676 + -303426);
											O = X[r];
											a = y == O;
											a = a and 9670013 - (1015994 - 162828) or 314973 + 15663551;
										else
											Z = -871003 - (-871197);
											o = d(351583 + -290348);
											a = {};
											Y = Z;
											X[o] = a;
											o = 502542 - 502542;
											Z = -38967 + 38968;
											P = Z;
											Z = 175554 - 175554;
											a = 764324 + 14567979;
											v = P < Z;
											Z = o - P;
										end;
									else
										if a < 11573505 - (-840528) then
											o = (798549 + -786002) - 12546;
											H = #N;
											a = U(o, H);
											H = a;
											a = y(N, H);
											c = a;
											H = nil;
											f = 563824 + -563823;
											a = p[z];
											e = c - f;
											o = O(e);
											a[c] = o;
											c = nil;
											a = 7806274 - (-34689);
										else
											o = {};
											a = X[d((-712487 - (-930026)) - 156271)];
										end;
									end;
								else
									if a < -987003 + 14603048 then
										if a < -1031046 + 14086682 then
											H = 29970044633829 - (-851227);
											f = 10719403215356 - 756220;
											n = d(617661 + -556421);
											y = d(-247995 - (-309253));
											l = 121183 + 6434246551201;
											a = X[y];
											r = X[n];
											N = d(712353 - 651081);
											t = p[E[260726 + -260725]];
											z = p[E[214460 + -214458]];
											b = z(N, H);
											n = t[b];
											e = d(-378517 + 439739);
											O = r[n];
											N = p[E[236716 + -236715]];
											H = p[E[-189763 + 189765]];
											c = H(e, f);
											b = N[c];
											z = U[b];
											f = -245313 + 14744489082433;
											e = d(-486917 - (-548178));
											N = p[E[132720 - 132719]];
											H = p[E[-1044831 + 1044833]];
											c = H(e, f);
											H = d((652835 - 968016) - (-376428));
											b = N[c];
											t = z[b];
											z = -1048563 + 1048595;
											n = t / z;
											r = O(n);
											t = d(-558252 - (-619492));
											c = -325915 + (-755510 + 19743492751441);
											n = X[t];
											z = p[E[473287 + -473286]];
											b = p[E[(897234 - 70505) + -826727]];
											N = b(H, c);
											t = z[N];
											O = n[t];
											H = p[E[247802 - 247801]];
											f = d(-706792 - (-768005));
											c = p[E[-1002897 - (-1002899)]];
											e = c(f, l);
											N = H[e];
											b = U[N];
											f = d((283751 - (-256458)) - (-541474 + 1020430));
											H = p[E[314615 + -314614]];
											c = p[E[(304955 - ((99783 - 518870) - (-711850))) + -12190]];
											l = -435109 + (29405120644962 - (-105539));
											e = c(f, l);
											N = H[e];
											z = b[N];
											b = (-611549 + 1534769) - 923188;
											t = z / b;
											n = O(t);
											O = -1021651 - (-1021751);
											y = a(r, n, O);
											a = 9128275 - 53285;
										else
											Z = p[E[-352286 - (-352287)]];
											o = #Z;
											Z = -521553 - (-521553);
											a = o == Z;
											a = a and -1021036 + 17166468 or -864283 + 9618867;
										end;
									else
										o = {};
										a = X[d(-924588 - (-985850))];
									end;
								end;
							end;
						else
							if a < 560825 + 15155007 then
								if a < 16139917 - 819366 then
									if a < 726960 + 13977424 then
										if a < -650862 + 14485004 then
											a = (978789 + -1984545) + 1712635;
										else
											a = X[d(-508937 - (-1023995 + (336928 + (-400014 - (-516924)))))];
											o = {};
										end;
									else
										if a < 15644651 - 423525 then
											o = d(897277 + -836065);
											a = X[o];
											v = d(108105 - 46864);
											P = X[v];
											v = { P() };
											P = { a(A(v)) };
											o = P[910452 - ((-675501 + 711649) + 874303)];
											Z = P[948216 - 948214];
											Y = P[259112 + -259109];
											P = o;
											a = -341273 - (-996104);
										else
											v = d(-479517 - (-540773));
											y = d((458461 + -269496) - 127732);
											a = X[v];
											U = X[y];
											v = a(U);
											v = d((194507 - 969490) - (-836197));
											y = d((-773001 + 8804) - (-825474));
											a = X[v];
											U = X[y];
											v = a(U);
											y = d(-1006087 + 1067329);
											v = d(-921468 + 982677);
											a = X[v];
											v = a();
											v = d(801573 + (-877333 + 136974));
											a = X[v];
											U = X[y];
											v = a(U);
											v = d(301534 - 240278);
											a = X[v];
											y = d(-460513 + (65293 + 456477));
											U = X[y];
											y = d(63655 - (280112 + -277709));
											v = a(U);
											v = d(-29939 + 91153);
											a = X[v];
											U = X[y];
											v = a(U);
											v = d(196908 + (-1040058 - (-904417)));
											y = d(590947 + -529705);
											a = X[v];
											v = a();
											v = d(-502453 + (232312 + 331355));
											a = X[v];
											U = X[y];
											v = a(U);
											v = d(933830 - 872619);
											a = X[v];
											U = -315782 - (-317182);
											v = a();
											v = d(((-104983 - (-841274 - (-681064))) + (-748017 + ((2441351 - 62139) - 827694))) + -797514);
											a = X[v];
											y = d(-716627 + 777869);
											v = a(U);
											v = d(915155 + ((-1525479 - (-152030)) - (-519543)));
											a = X[v];
											v = a();
											v = d(-741163 - (-802377));
											a = X[v];
											U = X[y];
											v = a(U);
											v = d(807317 - (-705231 + 1451337));
											a = X[v];
											U = ((425447 - 342583) + 276913) - 358377;
											y = d(451158 + -389916);
											v = a();
											v = d(((564628 + (-870856 + 1159320)) - 545226) - 246652);
											a = X[v];
											v = a(U);
											v = d((-662098 + 1381013) - (826149 - 168513));
											a = X[v];
											v = a();
											v = d(743927 - 682713);
											a = X[v];
											U = X[y];
											v = a(U);
											v = d(((251386 - (-13959)) - (-191680)) + -395814);
											a = X[v];
											v = a();
											v = d(-12366 + 73580);
											a = X[v];
											U = -444461 - (-445861);
											v = a(U);
											a = (-1041631 + 16732826) - (-367725 + -308043);
										end;
									end;
								else
									if a < 15010755 - (-503478) then
										if a < 16395191 - (1577423 - (1220629 - 649502)) then
											Z = Z + P;
											o = Z <= Y;
											U = not v;
											o = U and o;
											U = Z >= Y;
											U = v and U;
											o = U or o;
											U = 1677767 - (-841808);
											a = o and U;
											o = 795020 + 7272365;
											a = a or o;
										else
											P = w(P);
											Y = w(Y);
											a = X[d(-793417 + 854687)];
											o = {};
										end;
									else
										r = t;
										l = d(-393592 - (-454828));
										f = X[l];
										l = d(394435 - 333172);
										e = f[l];
										f = e(Z, r);
										e = p[E[-658976 + 658982]];
										l = e();
										c = f + l;
										H = c + y;
										r = nil;
										a = -860895 + 17532629;
										c = -772634 - (-772890);
										N = H % c;
										y = N;
										l = -715523 - (-715524);
										c = P[Y];
										f = y + l;
										e = v[f];
										H = c .. e;
										P[Y] = H;
									end;
								end;
							else
								if a < 95029 + 16114976 then
									if a < -141660 + 16114571 then
										if a < 15525039 - (7516 - (-798702 + 1194540)) then
											v = d(624390 + -563159);
											o = d((-765143 + (414102 - ((199987 + ((-1446078 - (-1036252)) - 811027)) + 420209))) - ((-483181 + 860172) + -188587));
											a = X[o];
											P = X[v];
											v = { P() };
											P = { a(A(v)) };
											a = 4342365 - 470589;
											Y = P[(-417995 + 848590) + -430592];
											o = P[(-199610 - (-750857)) + -551246];
											Z = P[-100267 + 100269];
											P = o;
										else
											l = not f;
											H = H + e;
											o = H <= c;
											o = l and o;
											l = H >= c;
											l = f and l;
											o = l or o;
											l = 6418523 - (-400455);
											a = o and l;
											o = 10723214 - (1039707 + -209902);
											a = a or o;
										end;
									else
										if a < 16099548 - (-28341) then
											a = -135659 + (11244127 - (573307 - 132677));
											U = nil;
											v = nil;
										else
											Y = p[E[-442104 - (-442106)]];
											P = -644746 + 644851;
											Z = Y * P;
											Y = 27578503947387 - (-433030);
											o = Z + Y;
											Z = (791845 + -912917) + 35184372209904;
											Y = -434608 + 434609;
											a = o % Z;
											p[E[-785334 - (-785336)]] = a;
											Z = p[E[-772528 + 772531]];
											a = (10706406 - 157064) - (-811816);
											o = Z ~= Y;
										end;
									end;
								else
									if a < 17478316 - 1015562 then
										if a < 17104715 - 749870 then
											v = Y;
											r = p[E[552335 + -552334]];
											n = p[E[1006497 + -1006495]];
											b = 438221 + 17995630366771;
											z = d(203870 - 142624);
											t = n(z, b);
											O = r[t];
											r = d((631974 + -1524235) + 953511);
											y = U[O];
											O = X[r];
											a = y == O;
											a = a and 12048533 - (1172108 - 522972) or 10517975 - 360260;
										else
											a = true;
											a = a and -564992 + (631207 + 15241504) or (-155632 + 929977) + 14729160;
										end;
									else
										N = not b;
										t = t + z;
										r = t <= n;
										r = N and r;
										N = t >= n;
										N = b and N;
										r = N or r;
										N = 14919857 - (-687372);
										a = r and N;
										r = -964438 + 7803228;
										a = a or r;
									end;
								end;
							end;
						end;
					end;
				end;
				a = #I;
				return A(o);
			end, function(X, d)
				local A = P(d);
				local x = function(...)
						return a(X, { ... }, d, A);
					end;
				return x;
			end, function(X)
				for d = (549515 + -483584) - 65930, #X, -204643 - (-204644) do
					Z[X[d]] = Z[X[d]] + (986952 + -986951);
				end;
				if x then
					local a = x(true);
					local A = I(a);
					A[d(1042512 - 981236)], A[d(-684880 + 746104)], A[d(-267518 + 328761)] = X, v, function()
							return -991704 + 5161518;
						end;
					return a;
				else
					return E({}, { [d(726904 + -665680)] = v, [d((733770 + (666596 + -1886141)) - (-547051))] = X, [d(-841375 + 902618)] = function()
							return 4713392 - 543578;
						end });
				end;
			end, function(X, d)
				local A = P(d);
				local x = function(x, E, I, W)
						return a(X, {
							x,
							E,
							I,
							W,
						}, d, A);
					end;
				return x;
			end, {};
		return (U(-325828 + 10860620, {}))(A(o));
	end)(getfenv and getfenv() or _ENV, unpack or table[d(-363209 - (-424473))], newproxy, setmetatable, getmetatable, select, { ... });
end)(...);