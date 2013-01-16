
R version 2.15.0 (2012-03-30)
Copyright (C) 2012 The R Foundation for Statistical Computing
ISBN 3-900051-07-0
Platform: x86_64-apple-darwin9.8.0/x86_64 (64-bit)

R is free software and comes with ABSOLUTELY NO WARRANTY.
You are welcome to redistribute it under certain conditions.
Type 'license()' or 'licence()' for distribution details.

  Natural language support but running in an English locale

R is a collaborative project with many contributors.
Type 'contributors()' for more information and
'citation()' on how to cite R or R packages in publications.

Type 'demo()' for some demos, 'help()' for on-line help, or
'help.start()' for an HTML browser interface to help.
Type 'q()' to quit R.

> .help.ESS <- help
> options(STERM='iESS', editor='emacsclient')
> rm(list=ls(all=TRUE))
> setwd("~/Github/EBMAforecast/APSA_2012/Simulations")
> load("SecondRound")
> objects()
[1] "output"
> summary(output)
     Length Class  Mode
1    11     -none- list
2    11     -none- list
3    11     -none- list
4    11     -none- list
5    11     -none- list
6    11     -none- list
7    11     -none- list
8    11     -none- list
9    11     -none- list
10   11     -none- list
11   11     -none- list
12   11     -none- list
13   11     -none- list
14   11     -none- list
15   11     -none- list
16   11     -none- list
17   11     -none- list
18   11     -none- list
19   11     -none- list
20   11     -none- list
21   11     -none- list
22   11     -none- list
23   11     -none- list
24   11     -none- list
25   11     -none- list
26   11     -none- list
27   11     -none- list
28   11     -none- list
29   11     -none- list
30   11     -none- list
31   11     -none- list
32   11     -none- list
33   11     -none- list
34   11     -none- list
35   11     -none- list
36   11     -none- list
37   11     -none- list
38   11     -none- list
39   11     -none- list
40   11     -none- list
41   11     -none- list
42   11     -none- list
43   11     -none- list
44   11     -none- list
45   11     -none- list
46   11     -none- list
47   11     -none- list
48   11     -none- list
49   11     -none- list
50   11     -none- list
51   11     -none- list
52   11     -none- list
53   11     -none- list
54   11     -none- list
55   11     -none- list
56   11     -none- list
57   11     -none- list
58   11     -none- list
59   11     -none- list
60   11     -none- list
61   11     -none- list
62   11     -none- list
63   11     -none- list
64   11     -none- list
65   11     -none- list
66   11     -none- list
67   11     -none- list
68   11     -none- list
69   11     -none- list
70   11     -none- list
71   11     -none- list
72   11     -none- list
73   11     -none- list
74   11     -none- list
75   11     -none- list
76   11     -none- list
77   11     -none- list
78   11     -none- list
79   11     -none- list
80   11     -none- list
81   11     -none- list
82   11     -none- list
83   11     -none- list
84   11     -none- list
85   11     -none- list
86   11     -none- list
87   11     -none- list
88   11     -none- list
89   11     -none- list
90   11     -none- list
91   11     -none- list
92   11     -none- list
93   11     -none- list
94   11     -none- list
95   11     -none- list
96   11     -none- list
97   11     -none- list
98   11     -none- list
99   11     -none- list
100  11     -none- list
101  11     -none- list
102  11     -none- list
103  11     -none- list
104  11     -none- list
105  11     -none- list
106  11     -none- list
107  11     -none- list
108  11     -none- list
109  11     -none- list
110  11     -none- list
111  11     -none- list
112  11     -none- list
113  11     -none- list
114  11     -none- list
115  11     -none- list
116  11     -none- list
117  11     -none- list
118  11     -none- list
119  11     -none- list
120  11     -none- list
121  11     -none- list
122  11     -none- list
123  11     -none- list
124  11     -none- list
125  11     -none- list
126  11     -none- list
127  11     -none- list
128  11     -none- list
129  11     -none- list
130  11     -none- list
131  11     -none- list
132  11     -none- list
133  11     -none- list
134  11     -none- list
135  11     -none- list
136  11     -none- list
137  11     -none- list
138  11     -none- list
139  11     -none- list
140  11     -none- list
141  11     -none- list
142  11     -none- list
143  11     -none- list
144  11     -none- list
145  11     -none- list
146  11     -none- list
147  11     -none- list
148  11     -none- list
149  11     -none- list
150  11     -none- list
151  11     -none- list
152  11     -none- list
153  11     -none- list
154  11     -none- list
155  11     -none- list
156  11     -none- list
157  11     -none- list
158  11     -none- list
159  11     -none- list
160  11     -none- list
161  11     -none- list
162  11     -none- list
163  11     -none- list
164  11     -none- list
165  11     -none- list
166  11     -none- list
167  11     -none- list
168  11     -none- list
169  11     -none- list
170  11     -none- list
171  11     -none- list
172  11     -none- list
173  11     -none- list
174  11     -none- list
175  11     -none- list
176  11     -none- list
177  11     -none- list
178  11     -none- list
179  11     -none- list
180  11     -none- list
181  11     -none- list
182  11     -none- list
183  11     -none- list
184  11     -none- list
185  11     -none- list
186  11     -none- list
187  11     -none- list
188  11     -none- list
189  11     -none- list
190  11     -none- list
191  11     -none- list
192  11     -none- list
193  11     -none- list
194  11     -none- list
195  11     -none- list
196  11     -none- list
197  11     -none- list
198  11     -none- list
199  11     -none- list
200  11     -none- list
201  11     -none- list
202  11     -none- list
203  11     -none- list
204  11     -none- list
205  11     -none- list
206  11     -none- list
207  11     -none- list
208  11     -none- list
209  11     -none- list
210  11     -none- list
211  11     -none- list
212  11     -none- list
213  11     -none- list
214  11     -none- list
215  11     -none- list
216  11     -none- list
217  11     -none- list
218  11     -none- list
219  11     -none- list
220  11     -none- list
221  11     -none- list
222  11     -none- list
223  11     -none- list
224  11     -none- list
225  11     -none- list
226  11     -none- list
227  11     -none- list
228  11     -none- list
229  11     -none- list
230  11     -none- list
231  11     -none- list
232  11     -none- list
233  11     -none- list
234  11     -none- list
235  11     -none- list
236  11     -none- list
237  11     -none- list
238  11     -none- list
239  11     -none- list
240  11     -none- list
241  11     -none- list
242  11     -none- list
243  11     -none- list
244  11     -none- list
245  11     -none- list
246  11     -none- list
247  11     -none- list
248  11     -none- list
249  11     -none- list
250  11     -none- list
251  11     -none- list
252  11     -none- list
253  11     -none- list
254  11     -none- list
255  11     -none- list
256  11     -none- list
257  11     -none- list
258  11     -none- list
259  11     -none- list
260  11     -none- list
261  11     -none- list
262  11     -none- list
263  11     -none- list
264  11     -none- list
265  11     -none- list
266  11     -none- list
267  11     -none- list
268  11     -none- list
269  11     -none- list
270  11     -none- list
271  11     -none- list
272  11     -none- list
273  11     -none- list
274  11     -none- list
275  11     -none- list
276  11     -none- list
277  11     -none- list
278  11     -none- list
279  11     -none- list
280  11     -none- list
281  11     -none- list
282  11     -none- list
283  11     -none- list
284  11     -none- list
285  11     -none- list
286  11     -none- list
287  11     -none- list
288  11     -none- list
289  11     -none- list
290  11     -none- list
291  11     -none- list
292  11     -none- list
293  11     -none- list
294  11     -none- list
295  11     -none- list
296  11     -none- list
297  11     -none- list
298  11     -none- list
299  11     -none- list
300  11     -none- list
301  11     -none- list
302  11     -none- list
303  11     -none- list
304  11     -none- list
305  11     -none- list
306  11     -none- list
307  11     -none- list
308  11     -none- list
309  11     -none- list
310  11     -none- list
311  11     -none- list
312  11     -none- list
313  11     -none- list
314  11     -none- list
315  11     -none- list
316  11     -none- list
317  11     -none- list
318  11     -none- list
319  11     -none- list
320  11     -none- list
321  11     -none- list
322  11     -none- list
323  11     -none- list
324  11     -none- list
325  11     -none- list
326  11     -none- list
327  11     -none- list
328  11     -none- list
329  11     -none- list
330  11     -none- list
331  11     -none- list
332  11     -none- list
333  11     -none- list
334  11     -none- list
335  11     -none- list
336  11     -none- list
337  11     -none- list
338  11     -none- list
339  11     -none- list
340  11     -none- list
341  11     -none- list
342  11     -none- list
343  11     -none- list
344  11     -none- list
345  11     -none- list
346  11     -none- list
347  11     -none- list
348  11     -none- list
349  11     -none- list
350  11     -none- list
351  11     -none- list
352  11     -none- list
353  11     -none- list
354  11     -none- list
355  11     -none- list
356  11     -none- list
357  11     -none- list
358  11     -none- list
359  11     -none- list
360  11     -none- list
361  11     -none- list
362  11     -none- list
363  11     -none- list
364  11     -none- list
365  11     -none- list
366  11     -none- list
367  11     -none- list
368  11     -none- list
369  11     -none- list
370  11     -none- list
371  11     -none- list
372  11     -none- list
373  11     -none- list
374  11     -none- list
375  11     -none- list
376  11     -none- list
377  11     -none- list
378  11     -none- list
379  11     -none- list
380  11     -none- list
381  11     -none- list
382  11     -none- list
383  11     -none- list
384  11     -none- list
385  11     -none- list
386  11     -none- list
387  11     -none- list
388  11     -none- list
389  11     -none- list
390  11     -none- list
391  11     -none- list
392  11     -none- list
393  11     -none- list
394  11     -none- list
395  11     -none- list
396  11     -none- list
397  11     -none- list
398  11     -none- list
399  11     -none- list
400  11     -none- list
401  11     -none- list
402  11     -none- list
403  11     -none- list
404  11     -none- list
405  11     -none- list
406  11     -none- list
407  11     -none- list
408  11     -none- list
409  11     -none- list
410  11     -none- list
411  11     -none- list
412  11     -none- list
413  11     -none- list
414  11     -none- list
415  11     -none- list
416  11     -none- list
417  11     -none- list
418  11     -none- list
419  11     -none- list
420  11     -none- list
421  11     -none- list
422  11     -none- list
423  11     -none- list
424  11     -none- list
425  11     -none- list
426  11     -none- list
427  11     -none- list
428  11     -none- list
429  11     -none- list
430  11     -none- list
431  11     -none- list
432  11     -none- list
433  11     -none- list
434  11     -none- list
435  11     -none- list
436  11     -none- list
437  11     -none- list
438  11     -none- list
439  11     -none- list
440  11     -none- list
441  11     -none- list
442  11     -none- list
443  11     -none- list
444  11     -none- list
445  11     -none- list
446  11     -none- list
447  11     -none- list
448  11     -none- list
449  11     -none- list
450  11     -none- list
451  11     -none- list
452  11     -none- list
453  11     -none- list
454  11     -none- list
455  11     -none- list
456  11     -none- list
457  11     -none- list
458  11     -none- list
459  11     -none- list
460  11     -none- list
461  11     -none- list
462  11     -none- list
463  11     -none- list
464  11     -none- list
465  11     -none- list
466  11     -none- list
467  11     -none- list
468  11     -none- list
469  11     -none- list
470  11     -none- list
471  11     -none- list
472  11     -none- list
473  11     -none- list
474  11     -none- list
475  11     -none- list
476  11     -none- list
477  11     -none- list
478  11     -none- list
479  11     -none- list
480  11     -none- list
481  11     -none- list
482  11     -none- list
483  11     -none- list
484  11     -none- list
485  11     -none- list
486  11     -none- list
487  11     -none- list
488  11     -none- list
489  11     -none- list
490  11     -none- list
491  11     -none- list
492  11     -none- list
493  11     -none- list
494  11     -none- list
495  11     -none- list
496  11     -none- list
497  11     -none- list
498  11     -none- list
499  11     -none- list
500  11     -none- list
501  11     -none- list
502  11     -none- list
503  11     -none- list
504  11     -none- list
505  11     -none- list
506  11     -none- list
507  11     -none- list
508  11     -none- list
509  11     -none- list
510  11     -none- list
511  11     -none- list
512  11     -none- list
513  11     -none- list
514  11     -none- list
515  11     -none- list
516  11     -none- list
517  11     -none- list
518  11     -none- list
519  11     -none- list
520  11     -none- list
521  11     -none- list
522  11     -none- list
523  11     -none- list
524  11     -none- list
525  11     -none- list
526  11     -none- list
527  11     -none- list
528  11     -none- list
529  11     -none- list
530  11     -none- list
531  11     -none- list
532  11     -none- list
533  11     -none- list
534  11     -none- list
535  11     -none- list
536  11     -none- list
537  11     -none- list
538  11     -none- list
539  11     -none- list
540  11     -none- list
541  11     -none- list
542  11     -none- list
543  11     -none- list
544  11     -none- list
545  11     -none- list
546  11     -none- list
547  11     -none- list
548  11     -none- list
549  11     -none- list
550  11     -none- list
551  11     -none- list
552  11     -none- list
553  11     -none- list
554  11     -none- list
555  11     -none- list
556  11     -none- list
557  11     -none- list
558  11     -none- list
559  11     -none- list
560  11     -none- list
561  11     -none- list
562  11     -none- list
563  11     -none- list
564  11     -none- list
565  11     -none- list
566  11     -none- list
567  11     -none- list
568  11     -none- list
569  11     -none- list
570  11     -none- list
571  11     -none- list
572  11     -none- list
573  11     -none- list
574  11     -none- list
575  11     -none- list
576  11     -none- list
577  11     -none- list
578  11     -none- list
579  11     -none- list
580  11     -none- list
581  11     -none- list
582  11     -none- list
583  11     -none- list
584  11     -none- list
585  11     -none- list
586  11     -none- list
587  11     -none- list
588  11     -none- list
589  11     -none- list
590  11     -none- list
591  11     -none- list
592  11     -none- list
593  11     -none- list
594  11     -none- list
595  11     -none- list
596  11     -none- list
597  11     -none- list
598  11     -none- list
599  11     -none- list
600  11     -none- list
601  11     -none- list
602  11     -none- list
603  11     -none- list
604  11     -none- list
605  11     -none- list
606  11     -none- list
607  11     -none- list
608  11     -none- list
609  11     -none- list
610  11     -none- list
611  11     -none- list
612  11     -none- list
613  11     -none- list
614  11     -none- list
615  11     -none- list
616  11     -none- list
617  11     -none- list
618  11     -none- list
619  11     -none- list
620  11     -none- list
621  11     -none- list
622  11     -none- list
623  11     -none- list
624  11     -none- list
625  11     -none- list
626  11     -none- list
627  11     -none- list
628  11     -none- list
629  11     -none- list
630  11     -none- list
631  11     -none- list
632  11     -none- list
633  11     -none- list
634  11     -none- list
635  11     -none- list
636  11     -none- list
637  11     -none- list
638  11     -none- list
639  11     -none- list
640  11     -none- list
641  11     -none- list
642  11     -none- list
643  11     -none- list
644  11     -none- list
645  11     -none- list
646  11     -none- list
647  11     -none- list
648  11     -none- list
649  11     -none- list
650  11     -none- list
651  11     -none- list
652  11     -none- list
653  11     -none- list
654  11     -none- list
655  11     -none- list
656  11     -none- list
657  11     -none- list
658  11     -none- list
659  11     -none- list
660  11     -none- list
661  11     -none- list
662  11     -none- list
663  11     -none- list
664  11     -none- list
665  11     -none- list
666  11     -none- list
667  11     -none- list
668  11     -none- list
669  11     -none- list
670  11     -none- list
671  11     -none- list
672  11     -none- list
673  11     -none- list
674  11     -none- list
675  11     -none- list
676  11     -none- list
677  11     -none- list
678  11     -none- list
679  11     -none- list
680  11     -none- list
681  11     -none- list
682  11     -none- list
683  11     -none- list
684  11     -none- list
685  11     -none- list
686  11     -none- list
687  11     -none- list
688  11     -none- list
689  11     -none- list
690  11     -none- list
691  11     -none- list
692  11     -none- list
693  11     -none- list
694  11     -none- list
695  11     -none- list
696  11     -none- list
697  11     -none- list
698  11     -none- list
699  11     -none- list
700  11     -none- list
701  11     -none- list
702  11     -none- list
703  11     -none- list
704  11     -none- list
705  11     -none- list
706  11     -none- list
707  11     -none- list
708  11     -none- list
709  11     -none- list
710  11     -none- list
711  11     -none- list
712  11     -none- list
713  11     -none- list
714  11     -none- list
715  11     -none- list
716  11     -none- list
717  11     -none- list
718  11     -none- list
719  11     -none- list
720  11     -none- list
721  11     -none- list
722  11     -none- list
723  11     -none- list
724  11     -none- list
725  11     -none- list
726  11     -none- list
727  11     -none- list
728  11     -none- list
729  11     -none- list
730  11     -none- list
731  11     -none- list
732  11     -none- list
733  11     -none- list
734  11     -none- list
735  11     -none- list
736  11     -none- list
737  11     -none- list
738  11     -none- list
739  11     -none- list
740  11     -none- list
741  11     -none- list
742  11     -none- list
743  11     -none- list
744  11     -none- list
745  11     -none- list
746  11     -none- list
747  11     -none- list
748  11     -none- list
749  11     -none- list
750  11     -none- list
751  11     -none- list
752  11     -none- list
753  11     -none- list
754  11     -none- list
755  11     -none- list
756  11     -none- list
757  11     -none- list
758  11     -none- list
759  11     -none- list
760  11     -none- list
761  11     -none- list
762  11     -none- list
763  11     -none- list
764  11     -none- list
765  11     -none- list
766  11     -none- list
767  11     -none- list
768  11     -none- list
769  11     -none- list
770  11     -none- list
771  11     -none- list
772  11     -none- list
773  11     -none- list
774  11     -none- list
775  11     -none- list
776  11     -none- list
777  11     -none- list
778  11     -none- list
779  11     -none- list
780  11     -none- list
781  11     -none- list
782  11     -none- list
783  11     -none- list
784  11     -none- list
785  11     -none- list
786  11     -none- list
787  11     -none- list
788  11     -none- list
789  11     -none- list
790  11     -none- list
791  11     -none- list
792  11     -none- list
793  11     -none- list
794  11     -none- list
795  11     -none- list
796  11     -none- list
797  11     -none- list
798  11     -none- list
799  11     -none- list
800  11     -none- list
801  11     -none- list
802  11     -none- list
803  11     -none- list
804  11     -none- list
805  11     -none- list
806  11     -none- list
807  11     -none- list
808  11     -none- list
809  11     -none- list
810  11     -none- list
811  11     -none- list
812  11     -none- list
813  11     -none- list
814  11     -none- list
815  11     -none- list
816  11     -none- list
817  11     -none- list
818  11     -none- list
819  11     -none- list
820  11     -none- list
821  11     -none- list
822  11     -none- list
823  11     -none- list
824  11     -none- list
825  11     -none- list
826  11     -none- list
827  11     -none- list
828  11     -none- list
829  11     -none- list
830  11     -none- list
831  11     -none- list
832  11     -none- list
833  11     -none- list
834  11     -none- list
835  11     -none- list
836  11     -none- list
837  11     -none- list
838  11     -none- list
839  11     -none- list
840  11     -none- list
841  11     -none- list
842  11     -none- list
843  11     -none- list
844  11     -none- list
845  11     -none- list
846  11     -none- list
847  11     -none- list
848  11     -none- list
849  11     -none- list
850  11     -none- list
851  11     -none- list
852  11     -none- list
853  11     -none- list
854  11     -none- list
855  11     -none- list
856  11     -none- list
857  11     -none- list
858  11     -none- list
859  11     -none- list
860  11     -none- list
861  11     -none- list
862  11     -none- list
863  11     -none- list
864  11     -none- list
865  11     -none- list
866  11     -none- list
867  11     -none- list
868  11     -none- list
869  11     -none- list
870  11     -none- list
871  11     -none- list
872  11     -none- list
873  11     -none- list
874  11     -none- list
875  11     -none- list
876  11     -none- list
877  11     -none- list
878  11     -none- list
879  11     -none- list
880  11     -none- list
881  11     -none- list
882  11     -none- list
883  11     -none- list
884  11     -none- list
885  11     -none- list
886  11     -none- list
887  11     -none- list
888  11     -none- list
889  11     -none- list
890  11     -none- list
891  11     -none- list
892  11     -none- list
893  11     -none- list
894  11     -none- list
895  11     -none- list
896  11     -none- list
897  11     -none- list
898  11     -none- list
899  11     -none- list
900  11     -none- list
901  11     -none- list
902  11     -none- list
903  11     -none- list
904  11     -none- list
905  11     -none- list
906  11     -none- list
907  11     -none- list
908  11     -none- list
909  11     -none- list
910  11     -none- list
911  11     -none- list
912  11     -none- list
913  11     -none- list
914  11     -none- list
915  11     -none- list
916  11     -none- list
917  11     -none- list
918  11     -none- list
919  11     -none- list
920  11     -none- list
921  11     -none- list
922  11     -none- list
923  11     -none- list
924  11     -none- list
925  11     -none- list
926  11     -none- list
927  11     -none- list
928  11     -none- list
929  11     -none- list
930  11     -none- list
931  11     -none- list
932  11     -none- list
933  11     -none- list
934  11     -none- list
935  11     -none- list
936  11     -none- list
937  11     -none- list
938  11     -none- list
939  11     -none- list
940  11     -none- list
941  11     -none- list
942  11     -none- list
943  11     -none- list
944  11     -none- list
945  11     -none- list
946  11     -none- list
947  11     -none- list
948  11     -none- list
949  11     -none- list
950  11     -none- list
951  11     -none- list
952  11     -none- list
953  11     -none- list
954  11     -none- list
955  11     -none- list
956  11     -none- list
957  11     -none- list
958  11     -none- list
959  11     -none- list
960  11     -none- list
961  11     -none- list
962  11     -none- list
963  11     -none- list
964  11     -none- list
965  11     -none- list
966  11     -none- list
967  11     -none- list
968  11     -none- list
969  11     -none- list
970  11     -none- list
971  11     -none- list
972  11     -none- list
973  11     -none- list
974  11     -none- list
975  11     -none- list
976  11     -none- list
977  11     -none- list
978  11     -none- list
979  11     -none- list
980  11     -none- list
981  11     -none- list
982  11     -none- list
983  11     -none- list
984  11     -none- list
985  11     -none- list
986  11     -none- list
987  11     -none- list
988  11     -none- list
989  11     -none- list
990  11     -none- list
991  11     -none- list
992  11     -none- list
993  11     -none- list
994  11     -none- list
995  11     -none- list
996  11     -none- list
997  11     -none- list
998  11     -none- list
999  11     -none- list
1000 11     -none- list
1001 11     -none- list
1002 11     -none- list
1003 11     -none- list
1004 11     -none- list
1005 11     -none- list
1006 11     -none- list
1007 11     -none- list
1008 11     -none- list
1009 11     -none- list
1010 11     -none- list
1011 11     -none- list
1012 11     -none- list
1013 11     -none- list
1014 11     -none- list
1015 11     -none- list
1016 11     -none- list
1017 11     -none- list
1018 11     -none- list
1019 11     -none- list
1020 11     -none- list
1021 11     -none- list
1022 11     -none- list
1023 11     -none- list
1024 11     -none- list
1025 11     -none- list
1026 11     -none- list
1027 11     -none- list
1028 11     -none- list
1029 11     -none- list
1030 11     -none- list
1031 11     -none- list
1032 11     -none- list
1033 11     -none- list
1034 11     -none- list
1035 11     -none- list
1036 11     -none- list
1037 11     -none- list
1038 11     -none- list
1039 11     -none- list
1040 11     -none- list
1041 11     -none- list
1042 11     -none- list
1043 11     -none- list
1044 11     -none- list
1045 11     -none- list
1046 11     -none- list
1047 11     -none- list
1048 11     -none- list
1049 11     -none- list
1050 11     -none- list
1051 11     -none- list
1052 11     -none- list
1053 11     -none- list
1054 11     -none- list
1055 11     -none- list
1056 11     -none- list
1057 11     -none- list
1058 11     -none- list
1059 11     -none- list
1060 11     -none- list
1061 11     -none- list
1062 11     -none- list
1063 11     -none- list
1064 11     -none- list
1065 11     -none- list
1066 11     -none- list
1067 11     -none- list
1068 11     -none- list
1069 11     -none- list
1070 11     -none- list
1071 11     -none- list
1072 11     -none- list
1073 11     -none- list
1074 11     -none- list
1075 11     -none- list
1076 11     -none- list
1077 11     -none- list
1078 11     -none- list
1079 11     -none- list
1080 11     -none- list
1081 11     -none- list
1082 11     -none- list
1083 11     -none- list
1084 11     -none- list
1085 11     -none- list
1086 11     -none- list
1087 11     -none- list
1088 11     -none- list
1089 11     -none- list
1090 11     -none- list
1091 11     -none- list
1092 11     -none- list
1093 11     -none- list
1094 11     -none- list
1095 11     -none- list
1096 11     -none- list
1097 11     -none- list
1098 11     -none- list
1099 11     -none- list
1100 11     -none- list
1101 11     -none- list
1102 11     -none- list
1103 11     -none- list
1104 11     -none- list
1105 11     -none- list
1106 11     -none- list
1107 11     -none- list
1108 11     -none- list
1109 11     -none- list
1110 11     -none- list
1111 11     -none- list
1112 11     -none- list
1113 11     -none- list
1114 11     -none- list
1115 11     -none- list
1116 11     -none- list
1117 11     -none- list
1118 11     -none- list
1119 11     -none- list
1120 11     -none- list
1121 11     -none- list
1122 11     -none- list
1123 11     -none- list
1124 11     -none- list
1125 11     -none- list
1126 11     -none- list
1127 11     -none- list
1128 11     -none- list
1129 11     -none- list
1130 11     -none- list
1131 11     -none- list
1132 11     -none- list
1133 11     -none- list
1134 11     -none- list
1135 11     -none- list
1136 11     -none- list
1137 11     -none- list
1138 11     -none- list
1139 11     -none- list
1140 11     -none- list
1141 11     -none- list
1142 11     -none- list
1143 11     -none- list
1144 11     -none- list
1145 11     -none- list
1146 11     -none- list
1147 11     -none- list
1148 11     -none- list
1149 11     -none- list
1150 11     -none- list
1151 11     -none- list
1152 11     -none- list
1153 11     -none- list
1154 11     -none- list
1155 11     -none- list
1156 11     -none- list
1157 11     -none- list
1158 11     -none- list
1159 11     -none- list
1160 11     -none- list
1161 11     -none- list
1162 11     -none- list
1163 11     -none- list
1164 11     -none- list
1165 11     -none- list
1166 11     -none- list
1167 11     -none- list
1168 11     -none- list
1169 11     -none- list
1170 11     -none- list
1171 11     -none- list
1172 11     -none- list
1173 11     -none- list
1174 11     -none- list
1175 11     -none- list
1176 11     -none- list
1177 11     -none- list
1178 11     -none- list
1179 11     -none- list
1180 11     -none- list
1181 11     -none- list
1182 11     -none- list
1183 11     -none- list
1184 11     -none- list
1185 11     -none- list
1186 11     -none- list
1187 11     -none- list
1188 11     -none- list
1189 11     -none- list
1190 11     -none- list
1191 11     -none- list
1192 11     -none- list
1193 11     -none- list
1194 11     -none- list
1195 11     -none- list
1196 11     -none- list
1197 11     -none- list
1198 11     -none- list
1199 11     -none- list
1200 11     -none- list
1201 11     -none- list
1202 11     -none- list
1203 11     -none- list
1204 11     -none- list
1205 11     -none- list
1206 11     -none- list
1207 11     -none- list
1208 11     -none- list
1209 11     -none- list
1210 11     -none- list
1211 11     -none- list
1212 11     -none- list
1213 11     -none- list
1214 11     -none- list
1215 11     -none- list
1216 11     -none- list
1217 11     -none- list
1218 11     -none- list
1219 11     -none- list
1220 11     -none- list
1221 11     -none- list
1222 11     -none- list
1223 11     -none- list
1224 11     -none- list
1225 11     -none- list
1226 11     -none- list
1227 11     -none- list
1228 11     -none- list
1229 11     -none- list
1230 11     -none- list
1231 11     -none- list
1232 11     -none- list
1233 11     -none- list
1234 11     -none- list
1235 11     -none- list
1236 11     -none- list
1237 11     -none- list
1238 11     -none- list
1239 11     -none- list
1240 11     -none- list
1241 11     -none- list
1242 11     -none- list
1243 11     -none- list
1244 11     -none- list
1245 11     -none- list
1246 11     -none- list
1247 11     -none- list
1248 11     -none- list
1249 11     -none- list
1250 11     -none- list
1251 11     -none- list
1252 11     -none- list
1253 11     -none- list
1254 11     -none- list
1255 11     -none- list
1256 11     -none- list
1257 11     -none- list
1258 11     -none- list
1259 11     -none- list
1260 11     -none- list
1261 11     -none- list
1262 11     -none- list
1263 11     -none- list
1264 11     -none- list
1265 11     -none- list
1266 11     -none- list
1267 11     -none- list
1268 11     -none- list
1269 11     -none- list
1270 11     -none- list
1271 11     -none- list
1272 11     -none- list
1273 11     -none- list
1274 11     -none- list
1275 11     -none- list
1276 11     -none- list
1277 11     -none- list
1278 11     -none- list
1279 11     -none- list
1280 11     -none- list
1281 11     -none- list
1282 11     -none- list
1283 11     -none- list
1284 11     -none- list
1285 11     -none- list
1286 11     -none- list
1287 11     -none- list
1288 11     -none- list
1289 11     -none- list
1290 11     -none- list
1291 11     -none- list
1292 11     -none- list
1293 11     -none- list
1294 11     -none- list
1295 11     -none- list
1296 11     -none- list
1297 11     -none- list
1298 11     -none- list
1299 11     -none- list
1300 11     -none- list
1301 11     -none- list
1302 11     -none- list
1303 11     -none- list
1304 11     -none- list
1305 11     -none- list
1306 11     -none- list
1307 11     -none- list
1308 11     -none- list
1309 11     -none- list
1310 11     -none- list
1311 11     -none- list
1312 11     -none- list
1313 11     -none- list
1314 11     -none- list
1315 11     -none- list
1316 11     -none- list
1317 11     -none- list
1318 11     -none- list
1319 11     -none- list
1320 11     -none- list
1321 11     -none- list
1322 11     -none- list
1323 11     -none- list
1324 11     -none- list
1325 11     -none- list
1326 11     -none- list
1327 11     -none- list
1328 11     -none- list
1329 11     -none- list
1330 11     -none- list
1331 11     -none- list
1332 11     -none- list
1333 11     -none- list
1334 11     -none- list
1335 11     -none- list
1336 11     -none- list
1337 11     -none- list
1338 11     -none- list
1339 11     -none- list
1340 11     -none- list
1341 11     -none- list
1342 11     -none- list
1343 11     -none- list
1344 11     -none- list
1345 11     -none- list
1346 11     -none- list
1347 11     -none- list
1348 11     -none- list
1349 11     -none- list
1350 11     -none- list
1351 11     -none- list
1352 11     -none- list
1353 11     -none- list
1354 11     -none- list
1355 11     -none- list
1356 11     -none- list
1357 11     -none- list
1358 11     -none- list
1359 11     -none- list
1360 11     -none- list
1361 11     -none- list
1362 11     -none- list
1363 11     -none- list
1364 11     -none- list
1365 11     -none- list
1366 11     -none- list
1367 11     -none- list
1368 11     -none- list
1369 11     -none- list
1370 11     -none- list
1371 11     -none- list
1372 11     -none- list
1373 11     -none- list
1374 11     -none- list
1375 11     -none- list
1376 11     -none- list
1377 11     -none- list
1378 11     -none- list
1379 11     -none- list
1380 11     -none- list
1381 11     -none- list
1382 11     -none- list
1383 11     -none- list
1384 11     -none- list
1385 11     -none- list
1386 11     -none- list
1387 11     -none- list
1388 11     -none- list
1389 11     -none- list
1390 11     -none- list
1391 11     -none- list
1392 11     -none- list
1393 11     -none- list
1394 11     -none- list
1395 11     -none- list
1396 11     -none- list
1397 11     -none- list
1398 11     -none- list
1399 11     -none- list
1400 11     -none- list
1401 11     -none- list
1402 11     -none- list
1403 11     -none- list
1404 11     -none- list
1405 11     -none- list
1406 11     -none- list
1407 11     -none- list
1408 11     -none- list
1409 11     -none- list
1410 11     -none- list
1411 11     -none- list
1412 11     -none- list
1413 11     -none- list
1414 11     -none- list
1415 11     -none- list
1416 11     -none- list
1417 11     -none- list
1418 11     -none- list
1419 11     -none- list
1420 11     -none- list
1421 11     -none- list
1422 11     -none- list
1423 11     -none- list
1424 11     -none- list
1425 11     -none- list
1426 11     -none- list
1427 11     -none- list
1428 11     -none- list
1429 11     -none- list
1430 11     -none- list
1431 11     -none- list
1432 11     -none- list
1433 11     -none- list
1434 11     -none- list
1435 11     -none- list
1436 11     -none- list
1437 11     -none- list
1438 11     -none- list
1439 11     -none- list
1440 11     -none- list
1441 11     -none- list
1442 11     -none- list
1443 11     -none- list
1444 11     -none- list
1445 11     -none- list
1446 11     -none- list
1447 11     -none- list
1448 11     -none- list
1449 11     -none- list
1450 11     -none- list
1451 11     -none- list
1452 11     -none- list
1453 11     -none- list
1454 11     -none- list
1455 11     -none- list
1456 11     -none- list
1457 11     -none- list
1458 11     -none- list
1459 11     -none- list
1460 11     -none- list
1461 11     -none- list
1462 11     -none- list
1463 11     -none- list
1464 11     -none- list
1465 11     -none- list
1466 11     -none- list
1467 11     -none- list
1468 11     -none- list
1469 11     -none- list
1470 11     -none- list
1471 11     -none- list
1472 11     -none- list
1473 11     -none- list
1474 11     -none- list
1475 11     -none- list
1476 11     -none- list
1477 11     -none- list
1478 11     -none- list
1479 11     -none- list
1480 11     -none- list
1481 11     -none- list
1482 11     -none- list
1483 11     -none- list
1484 11     -none- list
1485 11     -none- list
1486 11     -none- list
1487 11     -none- list
1488 11     -none- list
1489 11     -none- list
1490 11     -none- list
1491 11     -none- list
1492 11     -none- list
1493 11     -none- list
1494 11     -none- list
1495 11     -none- list
1496 11     -none- list
1497 11     -none- list
1498 11     -none- list
1499 11     -none- list
1500 11     -none- list
1501 11     -none- list
1502 11     -none- list
1503 11     -none- list
1504 11     -none- list
1505 11     -none- list
1506 11     -none- list
1507 11     -none- list
1508 11     -none- list
1509 11     -none- list
1510 11     -none- list
1511 11     -none- list
1512 11     -none- list
1513 11     -none- list
1514 11     -none- list
1515 11     -none- list
1516 11     -none- list
1517 11     -none- list
1518 11     -none- list
1519 11     -none- list
1520 11     -none- list
1521 11     -none- list
1522 11     -none- list
1523 11     -none- list
1524 11     -none- list
1525 11     -none- list
1526 11     -none- list
1527 11     -none- list
1528 11     -none- list
1529 11     -none- list
1530 11     -none- list
1531 11     -none- list
1532 11     -none- list
1533 11     -none- list
1534 11     -none- list
1535 11     -none- list
1536 11     -none- list
1537 11     -none- list
1538 11     -none- list
1539 11     -none- list
1540 11     -none- list
1541 11     -none- list
1542 11     -none- list
1543 11     -none- list
1544 11     -none- list
1545 11     -none- list
1546 11     -none- list
1547 11     -none- list
1548 11     -none- list
1549 11     -none- list
1550 11     -none- list
1551 11     -none- list
1552 11     -none- list
1553 11     -none- list
1554 11     -none- list
1555 11     -none- list
1556 11     -none- list
1557 11     -none- list
1558 11     -none- list
1559 11     -none- list
1560 11     -none- list
1561 11     -none- list
1562 11     -none- list
1563 11     -none- list
1564 11     -none- list
1565 11     -none- list
1566 11     -none- list
1567 11     -none- list
1568 11     -none- list
1569 11     -none- list
1570 11     -none- list
1571 11     -none- list
1572 11     -none- list
1573 11     -none- list
1574 11     -none- list
1575 11     -none- list
1576 11     -none- list
1577 11     -none- list
1578 11     -none- list
1579 11     -none- list
1580 11     -none- list
1581 11     -none- list
1582 11     -none- list
1583 11     -none- list
1584 11     -none- list
1585 11     -none- list
1586 11     -none- list
1587 11     -none- list
1588 11     -none- list
1589 11     -none- list
1590 11     -none- list
1591 11     -none- list
1592 11     -none- list
1593 11     -none- list
1594 11     -none- list
1595 11     -none- list
1596 11     -none- list
1597 11     -none- list
1598 11     -none- list
1599 11     -none- list
1600 11     -none- list
1601 11     -none- list
1602 11     -none- list
1603 11     -none- list
1604 11     -none- list
1605 11     -none- list
1606 11     -none- list
1607 11     -none- list
1608 11     -none- list
1609 11     -none- list
1610 11     -none- list
1611 11     -none- list
1612 11     -none- list
1613 11     -none- list
1614 11     -none- list
1615 11     -none- list
1616 11     -none- list
1617 11     -none- list
1618 11     -none- list
1619 11     -none- list
1620 11     -none- list
1621 11     -none- list
1622 11     -none- list
1623 11     -none- list
1624 11     -none- list
1625 11     -none- list
1626 11     -none- list
1627 11     -none- list
1628 11     -none- list
1629 11     -none- list
1630 11     -none- list
1631 11     -none- list
1632 11     -none- list
1633 11     -none- list
1634 11     -none- list
1635 11     -none- list
1636 11     -none- list
1637 11     -none- list
1638 11     -none- list
1639 11     -none- list
1640 11     -none- list
1641 11     -none- list
1642 11     -none- list
1643 11     -none- list
1644 11     -none- list
1645 11     -none- list
1646 11     -none- list
1647 11     -none- list
1648 11     -none- list
1649 11     -none- list
1650 11     -none- list
1651 11     -none- list
1652 11     -none- list
1653 11     -none- list
1654 11     -none- list
1655 11     -none- list
1656 11     -none- list
1657 11     -none- list
1658 11     -none- list
1659 11     -none- list
1660 11     -none- list
1661 11     -none- list
1662 11     -none- list
1663 11     -none- list
1664 11     -none- list
1665 11     -none- list
1666 11     -none- list
1667 11     -none- list
1668 11     -none- list
1669 11     -none- list
1670 11     -none- list
1671 11     -none- list
1672 11     -none- list
1673 11     -none- list
1674 11     -none- list
1675 11     -none- list
1676 11     -none- list
1677 11     -none- list
1678 11     -none- list
1679 11     -none- list
1680 11     -none- list
1681 11     -none- list
1682 11     -none- list
1683 11     -none- list
1684 11     -none- list
1685 11     -none- list
1686 11     -none- list
1687 11     -none- list
1688 11     -none- list
1689 11     -none- list
1690 11     -none- list
1691 11     -none- list
1692 11     -none- list
1693 11     -none- list
1694 11     -none- list
1695 11     -none- list
1696 11     -none- list
1697 11     -none- list
1698 11     -none- list
1699 11     -none- list
1700 11     -none- list
1701 11     -none- list
1702 11     -none- list
1703 11     -none- list
1704 11     -none- list
1705 11     -none- list
1706 11     -none- list
1707 11     -none- list
1708 11     -none- list
1709 11     -none- list
1710 11     -none- list
1711 11     -none- list
1712 11     -none- list
1713 11     -none- list
1714 11     -none- list
1715 11     -none- list
1716 11     -none- list
1717 11     -none- list
1718 11     -none- list
1719 11     -none- list
1720 11     -none- list
1721 11     -none- list
1722 11     -none- list
1723 11     -none- list
1724 11     -none- list
1725 11     -none- list
1726 11     -none- list
1727 11     -none- list
1728 11     -none- list
1729 11     -none- list
1730 11     -none- list
1731 11     -none- list
1732 11     -none- list
1733 11     -none- list
1734 11     -none- list
1735 11     -none- list
1736 11     -none- list
1737 11     -none- list
1738 11     -none- list
1739 11     -none- list
1740 11     -none- list
1741 11     -none- list
1742 11     -none- list
1743 11     -none- list
1744 11     -none- list
1745 11     -none- list
1746 11     -none- list
1747 11     -none- list
1748 11     -none- list
1749 11     -none- list
1750 11     -none- list
1751 11     -none- list
1752 11     -none- list
1753 11     -none- list
1754 11     -none- list
1755 11     -none- list
1756 11     -none- list
1757 11     -none- list
1758 11     -none- list
1759 11     -none- list
1760 11     -none- list
1761 11     -none- list
1762 11     -none- list
1763 11     -none- list
1764 11     -none- list
1765 11     -none- list
1766 11     -none- list
1767 11     -none- list
1768 11     -none- list
1769 11     -none- list
1770 11     -none- list
1771 11     -none- list
1772 11     -none- list
1773 11     -none- list
1774 11     -none- list
1775 11     -none- list
1776 11     -none- list
1777 11     -none- list
1778 11     -none- list
1779 11     -none- list
1780 11     -none- list
1781 11     -none- list
1782 11     -none- list
1783 11     -none- list
1784 11     -none- list
1785 11     -none- list
1786 11     -none- list
1787 11     -none- list
1788 11     -none- list
1789 11     -none- list
1790 11     -none- list
1791 11     -none- list
1792 11     -none- list
1793 11     -none- list
1794 11     -none- list
1795 11     -none- list
1796 11     -none- list
1797 11     -none- list
1798 11     -none- list
1799 11     -none- list
1800 11     -none- list
1801 11     -none- list
1802 11     -none- list
1803 11     -none- list
1804 11     -none- list
1805 11     -none- list
1806 11     -none- list
1807 11     -none- list
1808 11     -none- list
1809 11     -none- list
1810 11     -none- list
1811 11     -none- list
1812 11     -none- list
1813 11     -none- list
1814 11     -none- list
1815 11     -none- list
1816 11     -none- list
1817 11     -none- list
1818 11     -none- list
1819 11     -none- list
1820 11     -none- list
1821 11     -none- list
1822 11     -none- list
1823 11     -none- list
1824 11     -none- list
1825 11     -none- list
1826 11     -none- list
1827 11     -none- list
1828 11     -none- list
1829 11     -none- list
1830 11     -none- list
1831 11     -none- list
1832 11     -none- list
1833 11     -none- list
1834 11     -none- list
1835 11     -none- list
1836 11     -none- list
1837 11     -none- list
1838 11     -none- list
1839 11     -none- list
1840 11     -none- list
1841 11     -none- list
1842 11     -none- list
1843 11     -none- list
1844 11     -none- list
1845 11     -none- list
1846 11     -none- list
1847 11     -none- list
1848 11     -none- list
1849 11     -none- list
1850 11     -none- list
1851 11     -none- list
1852 11     -none- list
1853 11     -none- list
1854 11     -none- list
1855 11     -none- list
1856 11     -none- list
1857 11     -none- list
1858 11     -none- list
1859 11     -none- list
1860 11     -none- list
1861 11     -none- list
1862 11     -none- list
1863 11     -none- list
1864 11     -none- list
1865 11     -none- list
1866 11     -none- list
1867 11     -none- list
1868 11     -none- list
1869 11     -none- list
1870 11     -none- list
1871 11     -none- list
1872 11     -none- list
1873 11     -none- list
1874 11     -none- list
1875 11     -none- list
1876 11     -none- list
1877 11     -none- list
1878 11     -none- list
1879 11     -none- list
1880 11     -none- list
1881 11     -none- list
1882 11     -none- list
1883 11     -none- list
1884 11     -none- list
1885 11     -none- list
1886 11     -none- list
1887 11     -none- list
1888 11     -none- list
1889 11     -none- list
1890 11     -none- list
1891 11     -none- list
1892 11     -none- list
1893 11     -none- list
1894 11     -none- list
1895 11     -none- list
1896 11     -none- list
1897 11     -none- list
1898 11     -none- list
1899 11     -none- list
1900 11     -none- list
1901 11     -none- list
1902 11     -none- list
1903 11     -none- list
1904 11     -none- list
1905 11     -none- list
1906 11     -none- list
1907 11     -none- list
1908 11     -none- list
1909 11     -none- list
1910 11     -none- list
1911 11     -none- list
> output[[1]]
$theseParams
[1]   3   3 100 250   0

$error
               [,1]        [,2]       [,3]
  [1,]  0.106668439  0.05872828 -0.1653967
  [2,] -0.225321003  0.05160032  0.1737207
  [3,] -0.552225940  0.71959257 -0.1673666
  [4,]  0.121440598 -0.30096990  0.1795293
  [5,]  0.107817408  0.04947915 -0.1572966
  [6,] -0.225021044 -0.28307490  0.5080959
  [7,]  0.082443733 -0.28362381  0.2011801
  [8,]  0.119594374  0.04616418 -0.1657586
  [9,] -0.002332946  0.16516496 -0.1628320
 [10,]  0.108198623  0.05291062 -0.1611092
 [11,]  0.115206433 -0.27505333  0.1598469
 [12,] -0.224942937  0.39040487 -0.1654619
 [13,]  0.427679956 -0.26702191 -0.1606580
 [14,]  0.101085402 -0.28014775  0.1790623
 [15,]  0.452718503 -0.27980507 -0.1729134
 [16,]  0.445524645 -0.27629817 -0.1692265
 [17,]  0.131627662 -0.29301432  0.1613867
 [18,] -0.551823806  0.71940593 -0.1675821
 [19,] -0.219030098  0.05453261  0.1644975
 [20,] -0.230548913  0.38971613 -0.1591672
 [21,] -0.547983265  0.38302839  0.1649549
 [22,] -0.570087653  0.06349327  0.5065944
 [23,]  0.114341644  0.04596343 -0.1603051
 [24,]  0.444772089 -0.27980820 -0.1649639
 [25,] -0.224619938  0.38630126 -0.1616813
 [26,]  0.094855149  0.06218974 -0.1570449
 [27,]  0.037733127  0.12604901 -0.1637821
 [28,]  0.447410697 -0.27623752 -0.1711732
 [29,] -0.218284076  0.05319259  0.1650915
 [30,] -0.558481233 -0.27611102  0.8345923
 [31,]  0.108888578 -0.26965051  0.1607619
 [32,] -0.220943831  0.05417708  0.1667667
 [33,]  0.445267652 -0.27550662 -0.1697610
 [34,]  0.446030092 -0.27331464 -0.1727155
 [35,]  0.093488359  0.07752320 -0.1710116
 [36,] -0.543457564  0.05751932  0.4859382
 [37,] -0.226092860  0.05631806  0.1697748
 [38,] -0.230984764  0.40744353 -0.1764588
 [39,]  0.112380936  0.06315450 -0.1755354
 [40,] -0.548172855  0.29815972  0.2500131
 [41,] -0.234897807  0.05754544  0.1773524
 [42,] -0.563949730  0.06206232  0.5018874
 [43,]  0.450945565 -0.28545675 -0.1654888
 [44,] -0.223710771  0.39647728 -0.1727665
 [45,] -0.564860443  0.34554887  0.2193116
 [46,] -0.220499404  0.05995957  0.1605398
 [47,] -0.549976663  0.39014572  0.1598309
 [48,] -0.545805698  0.35261109  0.1931946
 [49,]  0.438237043 -0.28248640 -0.1557506
 [50,] -0.227245844  0.05185287  0.1753930
 [51,] -0.217850105 -0.28907038  0.5069205
 [52,] -0.556934938  0.71414538 -0.1572104
 [53,]  0.103199613  0.06399279 -0.1671924
 [54,] -0.221201052  0.04808564  0.1731154
 [55,] -0.208418285 -0.28315616  0.4915744
 [56,]  0.095434559 -0.26733931  0.1719047
 [57,]  0.112147246  0.05640947 -0.1685567
 [58,]  0.107338513  0.05744850 -0.1647870
 [59,]  0.440704288 -0.27505026 -0.1656540
 [60,]  0.099862729  0.06212754 -0.1619903
 [61,] -0.230908573  0.38977247 -0.1588639
 [62,]  0.077176154  0.09446711 -0.1716433
 [63,] -0.567715270  0.39422595  0.1734893
 [64,] -0.549290193  0.38809217  0.1611980
 [65,] -0.558499477  0.05908430  0.4994152
 [66,]  0.123576101 -0.29432942  0.1707533
 [67,] -0.229200286  0.05614302  0.1730573
 [68,]  0.443963383 -0.27837609 -0.1655873
 [69,] -0.559945914  0.37915313  0.1807928
 [70,] -0.084608318  0.24392773 -0.1593194
 [71,] -0.231525419  0.40362894 -0.1721035
 [72,] -0.007491550  0.17192878 -0.1644372
 [73,] -0.222786390  0.05348115  0.1693052
 [74,]  0.084112027  0.07299758 -0.1571096
 [75,]  0.055332347  0.11392976 -0.1692621
 [76,]  0.107048563  0.05667018 -0.1637187
 [77,]  0.043423645  0.12753866 -0.1709623
 [78,]  0.109981793  0.05701476 -0.1669966
 [79,]  0.093032064  0.07518632 -0.1682184
 [80,]  0.110590958  0.05035229 -0.1609432
 [81,]  0.445784880 -0.27130948 -0.1744754
 [82,] -0.545382873  0.39298417  0.1523987
 [83,] -0.554075080  0.39161356  0.1624615
 [84,] -0.033765672  0.20009233 -0.1663267
 [85,] -0.219872281 -0.28676894  0.5066412
 [86,] -0.211546485  0.38240730 -0.1708608
 [87,]  0.119791813 -0.27899681  0.1592050
 [88,]  0.447259716 -0.28374388 -0.1635158
 [89,]  0.101070740  0.06307710 -0.1641478
 [90,]  0.446905005 -0.27613259 -0.1707724
 [91,]  0.087102326 -0.26066647  0.1735641
 [92,]  0.113970069  0.05180838 -0.1657784
 [93,]  0.108910192  0.05887775 -0.1677879
 [94,]  0.447463398 -0.27352134 -0.1739421
 [95,]  0.111338491 -0.28902177  0.1776833
 [96,] -0.467532516  0.05182092  0.4157116
 [97,]  0.099942593 -0.27211608  0.1721735
 [98,] -0.234795454  0.06638173  0.1684137
 [99,]  0.112115988 -0.28638991  0.1742739
[100,] -0.221328280  0.37969673 -0.1583684

$model.crps
            [,1]
  [1,]  3.667572
  [2,]  5.688390
  [3,] 13.307988
  [4,]  7.110773
  [5,]  5.179494
  [6,]  5.944946
  [7,]  3.860704
  [8,]  4.377022
  [9,]  5.080289
 [10,]  4.754631
 [11,]  7.283100
 [12,] 10.347905
 [13,]  3.831654
 [14,]  4.159421
 [15,]  9.765096
 [16,]  3.113174
 [17,]  7.033026
 [18,] 11.194843
 [19,]  5.854114
 [20,]  6.909229
 [21,]  5.617751
 [22,]  9.990947
 [23,]  7.577704
 [24,]  5.500987
 [25,]  7.812340
 [26,]  2.577255
 [27,]  6.698321
 [28,] 10.317019
 [29,]  6.445994
 [30,] 16.172343
 [31,]  6.240258
 [32,]  8.104503
 [33,]  7.161296
 [34,]  9.749635
 [35,]  6.868730
 [36,] 11.066258
 [37,]  7.806363
 [38,]  6.682104
 [39,]  6.002625
 [40,]  8.352776
 [41,]  6.541501
 [42,] 11.933895
 [43,]  6.315618
 [44,]  7.424189
 [45,]  8.313120
 [46,]  6.366087
 [47,]  7.097254
 [48,]  8.581526
 [49,]  5.694534
 [50,]  4.730972
 [51,] 11.769302
 [52,]  6.878606
 [53,]  5.373881
 [54,]  6.797588
 [55,] 11.145141
 [56,]  4.607749
 [57,]  4.227355
 [58,]  5.161524
 [59,]  5.796111
 [60,]  4.423112
 [61,]  7.444577
 [62,]  4.846286
 [63,] 14.391948
 [64,]  7.868354
 [65,] 13.252297
 [66,] 10.578574
 [67,]  4.032152
 [68,]  5.808969
 [69,] 11.830227
 [70,]  5.098946
 [71,]  7.681896
 [72,]  5.856455
 [73,]  6.476036
 [74,]  3.276774
 [75,]  3.902441
 [76,]  3.414548
 [77,]  3.811140
 [78,]  6.743935
 [79,]  3.294159
 [80,]  5.039314
 [81,]  7.742678
 [82,] 10.277239
 [83,]  9.428005
 [84,]  3.330850
 [85,]  8.882327
 [86,]  7.036094
 [87,]  7.063190
 [88,]  4.240952
 [89,]  4.864202
 [90,]  7.975245
 [91,]  7.561170
 [92,]  4.029459
 [93,]  6.183498
 [94,]  5.254969
 [95,]  7.956760
 [96,]  8.172842
 [97,]  3.637106
 [98,]  6.633018
 [99,]  6.401945
[100,]  5.971115

$pred.mae
            EBMA   Model 1   Model 2   Model 3
  [1,]  4.984913  5.107577  9.844524 11.799284
  [2,]  8.391320  7.083074 12.060042 14.776504
  [3,] 13.638951  7.938853 13.638950  9.234758
  [4,]  8.752866  8.792530 10.656100 20.724277
  [5,]  7.154150  7.285455  8.674167 16.666354
  [6,] 10.078466  6.003637  9.386213 10.458670
  [7,]  4.490586  4.573853  6.625687 12.296613
  [8,]  6.395274  6.555508  8.741146 13.061372
  [9,]  7.408833  7.521016 10.885130 11.731835
 [10,]  6.731458  6.946525  6.946994 12.711011
 [11,] 10.213010 10.341067 15.170526 15.558016
 [12,] 17.716548 11.868574 18.066884 20.839276
 [13,]  4.317000  4.316999  7.936178  7.253893
 [14,]  5.095479  5.129455  7.590000 12.318483
 [15,] 10.119365 10.119364 17.691163 18.988569
 [16,]  3.362840  3.362839  4.172367  7.180063
 [17,]  9.988028 10.125708 12.819770 16.231146
 [18,] 11.444570 10.092775 11.444570 21.130937
 [19,]  8.560533  8.436995 11.156638 15.778816
 [20,] 12.550621  7.037607 12.912027 11.205608
 [21,]  9.212753  4.912501  9.672101  6.176378
 [22,] 16.085750  8.459155 16.343048 16.367069
 [23,] 11.474547 11.683334 16.655399 16.164126
 [24,]  5.922010  5.922009 10.130536 13.137771
 [25,] 12.807280  9.112946 12.935707 17.642724
 [26,]  3.373310  3.449882  7.524210  5.408359
 [27,]  8.769722  8.839500 12.606879 20.129841
 [28,] 10.626578 10.626578 16.466459 17.748964
 [29,] 10.363724 10.089440 11.955739 14.606753
 [30,] 16.782373  8.510313 12.720220 16.782371
 [31,]  7.178073  7.123658 11.559160 12.171005
 [32,] 12.051154 11.368311 15.203879 21.891540
 [33,]  7.402675  7.402674 10.078198 13.781627
 [34,] 10.114633 10.114633 14.061294 17.612890
 [35,] 10.060837 10.168042 18.576157 16.533667
 [36,] 12.411115  9.541199 11.640997 12.592674
 [37,] 12.045215 10.606531 14.903825 20.117262
 [38,] 12.196855  7.767319 12.448323 12.513077
 [39,]  8.383208  8.456097 14.620223 15.677160
 [40,] 12.563462  7.397170 12.900197 10.954969
 [41,] 11.479304  7.722247 13.420671 14.303029
 [42,] 16.175987  8.496969 14.877980 16.194440
 [43,]  6.748464  6.748464 11.201906 13.367682
 [44,] 12.711559  8.173574 12.855606 14.542418
 [45,] 11.684633  7.419216 11.835557 14.961877
 [46,] 10.109959  8.017965 12.643140 15.617161
 [47,]  9.418165  6.802540  9.524196 15.245878
 [48,] 11.236117  8.977280 11.395902 17.520988
 [49,]  6.164588  6.164586  8.804672 17.768794
 [50,]  6.322421  5.981691 12.656187 10.873267
 [51,] 20.171315 12.431749 14.859534 20.581258
 [52,]  7.885058  5.919435  7.885057 14.104562
 [53,]  7.157772  7.243971 14.889832 12.760172
 [54,]  9.793761  9.134314 13.824791 18.198948
 [55,] 17.456500 11.419890 13.791215 18.027201
 [56,]  5.155544  5.175519 11.006627  8.678145
 [57,]  5.352487  5.402608 11.503994  8.691208
 [58,]  7.708068  7.784412 10.384279 12.724814
 [59,]  6.041470  6.041470 10.353106 14.122380
 [60,]  5.556258  5.610337  8.948415 10.648093
 [61,] 12.835061  9.385954 12.906549 14.507612
 [62,]  6.236509  6.214447 10.422075 17.790347
 [63,] 19.078790 11.900721 19.232784 20.278123
 [64,] 13.249050  6.624345 13.608245  8.716358
 [65,] 17.659904  8.401428 15.371075 17.850549
 [66,] 14.047617 14.123561 18.633200 22.501887
 [67,]  6.532893  6.202078  8.199650  8.134310
 [68,]  6.116427  6.116426  8.308257 13.380332
 [69,] 16.632170 10.024617 16.843027 18.118771
 [70,] 11.645798  6.086287 12.433707 13.016004
 [71,] 13.364240  8.325489 13.767143 16.242238
 [72,]  7.852344  7.887848 11.401708 17.587645
 [73,] 10.820034  7.897989 14.092061 14.327419
 [74,]  4.689854  4.727875  7.544953  6.851966
 [75,]  5.065104  5.107834  7.780217  8.912141
 [76,]  4.841542  4.920395  8.922484  7.989535
 [77,]  5.175941  5.214164  8.516043 11.963993
 [78,]  9.458196  9.502527 14.297915 19.415082
 [79,]  5.130225  5.403219  6.702416  8.149197
 [80,]  6.904778  6.978645 10.957462 19.695244
 [81,]  8.139137  8.139137 14.786710 12.772230
 [82,] 13.066155 10.402360 13.235098 16.444181
 [83,] 12.142158 11.205357 12.245711 16.567730
 [84,]  5.321272  5.391619  6.265856  9.212629
 [85,] 16.565457  6.707223 11.683442 17.286822
 [86,] 11.756337  8.475409 12.007640 17.631378
 [87,]  9.503506  9.586429 13.424518 17.742541
 [88,]  4.819899  4.819899  7.771544  7.443411
 [89,]  6.847778  6.851683 11.271655 14.750040
 [90,]  8.374162  8.374162 16.254938 17.234541
 [91,]  9.851897  9.936945 14.382967 18.604906
 [92,]  5.554247  5.625029  9.061199 11.166849
 [93,]  8.746930  8.819338 13.324304 19.913449
 [94,]  5.519490  5.519490 10.313305 12.632302
 [95,] 10.544218 10.619211 14.979540 17.670598
 [96,] 12.832257  7.911262 13.770128 13.110657
 [97,]  4.589648  4.660741  7.736319  6.910004
 [98,] 10.353316  8.944890 16.481403 12.975191
 [99,]  7.710695  7.744011 15.824227 13.673776
[100,] 10.916125  6.669039 11.194958 12.017643

$pred.rmse
            EBMA   Model 1   Model 2   Model 3
  [1,]  8.537673  8.917301 13.949714 16.384804
  [2,] 13.050023 12.259945 17.670977 20.227689
  [3,] 19.809416 15.053749 19.809415 15.030458
  [4,] 14.428044 14.680203 15.521530 26.954671
  [5,] 12.613597 12.904018 12.488007 22.794997
  [6,] 13.238388 10.519720 13.165183 13.629841
  [7,]  7.849681  8.194905  9.460595 16.302066
  [8,] 10.514959 10.804258 12.797463 16.079928
  [9,] 12.488318 13.035265 15.949309 16.542776
 [10,] 11.267162 11.525195 10.643318 17.191202
 [11,] 18.109840 18.420642 22.555780 20.846693
 [12,] 25.811747 21.496532 26.176494 27.542150
 [13,]  7.357083  7.357083 10.898766  9.817948
 [14,]  9.254293  9.339206 10.569953 15.776337
 [15,] 18.524916 18.524916 26.521802 25.658223
 [16,]  5.673971  5.673970  5.641693  9.554961
 [17,] 16.515552 16.762122 18.745878 23.495754
 [18,] 17.445997 17.274414 17.445997 28.972459
 [19,] 13.150017 14.269913 16.727051 21.876356
 [20,] 18.244856 12.919800 18.644282 15.349065
 [21,] 12.554775  8.704527 13.147884  8.528298
 [22,] 22.440024 14.473286 24.010260 22.752036
 [23,] 20.536714 20.942905 23.746688 20.334650
 [24,] 10.834698 10.834697 14.166158 17.763694
 [25,] 18.041977 15.689021 18.181767 23.976373
 [26,]  5.725933  5.946216 10.567348  7.755826
 [27,] 14.871520 15.436536 18.728357 27.341035
 [28,] 18.296105 18.296105 22.611847 24.839731
 [29,] 15.492961 16.735583 18.615109 19.404578
 [30,] 22.948610 15.240191 19.386317 22.948609
 [31,] 11.704067 11.640587 16.294704 16.456523
 [32,] 18.598430 20.001123 21.906255 31.710765
 [33,] 12.670982 12.670981 15.543156 19.158422
 [34,] 17.487743 17.487742 20.151940 24.044375
 [35,] 19.044505 19.322197 26.045569 22.600367
 [36,] 18.799305 16.840444 17.891729 18.935891
 [37,] 18.436840 18.668879 22.160381 27.081257
 [38,] 17.231805 13.204694 17.536226 16.608506
 [39,] 14.052495 14.220826 21.214977 20.601167
 [40,] 18.388275 13.302242 18.924494 15.070837
 [41,] 17.459744 14.689718 19.860657 20.281395
 [42,] 21.984360 15.468033 20.981547 22.002853
 [43,] 12.168982 12.168981 16.401217 17.575883
 [44,] 17.458818 13.999154 17.611357 19.321925
 [45,] 16.703302 13.662106 17.018104 20.386212
 [46,] 15.091475 14.797892 18.050440 21.204474
 [47,] 13.261269 11.365466 13.506688 20.635499
 [48,] 16.012053 15.594807 16.425471 23.559016
 [49,] 11.453461 11.453460 13.026867 23.900721
 [50,] 10.071188 10.964331 17.652974 14.438328
 [51,] 29.040561 20.851635 21.886822 29.461354
 [52,] 11.501511 10.977451 11.501511 19.497179
 [53,] 12.973077 13.204566 21.328609 17.307717
 [54,] 15.694949 17.024384 20.371669 24.672663
 [55,] 23.349750 18.582052 21.249544 24.090379
 [56,]  9.130275  9.164086 14.787967 12.308992
 [57,]  9.089353  9.320324 16.497999 12.277538
 [58,] 13.286336 13.394675 15.401609 17.313784
 [59,] 11.333093 11.333094 15.306326 19.472707
 [60,]  9.162496  9.305982 12.706913 15.300548
 [61,] 18.842069 16.248728 18.921048 19.498347
 [62,] 11.675285 12.011054 15.561260 23.834298
 [63,] 26.729354 22.031099 26.905476 27.755580
 [64,] 18.622559 12.969535 19.043688 13.640519
 [65,] 24.709058 15.784772 21.371422 24.916297
 [66,] 24.161975 24.333443 27.372015 30.486761
 [67,]  9.654918 11.025659 12.024170 11.399001
 [68,] 10.305839 10.305838 12.053273 17.406541
 [69,] 23.938577 18.576225 24.281229 25.470145
 [70,] 16.874368 11.555660 17.858574 18.657312
 [71,] 20.160881 15.083556 20.695315 21.974485
 [72,] 13.193269 13.455846 16.254713 23.619798
 [73,] 16.171179 14.020817 19.842280 19.493959
 [74,]  7.865688  7.910507 10.729880  8.545234
 [75,]  8.767863  8.821061 11.062602 12.109286
 [76,]  8.451623  8.606574 12.906153 10.764284
 [77,]  8.973982  9.565127 12.475342 16.355141
 [78,] 16.624490 16.894787 21.705291 27.055269
 [79,]  8.475089  8.903755  9.439735 11.203548
 [80,] 11.748833 11.930678 14.769491 26.185570
 [81,] 15.009511 15.009510 20.899005 17.802474
 [82,] 19.604309 17.959510 19.893274 21.911110
 [83,] 18.849154 19.480839 19.066522 23.182214
 [84,]  9.204921 10.071731  9.011790 12.359296
 [85,] 21.377668 12.008784 16.785620 22.155443
 [86,] 16.915158 15.607346 17.175739 23.378928
 [87,] 17.598577 17.728734 18.749052 23.661126
 [88,]  7.672572  7.672570 10.580126 10.497066
 [89,] 12.358948 12.748936 16.475219 19.665058
 [90,] 14.734574 14.734573 23.122432 23.607714
 [91,] 18.806824 18.997800 21.249528 24.525051
 [92,]  9.531110  9.659768 13.238852 14.880391
 [93,] 16.160364 16.299776 19.062745 26.351126
 [94,]  9.721859  9.721859 14.970433 16.748046
 [95,] 18.542589 18.882018 22.461423 23.952923
 [96,] 17.505325 13.486606 18.372198 17.851575
 [97,]  7.666815  7.753669 11.303623  8.469370
 [98,] 15.570580 17.001805 24.585666 17.833442
 [99,] 13.971092 14.052305 22.523077 19.238043
[100,] 15.913688 12.563685 16.281566 16.582319

$pred.mad
            EBMA  Model 1   Model 2   Model 3
  [1,]  1.568296 1.325923  7.240918  8.530698
  [2,]  3.570960 1.660919  7.521369 10.967582
  [3,]  9.426736 1.513990  9.426743  4.969860
  [4,]  2.344569 1.792767  6.777007 18.254198
  [5,]  1.751451 1.632027  6.540290 12.799276
  [6,]  9.087502 1.386706  6.363602  9.613097
  [7,]  1.740269 1.306683  4.496106  9.549593
  [8,]  1.690518 1.623369  5.929968 12.792972
  [9,]  2.150416 1.430079  6.025828  8.684292
 [10,]  2.042401 2.097760  3.664078 10.056010
 [11,]  1.851652 1.509382  9.029183 11.393158
 [12,] 13.109546 1.432454 13.380834 16.841792
 [13,]  1.314905 1.314905  5.810606  5.250297
 [14,]  1.228738 1.214606  5.514378 11.021742
 [15,]  1.490522 1.490517 11.662257 15.080302
 [16,]  1.271347 1.271348  3.181936  5.894554
 [17,]  1.741690 1.637726  8.901119 10.577126
 [18,]  6.954783 2.231688  6.954782 16.197782
 [19,]  3.861251 1.613106  7.142189 12.032833
 [20,]  7.545419 1.312871  8.157151  8.407135
 [21,]  6.772387 1.375532  7.357964  4.583507
 [22,] 12.365350 1.644240 10.599745 12.597875
 [23,]  1.871974 1.802209 12.490726 15.764535
 [24,]  1.251348 1.251349  7.305403  9.683337
 [25,] 11.208171 1.493885 11.208172 14.299999
 [26,]  1.376544 1.348251  5.327503  3.415162
 [27,]  2.694558 1.963372  7.875308 15.544220
 [28,]  1.920417 1.920421 13.127065 13.830949
 [29,]  6.292052 2.023767  6.072572 11.963735
 [30,] 13.371166 1.573425  8.237354 13.371153
 [31,]  2.151633 1.665577  8.616390 10.439457
 [32,]  5.947336 1.578514 10.158753 16.356239
 [33,]  1.576567 1.576557  5.093136 11.128266
 [34,]  1.823143 1.823143  8.960593 14.239111
 [35,]  1.756437 1.569717 14.958874 12.652022
 [36,]  6.511597 1.578420  5.642352  6.811584
 [37,]  8.442648 1.638401  9.485032 16.630172
 [38,]  8.698887 1.662489  9.180498 10.188167
 [39,]  1.810093 1.515012  9.678733 12.435070
 [40,]  7.449866 1.341222  7.789254  8.377098
 [41,]  6.540130 1.215281  8.667188  9.583603
 [42,] 12.734856 1.386157 10.627805 12.771252
 [43,]  1.533889 1.533888  7.803693 10.786745
 [44,] 10.974416 1.661189 10.974416 11.835246
 [45,]  7.549490 1.441612  8.238325 11.158320
 [46,]  6.098644 1.238127  9.394104 12.384141
 [47,]  7.631032 1.574726  7.785280 12.223420
 [48,]  7.673526 1.483618  7.998397 14.110871
 [49,]  1.384988 1.384983  5.583775 14.563974
 [50,]  2.735597 1.295295  9.118643  9.137244
 [51,] 15.421589 1.931585  9.890917 15.946389
 [52,]  5.591961 1.303480  5.591961 10.268498
 [53,]  1.376367 1.230499 10.693283  9.640926
 [54,]  5.452403 1.429429 10.110658 14.874754
 [55,] 14.535338 2.009175  7.189568 15.651972
 [56,]  1.385700 1.360817  9.286232  5.901031
 [57,]  1.676204 1.371247  7.679144  6.658173
 [58,]  1.690839 1.724848  6.257183  9.389658
 [59,]  1.543264 1.543258  6.906918 10.324979
 [60,]  1.881564 1.593224  6.703881  7.536347
 [61,]  8.010612 1.549799  8.146025 10.532865
 [62,]  1.874372 1.200613  5.898273 14.300347
 [63,] 14.697480 1.237030 15.039074 15.641169
 [64,] 10.256092 1.461394 10.906216  4.888765
 [65,] 13.770755 1.189983 12.718986 14.252820
 [66,]  1.770398 1.608120 11.072032 18.744962
 [67,]  3.823293 1.383291  5.459600  5.904979
 [68,]  1.262953 1.262951  6.009797 11.479944
 [69,] 11.305663 1.384188 12.153935 12.855692
 [70,]  7.754727 1.011266  8.637128  9.529653
 [71,]  7.659276 1.548341  8.330696 12.405345
 [72,]  1.886315 1.398964  8.429875 13.833372
 [73,]  4.973498 1.575951 10.505152 11.272104
 [74,]  1.440621 1.494283  4.920988  6.528336
 [75,]  1.485777 1.442511  5.341460  6.907957
 [76,]  1.346689 1.335012  6.329981  6.413855
 [77,]  2.200595 1.286426  5.368938  9.112386
 [78,]  1.878291 1.449194  7.117480 14.824800
 [79,]  1.664642 1.608518  4.771842  5.450367
 [80,]  1.561237 1.452229  9.506055 16.139354
 [81,]  1.401374 1.401374 10.168080 10.023364
 [82,]  7.750068 1.643343  7.858109 13.064272
 [83,]  5.517286 1.848617  5.625820 11.032034
 [84,]  2.250304 1.174596  3.546656  7.136507
 [85,] 14.868746 1.354139  7.947754 15.774061
 [86,]  8.690203 1.291590  8.991831 14.603904
 [87,]  1.507428 1.398625 10.880535 13.919880
 [88,]  1.532387 1.532398  6.622547  5.328309
 [89,]  1.814753 1.352353  7.131954 11.423579
 [90,]  1.547745 1.547744 11.227716 13.574683
 [91,]  1.638130 1.397669  9.307968 15.607325
 [92,]  1.369934 1.262625  6.412061  8.498383
 [93,]  1.505028 1.392679  9.192123 16.520259
 [94,]  1.231735 1.231733  6.891304 10.927094
 [95,]  2.013709 1.728030  8.637001 13.454433
 [96,]  9.865069 1.787141 12.394243  9.477223
 [97,]  1.344652 1.392075  4.875810  6.643313
 [98,]  5.798670 1.390322 10.048365 10.609160
 [99,]  1.440007 1.362157 10.784223 10.068113
[100,]  8.007248 1.412194  8.198742  9.062699

$pred.rmsle
            EBMA   Model 1   Model 2   Model 3
  [1,] 0.6569500 0.5851577 1.1783529 1.2875942
  [2,] 1.1063194 1.0591460 1.2412961 1.4613367
  [3,] 0.6187592 0.4100103 0.6187590 0.8043488
  [4,] 0.6516361 0.6701086 1.0373054 1.3370291
  [5,] 0.6930591 0.7061987 1.6358745 1.8395138
  [6,] 1.1353410 0.5480612 0.9893231 1.1589968
  [7,] 0.5167161 0.5411179 0.9560128 1.4577464
  [8,] 0.4436466 0.4562746 0.8396684 0.4867128
  [9,] 0.5789985 0.5678919 0.9365260 1.0331246
 [10,] 0.5589948 0.6062610 0.8289018 1.2295649
 [11,] 0.8295940 0.8180840 1.1450060 1.7887510
 [12,] 1.0684436 0.8268581 1.0776355 1.2488979
 [13,] 0.5559465 0.5559463 0.8877300 0.9440324
 [14,] 0.5015664 0.5159026 0.7618985 1.3704657
 [15,] 0.6744990 0.6744996 1.2712602 1.2831534
 [16,] 0.4918695 0.4918692 0.4002782 1.0289709
 [17,] 0.6810521 0.6774805 0.8159838 0.9944305
 [18,] 1.0232467 0.7620298 1.0232460 1.2346594
 [19,] 0.9356950 0.8185553 1.0996500 1.3008045
 [20,] 1.1507280 0.6186696 1.1994808 0.7671652
 [21,] 0.8054611 0.3439549 0.8279645 0.9466585
 [22,] 0.9565941 0.5980801 1.2432386 0.9706520
 [23,] 0.6254423 0.6524551 0.8878480 0.8601054
 [24,] 0.5664976 0.5664979 1.1001362 1.1210099
 [25,] 0.5353242 0.3716474 0.5321472 1.1933583
 [26,] 0.5009428 0.4994321 0.8009682 0.5662606
 [27,] 0.4630675 0.4777489 0.6061753 1.1076020
 [28,] 0.7098312 0.7098309 1.4696466 1.3223227
 [29,] 1.1577609 0.8971893 1.0092673 1.2839727
 [30,] 1.0809798 0.4032714 0.7853061 1.0809795
 [31,] 1.7240071 1.1960482 1.7880667 1.1554889
 [32,] 1.0781514 0.7422137 1.2886016 1.5003331
 [33,] 0.8817595 0.8817595 1.2222251 1.4602120
 [34,] 0.6980654 0.6980652 1.0623091 1.2070099
 [35,] 0.7463952 0.7601661 1.5437661 2.3993249
 [36,] 1.9165248 1.6640075 2.0066579 1.7259371
 [37,] 1.2909733 0.9975307 1.4426033 1.6346801
 [38,] 0.9487499 0.5825439 0.9369161 1.0498509
 [39,] 0.7876571 0.7845620 1.1599590 0.9844605
 [40,] 1.2535139 0.7464317 1.2571149 1.1909157
 [41,] 1.6961524 0.8355265 1.6774983 1.7482119
 [42,] 1.0335361 0.5648229 0.9456391 1.0343263
 [43,] 0.5935031 0.5935029 0.9767751 1.0615961
 [44,] 0.9527007 0.5711707 0.9397662 1.0790994
 [45,] 1.0028928 0.7747879 0.9759929 1.3235503
 [46,] 1.1020688 0.7725419 1.2345220 1.4744347
 [47,] 0.9068800 0.7268340 0.9117615 1.4918653
 [48,] 1.2335682 0.7838094 1.2079217 1.5921908
 [49,] 0.5414324 0.5414321 0.9712551 1.3524452
 [50,] 0.7730021 0.6424276 1.1796995 1.2523456
 [51,] 1.3917799 0.8852942 1.2393390 1.4328016
 [52,] 1.3268750 0.6588456 1.3268743 1.5024582
 [53,] 0.7021891 0.6724214 1.0551359 1.0391270
 [54,] 0.9908319 0.8104700 1.1971359 1.4132551
 [55,] 1.3127977 0.8217196 0.9318706 1.2588224
 [56,] 0.4752492 0.4897181 0.9951804 0.7736686
 [57,] 0.6137754 0.5794967 1.3993839 0.9031575
 [58,] 0.6214069 0.6209911 0.8220351 1.1016772
 [59,] 0.6360123 0.6360123 0.9555733 1.2449386
 [60,] 0.7619033 0.7488543 0.9255519 1.2657078
 [61,] 1.1152687 0.7263652 1.1164196 1.2543775
 [62,] 0.4192022 0.4133014 0.5740286 1.0446656
 [63,] 1.3156078 0.6440704 1.3334315 1.2609182
 [64,] 1.5089519 0.6724319 1.5216802 1.2603253
 [65,] 1.3397767 0.6897219 1.2316899 1.3521194
 [66,] 0.7626373 0.7541604 0.9758556 1.3029092
 [67,] 0.6438166 0.5771230 0.8668665 0.8310893
 [68,] 0.6555011 0.6555006 0.8784118 1.1735696
 [69,] 0.9630192 0.4910432 0.9601012 1.1499300
 [70,] 1.6682567 0.8009945 1.8309146 1.5907776
 [71,] 0.9156740 0.6258702 0.9545243 1.1219130
 [72,] 0.7237943 0.6911380 1.1672174 1.2781640
 [73,] 1.6644504 0.8409873 1.3722484 1.9797101
 [74,] 0.5495324 0.5545207 0.8400446 1.5717528
 [75,] 0.6744145 0.6824998 0.9869632 1.0508505
 [76,] 0.4727012 0.4829370 0.9638839 1.1157783
 [77,] 0.4575988 0.4790390 0.8844079 1.1243433
 [78,] 1.5616940 1.4466863 1.9341116 2.4114997
 [79,] 0.4079809 0.3826420 0.4257909 0.6181931
 [80,] 0.3356931 0.3440519 0.6995680 0.9968179
 [81,] 0.6450988 0.6450989 1.2650798 1.0091824
 [82,] 0.8713604 0.6152846 0.8823461 1.3337241
 [83,] 0.8942888 0.6988574 0.9355553 1.1452463
 [84,] 0.4136061 0.4206023 0.7323835 0.9734604
 [85,] 1.3426643 0.6363964 0.8903097 1.3367165
 [86,] 1.4350448 0.7204286 1.4580847 1.5405971
 [87,] 0.7204449 0.7256732 1.3583192 1.2865243
 [88,] 0.5081372 0.5081369 0.8800591 1.0096668
 [89,] 0.4659820 0.4873063 0.9788694 1.0632690
 [90,] 0.6930157 0.6930157 1.4465475 1.3687317
 [91,] 0.6249630 0.6436984 1.2607415 1.3792178
 [92,] 0.5734846 0.5512093 0.8319384 1.0212374
 [93,] 0.7255100 0.7263182 0.9019487 1.3438501
 [94,] 0.6561162 0.6561163 0.9032293 1.2721118
 [95,] 0.6412422 0.6158090 1.2400540 1.2630391
 [96,] 0.8965783 0.5845884 0.9494210 0.8870298
 [97,] 0.5122947 0.4785153 1.0088014 0.6346669
 [98,] 1.7087044 0.8123417 1.3819202 2.6605574
 [99,] 1.2975549 1.2643627 2.1614725 1.9541137
[100,] 1.3397870 0.9235506 1.3488439 2.4841497

$pred.mape
             EBMA     Model 1    Model 2      Model 3
  [1,]  122.90467   129.07435  479.39359    444.97017
  [2,]  261.13267   475.19660  647.81154   1243.50913
  [3,]  207.76436   107.74538  207.76435     97.57337
  [4,]  163.89792   159.51245  199.58016    509.15166
  [5,]  350.44503   374.40061  149.15642    962.78541
  [6,]  450.24563   524.23190  675.98217    474.11345
  [7,] 1282.02885  1377.91297  169.13182    705.83768
  [8,]   99.43596   104.71222  193.88363    260.68046
  [9,]  183.32651   195.05031  240.71941    328.47044
 [10,]  300.62457   318.68457   94.79117    634.78469
 [11,]  301.45832   322.47833  372.95296    323.45328
 [12,]  592.47801   385.30861  597.59436    283.97616
 [13,]  400.96041   400.96029 1107.24838   2196.80403
 [14,]  226.36596   228.02328  208.59982    664.60057
 [15,]  189.28817   189.28797  393.19075    482.48793
 [16,]   87.25898    87.25897  207.26282    461.85784
 [17,]  202.08515   205.88014  154.44893    187.11417
 [18,]  133.77193   225.51572  133.77192    480.37138
 [19,]  234.49510   128.91224  801.97257    701.57366
 [20,] 1414.92256   244.29169 1528.16102   1241.42339
 [21,]  363.56734   807.01450  418.32003    539.87738
 [22,]  227.11202    94.41412  294.36762    232.96078
 [23,]  699.40610   746.86885  603.46277    213.51035
 [24,]  275.01597   275.01589  185.48354    212.49211
 [25,]  208.60302   101.84282  214.44856    526.53076
 [26,]  191.49690   199.17798  319.41911    187.38278
 [27,]   91.57614    87.52818  139.66457    309.08388
 [28,]  251.08330   251.08332  272.53600    506.48187
 [29,]  236.24185   333.63512  394.50379    358.08531
 [30,]  390.26739   161.65254  148.96181    390.26731
 [31,]  565.30503  1040.38204 1044.91362  10798.49539
 [32,]  190.13294   288.49319  228.88822    832.02783
 [33,]  112.82608   112.82612  788.78610    647.39013
 [34,]  333.32572   333.32559  220.62895    904.48548
 [35,]  358.13481   372.14634  628.58250    136.51660
 [36,]  487.68908   908.00136 1260.32065    566.30806
 [37,]  328.09607   421.51007  256.58355    791.07761
 [38,]  370.33944   151.05425  375.24536    281.71347
 [39,]  161.68641   161.25550  434.70548    268.37972
 [40,] 1666.93180   294.07521 1780.13267    853.98339
 [41,]  149.01665   677.78215  334.74887    516.02736
 [42,]  271.72632   202.60458  201.96223    272.39349
 [43,]  139.54590   139.54597  440.08392    358.53979
 [44,]  135.34546   216.55283  138.39708    393.99779
 [45,]  347.72871   175.68623  358.15480    429.94350
 [46,]  277.67939   374.87672  157.11955    485.93272
 [47,]  741.35638   206.39992  752.21143   1537.83219
 [48,] 5585.04683 52708.62186 2842.29774 108039.28758
 [49,]  190.79685   190.79679  160.05287    644.10447
 [50,]  157.05390   143.58243  524.78731    454.57428
 [51,]  449.33240   238.36266  145.21950    462.93396
 [52,]  292.18602   717.45515  292.18620   1359.07000
 [53,]  143.54772   144.66327  576.03465    205.50832
 [54,]  205.70958   884.40811  330.24167    770.72595
 [55,]  280.33388    99.67619  260.29158    296.60941
 [56,]  106.21338   104.93782  408.98779    338.23975
 [57,]  272.67348   232.08651 1327.38746    307.68054
 [58,]  262.59763   259.54343  451.10869    430.28848
 [59,]  131.31791   131.31797  261.10336    531.81892
 [60,]  298.16157   319.16356  377.27118   1145.90647
 [61,]  300.11264   344.87299  304.07019    463.36201
 [62,]  131.50968   129.32703  174.60089    289.99698
 [63,]  274.73044  1185.34171  246.10999   1521.95818
 [64,]  879.56130   370.31795  903.91860    114.99807
 [65,]  410.79661   368.30287  162.55194    423.44829
 [66,]  310.64712   297.97113 1714.84211    745.76954
 [67,]  176.82069   189.42184  355.95644    212.02826
 [68,]  357.33675   357.33703 2471.85126   2482.07203
 [69,]  208.35794   120.16168  210.39276    352.25532
 [70,]  298.26989   566.75429  371.67961    590.59606
 [71,]  323.37772   996.33364  337.13264    306.17394
 [72,]  130.27645   144.81410  795.22186    951.20788
 [73,]  158.86545   410.86339  372.90116    233.07998
 [74,]  472.93291   478.05333  758.97881    126.43600
 [75,]  120.72843   122.78480  432.05479    460.51230
 [76,]  294.67537   299.66232  521.26976    335.13271
 [77,]  187.32115   203.42508  123.46641    321.44914
 [78,]  152.81072   120.47278 1141.55192   2623.51668
 [79,]   92.55009    99.44179  213.11531    210.90562
 [80,]  143.37895   148.51303  118.08289    318.18706
 [81,]  317.38081   317.38088 3186.10571   1182.86650
 [82,]  289.80646   225.83820  283.61088    432.77757
 [83,]  152.40054   222.26251  157.16513    271.60766
 [84,]  126.95824   155.64090  149.01419    306.48254
 [85,]  369.01040   158.27447  248.28180    394.65424
 [86,]  549.02036   844.40899  503.22450  10249.11900
 [87,]  762.14188   771.83269  200.93048    588.98776
 [88,]  555.49480   555.49474  686.84061    289.83366
 [89,]  128.48722   132.46635  238.31502    314.29448
 [90,]  163.10910   163.10898  754.65077    712.01891
 [91,]  265.49729   267.54100  307.05558    314.58505
 [92,]  277.20446   285.22971  371.15047    382.54986
 [93,]  563.97882   568.54661  210.83876    562.97392
 [94,]  125.64207   125.64204  633.33514    727.21859
 [95,]  157.95020   156.10076  289.68667    330.76387
 [96,]  258.44497   381.87214  337.57999    266.33855
 [97,]  168.18578   179.14230  568.87590    347.88983
 [98,]  162.39118   351.12065  551.15216    112.98666
 [99,]  114.59956   112.30217 1041.87646    857.73022
[100,]  383.71557   819.33978  383.51877    120.49048

$pred.meape
            EBMA  Model 1   Model 2   Model 3
  [1,]  46.87645 39.40011 166.06923 139.01615
  [2,]  77.42349 53.80338 157.59599 153.60183
  [3,] 133.99986 17.26811 133.99985  63.83956
  [4,]  43.20259 29.58880  83.36690 179.56449
  [5,]  44.62485 39.85965  97.58333 229.13353
  [6,] 114.00725 32.48308 101.75213 118.31824
  [7,]  36.18628 28.86848  91.45968 184.80496
  [8,]  33.42703 30.29656  79.87039 161.93648
  [9,]  44.49055 28.30866  93.10474 113.05148
 [10,]  37.73071 34.86804  80.61167 153.06663
 [11,]  25.77025 25.80158  96.66443 100.20480
 [12,]  93.63945 15.97574  97.94851 118.26418
 [13,]  32.08435 32.08435 119.95249 103.26710
 [14,]  36.69994 41.12185 115.79696 185.75178
 [15,]  18.13031 18.13030  98.06962 123.30887
 [16,]  51.84382 51.84386  76.29724 196.07735
 [17,]  24.38138 25.34629  65.63831 101.33569
 [18,]  70.15729 32.02322  70.15722 168.77189
 [19,]  59.17048 43.64136  89.66584 138.72576
 [20,] 110.66511 37.50566 114.28581 123.33493
 [21,] 144.59367 32.75269 154.53007  82.95821
 [22,] 132.89939 30.96074 149.34974 133.51434
 [23,]  21.90736 23.02707 114.11921 119.49930
 [24,]  15.90238 15.90266  79.67731 107.26756
 [25,] 117.30448 23.99170 118.76825 145.22239
 [26,]  39.51968 37.45490 136.06588 105.01808
 [27,]  32.33817 29.72811  57.01122 126.03422
 [28,]  23.53873 23.53845 107.85448 105.56801
 [29,]  76.19136 39.75227  89.78196 118.52115
 [30,] 117.98757 17.19733  82.67629 117.98769
 [31,]  76.01647 85.86808 222.26767 255.41560
 [32,]  68.39171 40.96900  92.87446 126.35934
 [33,]  61.34193 61.34193 103.44681 152.22660
 [34,]  27.32659 27.32658 109.28959 140.02359
 [35,]  21.68028 16.87694 102.60261  98.41974
 [36,] 108.03592 25.40122  96.47918 110.56741
 [37,]  66.74153 21.46258  84.17825 128.00338
 [38,] 120.59633 35.24831 123.71047 114.60311
 [39,]  41.42630 37.88422 116.33885 144.99479
 [40,] 100.30789 25.08651  98.59580  83.41235
 [41,]  83.28700 14.56880  94.79232 104.20480
 [42,] 121.98220 17.94316 108.30821 122.19020
 [43,]  29.79924 29.79921 107.95488 142.54388
 [44,] 105.69268 26.88250 106.26761 120.10782
 [45,] 106.90552 33.11402 107.33211 142.50699
 [46,]  56.17549 11.20361  76.51441  98.41559
 [47,] 129.24792 47.03954 131.36307 194.06968
 [48,]  91.59237 34.78996  83.84956 166.50092
 [49,]  24.59086 24.59086  70.76677 183.30993
 [50,]  55.17996 26.80924 136.28256 120.18044
 [51,] 122.26063 36.55079  92.13281 126.21062
 [52,]  93.77769 28.80208  93.77769 208.21190
 [53,]  19.81115 17.44944 108.49687 100.18159
 [54,]  51.83423 23.30401  90.46082 148.81120
 [55,] 116.29978 41.27545  78.32638 128.27088
 [56,]  35.24878 37.39491 159.11500 110.58174
 [57,]  50.67978 41.44261 198.20175 129.77539
 [58,]  39.61674 37.37393  93.11441 112.52519
 [59,]  28.35676 28.35676 101.97533 156.98707
 [60,]  56.19562 56.82320 130.18805 155.85418
 [61,]  92.92689 39.55396  94.29927 112.74483
 [62,]  25.91118 17.99326  75.77558 160.25687
 [63,] 111.45883 11.08776 112.49055 121.24720
 [64,] 141.98400 29.81364 149.61870  74.93299
 [65,]  96.28626 11.05767  79.60529  97.49382
 [66,]  25.43415 26.66419  67.68613 107.87919
 [67,]  49.88096 26.42785  67.44738  68.03784
 [68,]  45.86856 45.86850 111.85149 180.19031
 [69,]  98.12750 18.61167 103.31548 112.99811
 [70,]  89.87715 15.24234  97.20956 102.36213
 [71,]  72.16228 17.08607  77.62423 112.95943
 [72,]  31.81962 24.15706  80.73138 129.91871
 [73,]  67.98759 17.37503 100.06081 106.33559
 [74,]  17.07959 17.96200  76.14141  87.58439
 [75,]  34.10798 32.02169  72.07188 109.10154
 [76,]  31.46180 28.64730 118.80652 105.48109
 [77,]  25.05346 18.53475  73.61887 100.11491
 [78,]  84.48999 81.94192 167.13781 226.27680
 [79,]  35.64435 38.98926  57.98065 107.19967
 [80,]  15.24857 16.52357 101.86001 191.66293
 [81,]  25.08635 25.08653 127.60398 115.39451
 [82,]  78.22504 27.90900  79.70186 114.39989
 [83,]  72.73911 43.72891  71.28145 118.24136
 [84,]  24.91340 16.97576  49.30404  81.69013
 [85,] 140.04976 16.81691  86.03409 149.12444
 [86,]  82.27601 20.25792  89.01340 133.60136
 [87,]  15.61252 17.95800  81.92131 109.51462
 [88,]  23.09151 23.09153  75.20963  81.75993
 [89,]  29.49516 18.81630  91.67687 148.54827
 [90,]  35.49865 35.49866 165.33194 157.31039
 [91,]  15.87835 12.57987  73.21255 107.61785
 [92,]  34.65043 30.68662 109.19374 130.14843
 [93,]  15.38729 14.65878  79.59391 130.31748
 [94,]  37.41614 37.41642 142.58372 192.74296
 [95,]  31.69128 33.54733  86.94139 120.59424
 [96,] 106.24373 23.00449 118.60840 115.55413
 [97,]  56.06362 54.45075 156.94068 168.31697
 [98,]  84.39615 24.94083 129.42371  98.29230
 [99,]  64.43445 68.52036 305.82736 217.13274
[100,]  90.91239 15.24243  92.56375 104.74172

$pred.mrae
            EBMA   Model 1   Model 2   Model 3
  [1,] 0.5887360 0.5566001 1.9449867 1.8316062
  [2,] 0.8635317 0.5001236 1.3213819 1.5051741
  [3,] 1.6383304 0.2515438 1.6383303 0.8554750
  [4,] 0.6595168 0.5975779 1.0504098 2.5151469
  [5,] 0.4132587 0.4484649 0.9668366 2.4622794
  [6,] 1.3338257 0.2834273 1.1033875 1.3912640
  [7,] 0.4970348 0.4346238 1.1009439 2.4864536
  [8,] 0.4684163 0.5408267 1.1584723 2.2455454
  [9,] 0.5888301 0.4236934 1.3708569 1.4574071
 [10,] 0.7852008 0.8441282 0.9311749 2.2075024
 [11,] 0.3892302 0.4549134 1.6533115 1.4979452
 [12,] 1.1893634 0.1713190 1.2211630 1.5232777
 [13,] 0.6130314 0.6130314 1.9488922 1.5840050
 [14,] 0.4075663 0.4092669 1.2338280 2.4667109
 [15,] 0.3113218 0.3113217 1.5962391 1.5707256
 [16,] 0.7674900 0.7674901 1.1571207 2.4738222
 [17,] 0.5659058 0.5751606 1.2394793 1.5966587
 [18,] 0.9488061 0.5015453 0.9488059 2.0662443
 [19,] 0.7701596 0.5642585 1.0899596 1.7474448
 [20,] 1.4687339 0.3298025 1.5444707 1.2245045
 [21,] 1.5661933 0.2862021 1.6963889 0.8924413
 [22,] 1.4238396 0.3350870 1.5434911 1.4712036
 [23,] 0.4945912 0.4872092 1.5304908 1.4607257
 [24,] 0.3637750 0.3637771 1.5027032 1.9400578
 [25,] 1.0960237 0.2271463 1.1061242 1.6335096
 [26,] 0.6709377 0.6929272 2.3149151 1.3446333
 [27,] 0.6641679 0.4280516 1.1228247 2.3320507
 [28,] 0.3630755 0.3630757 1.4987611 1.6899944
 [29,] 0.9004031 0.7138012 1.1807062 1.2745881
 [30,] 1.5079406 0.3246239 1.0610327 1.5079400
 [31,] 0.7941894 0.8536617 1.8543470 1.7480934
 [32,] 0.8042323 0.3787518 0.9747258 1.5484567
 [33,] 0.5773351 0.5773346 1.4410432 1.7557942
 [34,] 0.4772777 0.4772807 1.2350098 1.7542451
 [35,] 0.2657624 0.2310804 1.8624535 1.3551240
 [36,] 1.2781231 0.3658936 1.1506756 1.2705077
 [37,] 0.8855594 0.2387781 1.0777759 1.4880707
 [38,] 1.3462591 0.2777540 1.3708605 1.1320808
 [39,] 0.5128676 0.5169366 1.6800542 1.6607284
 [40,] 1.3702581 0.3019993 1.4324959 1.0460579
 [41,] 1.0648098 0.2424851 1.2542005 1.3144823
 [42,] 1.3807117 0.2547568 1.1137514 1.3817872
 [43,] 0.4381115 0.4381127 1.7050470 1.6753951
 [44,] 1.2483036 0.3318455 1.2736828 1.4467928
 [45,] 1.1973088 0.2873545 1.1998966 1.7372970
 [46,] 0.9285389 0.2545955 1.1532932 1.3492619
 [47,] 1.1377113 0.3848090 1.1181090 1.9154845
 [48,] 1.0434004 0.3038872 1.0354614 1.8619863
 [49,] 0.3386821 0.3386819 1.0014266 2.6373540
 [50,] 0.8336514 0.3616857 1.9847980 1.3412197
 [51,] 1.3815636 0.3963728 0.8825634 1.4287303
 [52,] 1.0841862 0.3126200 1.0841859 2.2340224
 [53,] 0.4537450 0.4595014 1.9840895 1.3229517
 [54,] 0.8081939 0.3016252 1.1721236 1.7554175
 [55,] 1.4016591 0.4388455 0.9356213 1.4585719
 [56,] 0.5736664 0.5778539 2.7378893 1.3116139
 [57,] 0.6637661 0.5492609 2.0645192 1.4992415
 [58,] 0.5337866 0.5637348 1.2961095 1.6433412
 [59,] 0.4894760 0.4894736 1.2527871 2.1806441
 [60,] 0.8034925 0.7184100 1.4741287 2.0427436
 [61,] 1.1892745 0.3429778 1.1740187 1.2905794
 [62,] 0.5136336 0.3754123 1.0948397 2.7610396
 [63,] 1.3066397 0.1702266 1.2954705 1.2807321
 [64,] 1.6118574 0.2734883 1.7025811 0.8160777
 [65,] 1.3695633 0.1154608 1.1854901 1.3863632
 [66,] 0.3326867 0.3645337 1.3365292 1.6095816
 [67,] 0.9822044 0.4842462 1.1897259 1.2105899
 [68,] 0.6026810 0.6026840 1.3389011 2.1899945
 [69,] 1.2785907 0.2271045 1.2443995 1.4913199
 [70,] 1.1797523 0.1991338 1.3027552 1.3059430
 [71,] 1.1892542 0.3111175 1.1722185 1.6171222
 [72,] 0.5429374 0.4776995 1.2783786 2.0940217
 [73,] 0.9019956 0.2985368 1.2814524 1.3161476
 [74,] 0.6659821 0.6739484 1.7547786 1.5420300
 [75,] 0.5891075 0.6350397 1.5529670 1.6444143
 [76,] 0.4788057 0.4435449 1.8353618 1.3995675
 [77,] 0.5510264 0.4609889 1.2682450 1.9923716
 [78,] 0.4426093 0.4298481 1.3462657 1.8930948
 [79,] 0.5900336 0.6023987 1.4759858 1.7704076
 [80,] 0.3021331 0.2707542 1.1317569 2.2641242
 [81,] 0.4167834 0.4167836 2.0155320 1.4117430
 [82,] 1.1649487 0.4704246 1.1372945 1.4184328
 [83,] 0.9549152 0.4883655 0.9624434 1.4359537
 [84,] 0.7411227 0.5102098 1.0365068 1.9620840
 [85,] 1.5582538 0.1910447 0.8770642 1.6378247
 [86,] 1.0257328 0.1995372 1.0430672 1.6797267
 [87,] 0.3238621 0.3186597 1.2895797 1.8896153
 [88,] 0.8512581 0.8512524 1.5396579 1.6131628
 [89,] 0.4707708 0.3550282 1.4245853 2.0774468
 [90,] 0.3062668 0.3062662 1.4609517 1.7612877
 [91,] 0.3192452 0.3525823 1.3915742 1.9017615
 [92,] 0.5313771 0.4720199 1.4634824 1.8275647
 [93,] 0.2497897 0.2383063 1.1703726 1.9685761
 [94,] 0.4880526 0.4880528 1.7866069 2.2539362
 [95,] 0.3843561 0.4209237 1.2896070 1.5557792
 [96,] 1.2801386 0.3032520 1.3496274 1.3196855
 [97,] 0.6735835 0.8042948 2.0154332 1.4668561
 [98,] 0.8709853 0.4135235 1.6084260 1.1233566
 [99,] 0.3615885 0.3237343 1.9263702 1.4455384
[100,] 1.1725656 0.1868858 1.2369208 1.3097808

$pred.pw
       EBMA Model 1 Model 2 Model 3
  [1,] 36.0    36.4    61.2    68.4
  [2,] 38.4    37.6    58.0    70.4
  [3,] 65.6    34.4    65.6    44.8
  [4,] 40.8    38.4    52.0    79.6
  [5,] 41.6    42.0    48.8    73.2
  [6,] 67.6    33.2    52.8    69.2
  [7,] 35.6    35.2    54.8    76.8
  [8,] 38.0    36.8    53.6    72.4
  [9,] 38.8    38.8    56.8    60.8
 [10,] 48.0    48.8    48.4    68.0
 [11,] 41.6    41.6    59.2    64.0
 [12,] 58.4    38.0    57.6    60.4
 [13,] 40.4    40.4    66.8    64.8
 [14,] 36.8    36.4    59.6    76.0
 [15,] 38.8    38.8    59.2    66.8
 [16,] 44.0    44.0    58.0    74.4
 [17,] 44.0    44.8    55.2    60.0
 [18,] 47.6    42.4    47.6    69.2
 [19,] 34.8    37.2    54.0    68.8
 [20,] 64.4    33.2    64.8    55.2
 [21,] 67.6    35.6    67.6    46.0
 [22,] 66.4    32.4    56.0    69.2
 [23,] 43.6    42.0    57.6    65.2
 [24,] 38.4    38.4    60.4    71.2
 [25,] 55.2    36.4    55.6    67.2
 [26,] 40.4    40.8    70.0    62.4
 [27,] 40.4    36.8    52.4    72.8
 [28,] 42.4    42.4    61.6    66.0
 [29,] 42.8    44.0    54.4    66.0
 [30,] 70.0    30.8    51.6    70.0
 [31,] 42.0    41.2    63.2    70.8
 [32,] 33.6    41.2    49.2    64.8
 [33,] 39.6    39.6    55.6    64.4
 [34,] 39.6    39.6    54.4    66.4
 [35,] 40.0    41.2    67.2    60.0
 [36,] 63.6    46.0    57.6    63.2
 [37,] 40.0    37.2    52.4    69.2
 [38,] 62.0    41.6    62.8    57.6
 [39,] 38.0    37.6    58.0    70.4
 [40,] 66.4    35.6    65.2    52.4
 [41,] 56.4    41.6    63.2    72.0
 [42,] 66.8    35.6    53.2    66.8
 [43,] 35.2    35.2    58.8    71.2
 [44,] 62.0    39.6    61.6    60.4
 [45,] 60.0    33.6    57.6    66.4
 [46,] 41.6    39.6    56.0    69.2
 [47,] 54.4    38.0    53.2    69.2
 [48,] 52.8    37.6    51.6    66.8
 [49,] 33.6    33.6    50.0    76.0
 [50,] 39.2    38.0    66.0    63.6
 [51,] 68.0    42.0    46.8    69.6
 [52,] 52.0    34.8    52.0    71.6
 [53,] 35.6    36.8    66.0    61.6
 [54,] 36.0    34.4    58.0    69.6
 [55,] 68.4    41.2    48.4    69.6
 [56,] 37.6    38.0    66.8    62.4
 [57,] 38.4    39.6    69.6    62.0
 [58,] 40.8    41.6    54.8    65.2
 [59,] 36.0    36.0    58.8    71.6
 [60,] 42.4    41.2    60.4    65.6
 [61,] 56.8    42.8    56.8    60.8
 [62,] 35.2    31.6    52.8    74.8
 [63,] 62.0    33.6    62.0    60.4
 [64,] 69.6    32.8    69.6    44.0
 [65,] 67.2    35.6    54.8    67.2
 [66,] 40.4    40.8    53.6    64.8
 [67,] 44.8    42.0    58.8    60.8
 [68,] 37.2    37.2    59.2    74.8
 [69,] 59.2    32.8    58.4    62.4
 [70,] 64.8    34.8    68.0    67.6
 [71,] 56.8    34.0    56.8    65.6
 [72,] 37.6    35.6    56.0    69.6
 [73,] 44.0    40.4    63.6    65.6
 [74,] 45.2    45.6    65.2    66.0
 [75,] 40.0    40.0    61.6    65.2
 [76,] 35.6    36.4    65.6    63.2
 [77,] 38.8    38.8    58.8    72.8
 [78,] 36.0    33.2    55.6    70.0
 [79,] 42.8    44.4    57.2    66.4
 [80,] 35.2    36.0    53.2    72.0
 [81,] 38.8    38.8    68.8    59.6
 [82,] 56.0    42.4    55.6    64.4
 [83,] 49.2    42.8    48.8    63.2
 [84,] 40.8    39.2    50.8    69.6
 [85,] 74.0    30.4    46.0    76.0
 [86,] 52.4    34.4    52.8    66.4
 [87,] 40.0    40.4    56.8    69.6
 [88,] 44.8    44.8    65.6    64.4
 [89,] 36.8    33.2    59.6    72.4
 [90,] 33.2    33.2    59.6    66.4
 [91,] 38.0    38.0    59.6    72.4
 [92,] 38.0    38.0    58.4    70.0
 [93,] 36.0    36.0    54.8    72.8
 [94,] 33.2    33.2    64.0    74.0
 [95,] 41.2    41.2    56.8    65.6
 [96,] 62.4    33.2    61.2    63.2
 [97,] 44.4    44.8    62.4    64.4
 [98,] 41.2    39.6    63.6    56.8
 [99,] 34.4    33.2    65.6    60.0
[100,] 58.8    34.8    62.0    65.2

> summary(output)
     Length Class  Mode
1    11     -none- list
2    11     -none- list
3    11     -none- list
4    11     -none- list
5    11     -none- list
6    11     -none- list
7    11     -none- list
8    11     -none- list
9    11     -none- list
10   11     -none- list
11   11     -none- list
12   11     -none- list
13   11     -none- list
14   11     -none- list
15   11     -none- list
16   11     -none- list
17   11     -none- list
18   11     -none- list
19   11     -none- list
20   11     -none- list
21   11     -none- list
22   11     -none- list
23   11     -none- list
24   11     -none- list
25   11     -none- list
26   11     -none- list
27   11     -none- list
28   11     -none- list
29   11     -none- list
30   11     -none- list
31   11     -none- list
32   11     -none- list
33   11     -none- list
34   11     -none- list
35   11     -none- list
36   11     -none- list
37   11     -none- list
38   11     -none- list
39   11     -none- list
40   11     -none- list
41   11     -none- list
42   11     -none- list
43   11     -none- list
44   11     -none- list
45   11     -none- list
46   11     -none- list
47   11     -none- list
48   11     -none- list
49   11     -none- list
50   11     -none- list
51   11     -none- list
52   11     -none- list
53   11     -none- list
54   11     -none- list
55   11     -none- list
56   11     -none- list
57   11     -none- list
58   11     -none- list
59   11     -none- list
60   11     -none- list
61   11     -none- list
62   11     -none- list
63   11     -none- list
64   11     -none- list
65   11     -none- list
66   11     -none- list
67   11     -none- list
68   11     -none- list
69   11     -none- list
70   11     -none- list
71   11     -none- list
72   11     -none- list
73   11     -none- list
74   11     -none- list
75   11     -none- list
76   11     -none- list
77   11     -none- list
78   11     -none- list
79   11     -none- list
80   11     -none- list
81   11     -none- list
82   11     -none- list
83   11     -none- list
84   11     -none- list
85   11     -none- list
86   11     -none- list
87   11     -none- list
88   11     -none- list
89   11     -none- list
90   11     -none- list
91   11     -none- list
92   11     -none- list
93   11     -none- list
94   11     -none- list
95   11     -none- list
96   11     -none- list
97   11     -none- list
98   11     -none- list
99   11     -none- list
100  11     -none- list
101  11     -none- list
102  11     -none- list
103  11     -none- list
104  11     -none- list
105  11     -none- list
106  11     -none- list
107  11     -none- list
108  11     -none- list
109  11     -none- list
110  11     -none- list
111  11     -none- list
112  11     -none- list
113  11     -none- list
114  11     -none- list
115  11     -none- list
116  11     -none- list
117  11     -none- list
118  11     -none- list
119  11     -none- list
120  11     -none- list
121  11     -none- list
122  11     -none- list
123  11     -none- list
124  11     -none- list
125  11     -none- list
126  11     -none- list
127  11     -none- list
128  11     -none- list
129  11     -none- list
130  11     -none- list
131  11     -none- list
132  11     -none- list
133  11     -none- list
134  11     -none- list
135  11     -none- list
136  11     -none- list
137  11     -none- list
138  11     -none- list
139  11     -none- list
140  11     -none- list
141  11     -none- list
142  11     -none- list
143  11     -none- list
144  11     -none- list
145  11     -none- list
146  11     -none- list
147  11     -none- list
148  11     -none- list
149  11     -none- list
150  11     -none- list
151  11     -none- list
152  11     -none- list
153  11     -none- list
154  11     -none- list
155  11     -none- list
156  11     -none- list
157  11     -none- list
158  11     -none- list
159  11     -none- list
160  11     -none- list
161  11     -none- list
162  11     -none- list
163  11     -none- list
164  11     -none- list
165  11     -none- list
166  11     -none- list
167  11     -none- list
168  11     -none- list
169  11     -none- list
170  11     -none- list
171  11     -none- list
172  11     -none- list
173  11     -none- list
174  11     -none- list
175  11     -none- list
176  11     -none- list
177  11     -none- list
178  11     -none- list
179  11     -none- list
180  11     -none- list
181  11     -none- list
182  11     -none- list
183  11     -none- list
184  11     -none- list
185  11     -none- list
186  11     -none- list
187  11     -none- list
188  11     -none- list
189  11     -none- list
190  11     -none- list
191  11     -none- list
192  11     -none- list
193  11     -none- list
194  11     -none- list
195  11     -none- list
196  11     -none- list
197  11     -none- list
198  11     -none- list
199  11     -none- list
200  11     -none- list
201  11     -none- list
202  11     -none- list
203  11     -none- list
204  11     -none- list
205  11     -none- list
206  11     -none- list
207  11     -none- list
208  11     -none- list
209  11     -none- list
210  11     -none- list
211  11     -none- list
212  11     -none- list
213  11     -none- list
214  11     -none- list
215  11     -none- list
216  11     -none- list
217  11     -none- list
218  11     -none- list
219  11     -none- list
220  11     -none- list
221  11     -none- list
222  11     -none- list
223  11     -none- list
224  11     -none- list
225  11     -none- list
226  11     -none- list
227  11     -none- list
228  11     -none- list
229  11     -none- list
230  11     -none- list
231  11     -none- list
232  11     -none- list
233  11     -none- list
234  11     -none- list
235  11     -none- list
236  11     -none- list
237  11     -none- list
238  11     -none- list
239  11     -none- list
240  11     -none- list
241  11     -none- list
242  11     -none- list
243  11     -none- list
244  11     -none- list
245  11     -none- list
246  11     -none- list
247  11     -none- list
248  11     -none- list
249  11     -none- list
250  11     -none- list
251  11     -none- list
252  11     -none- list
253  11     -none- list
254  11     -none- list
255  11     -none- list
256  11     -none- list
257  11     -none- list
258  11     -none- list
259  11     -none- list
260  11     -none- list
261  11     -none- list
262  11     -none- list
263  11     -none- list
264  11     -none- list
265  11     -none- list
266  11     -none- list
267  11     -none- list
268  11     -none- list
269  11     -none- list
270  11     -none- list
271  11     -none- list
272  11     -none- list
273  11     -none- list
274  11     -none- list
275  11     -none- list
276  11     -none- list
277  11     -none- list
278  11     -none- list
279  11     -none- list
280  11     -none- list
281  11     -none- list
282  11     -none- list
283  11     -none- list
284  11     -none- list
285  11     -none- list
286  11     -none- list
287  11     -none- list
288  11     -none- list
289  11     -none- list
290  11     -none- list
291  11     -none- list
292  11     -none- list
293  11     -none- list
294  11     -none- list
295  11     -none- list
296  11     -none- list
297  11     -none- list
298  11     -none- list
299  11     -none- list
300  11     -none- list
301  11     -none- list
302  11     -none- list
303  11     -none- list
304  11     -none- list
305  11     -none- list
306  11     -none- list
307  11     -none- list
308  11     -none- list
309  11     -none- list
310  11     -none- list
311  11     -none- list
312  11     -none- list
313  11     -none- list
314  11     -none- list
315  11     -none- list
316  11     -none- list
317  11     -none- list
318  11     -none- list
319  11     -none- list
320  11     -none- list
321  11     -none- list
322  11     -none- list
323  11     -none- list
324  11     -none- list
325  11     -none- list
326  11     -none- list
327  11     -none- list
328  11     -none- list
329  11     -none- list
330  11     -none- list
331  11     -none- list
332  11     -none- list
333  11     -none- list
334  11     -none- list
335  11     -none- list
336  11     -none- list
337  11     -none- list
338  11     -none- list
339  11     -none- list
340  11     -none- list
341  11     -none- list
342  11     -none- list
343  11     -none- list
344  11     -none- list
345  11     -none- list
346  11     -none- list
347  11     -none- list
348  11     -none- list
349  11     -none- list
350  11     -none- list
351  11     -none- list
352  11     -none- list
353  11     -none- list
354  11     -none- list
355  11     -none- list
356  11     -none- list
357  11     -none- list
358  11     -none- list
359  11     -none- list
360  11     -none- list
361  11     -none- list
362  11     -none- list
363  11     -none- list
364  11     -none- list
365  11     -none- list
366  11     -none- list
367  11     -none- list
368  11     -none- list
369  11     -none- list
370  11     -none- list
371  11     -none- list
372  11     -none- list
373  11     -none- list
374  11     -none- list
375  11     -none- list
376  11     -none- list
377  11     -none- list
378  11     -none- list
379  11     -none- list
380  11     -none- list
381  11     -none- list
382  11     -none- list
383  11     -none- list
384  11     -none- list
385  11     -none- list
386  11     -none- list
387  11     -none- list
388  11     -none- list
389  11     -none- list
390  11     -none- list
391  11     -none- list
392  11     -none- list
393  11     -none- list
394  11     -none- list
395  11     -none- list
396  11     -none- list
397  11     -none- list
398  11     -none- list
399  11     -none- list
400  11     -none- list
401  11     -none- list
402  11     -none- list
403  11     -none- list
404  11     -none- list
405  11     -none- list
406  11     -none- list
407  11     -none- list
408  11     -none- list
409  11     -none- list
410  11     -none- list
411  11     -none- list
412  11     -none- list
413  11     -none- list
414  11     -none- list
415  11     -none- list
416  11     -none- list
417  11     -none- list
418  11     -none- list
419  11     -none- list
420  11     -none- list
421  11     -none- list
422  11     -none- list
423  11     -none- list
424  11     -none- list
425  11     -none- list
426  11     -none- list
427  11     -none- list
428  11     -none- list
429  11     -none- list
430  11     -none- list
431  11     -none- list
432  11     -none- list
433  11     -none- list
434  11     -none- list
435  11     -none- list
436  11     -none- list
437  11     -none- list
438  11     -none- list
439  11     -none- list
440  11     -none- list
441  11     -none- list
442  11     -none- list
443  11     -none- list
444  11     -none- list
445  11     -none- list
446  11     -none- list
447  11     -none- list
448  11     -none- list
449  11     -none- list
450  11     -none- list
451  11     -none- list
452  11     -none- list
453  11     -none- list
454  11     -none- list
455  11     -none- list
456  11     -none- list
457  11     -none- list
458  11     -none- list
459  11     -none- list
460  11     -none- list
461  11     -none- list
462  11     -none- list
463  11     -none- list
464  11     -none- list
465  11     -none- list
466  11     -none- list
467  11     -none- list
468  11     -none- list
469  11     -none- list
470  11     -none- list
471  11     -none- list
472  11     -none- list
473  11     -none- list
474  11     -none- list
475  11     -none- list
476  11     -none- list
477  11     -none- list
478  11     -none- list
479  11     -none- list
480  11     -none- list
481  11     -none- list
482  11     -none- list
483  11     -none- list
484  11     -none- list
485  11     -none- list
486  11     -none- list
487  11     -none- list
488  11     -none- list
489  11     -none- list
490  11     -none- list
491  11     -none- list
492  11     -none- list
493  11     -none- list
494  11     -none- list
495  11     -none- list
496  11     -none- list
497  11     -none- list
498  11     -none- list
499  11     -none- list
500  11     -none- list
501  11     -none- list
502  11     -none- list
503  11     -none- list
504  11     -none- list
505  11     -none- list
506  11     -none- list
507  11     -none- list
508  11     -none- list
509  11     -none- list
510  11     -none- list
511  11     -none- list
512  11     -none- list
513  11     -none- list
514  11     -none- list
515  11     -none- list
516  11     -none- list
517  11     -none- list
518  11     -none- list
519  11     -none- list
520  11     -none- list
521  11     -none- list
522  11     -none- list
523  11     -none- list
524  11     -none- list
525  11     -none- list
526  11     -none- list
527  11     -none- list
528  11     -none- list
529  11     -none- list
530  11     -none- list
531  11     -none- list
532  11     -none- list
533  11     -none- list
534  11     -none- list
535  11     -none- list
536  11     -none- list
537  11     -none- list
538  11     -none- list
539  11     -none- list
540  11     -none- list
541  11     -none- list
542  11     -none- list
543  11     -none- list
544  11     -none- list
545  11     -none- list
546  11     -none- list
547  11     -none- list
548  11     -none- list
549  11     -none- list
550  11     -none- list
551  11     -none- list
552  11     -none- list
553  11     -none- list
554  11     -none- list
555  11     -none- list
556  11     -none- list
557  11     -none- list
558  11     -none- list
559  11     -none- list
560  11     -none- list
561  11     -none- list
562  11     -none- list
563  11     -none- list
564  11     -none- list
565  11     -none- list
566  11     -none- list
567  11     -none- list
568  11     -none- list
569  11     -none- list
570  11     -none- list
571  11     -none- list
572  11     -none- list
573  11     -none- list
574  11     -none- list
575  11     -none- list
576  11     -none- list
577  11     -none- list
578  11     -none- list
579  11     -none- list
580  11     -none- list
581  11     -none- list
582  11     -none- list
583  11     -none- list
584  11     -none- list
585  11     -none- list
586  11     -none- list
587  11     -none- list
588  11     -none- list
589  11     -none- list
590  11     -none- list
591  11     -none- list
592  11     -none- list
593  11     -none- list
594  11     -none- list
595  11     -none- list
596  11     -none- list
597  11     -none- list
598  11     -none- list
599  11     -none- list
600  11     -none- list
601  11     -none- list
602  11     -none- list
603  11     -none- list
604  11     -none- list
605  11     -none- list
606  11     -none- list
607  11     -none- list
608  11     -none- list
609  11     -none- list
610  11     -none- list
611  11     -none- list
612  11     -none- list
613  11     -none- list
614  11     -none- list
615  11     -none- list
616  11     -none- list
617  11     -none- list
618  11     -none- list
619  11     -none- list
620  11     -none- list
621  11     -none- list
622  11     -none- list
623  11     -none- list
624  11     -none- list
625  11     -none- list
626  11     -none- list
627  11     -none- list
628  11     -none- list
629  11     -none- list
630  11     -none- list
631  11     -none- list
632  11     -none- list
633  11     -none- list
634  11     -none- list
635  11     -none- list
636  11     -none- list
637  11     -none- list
638  11     -none- list
639  11     -none- list
640  11     -none- list
641  11     -none- list
642  11     -none- list
643  11     -none- list
644  11     -none- list
645  11     -none- list
646  11     -none- list
647  11     -none- list
648  11     -none- list
649  11     -none- list
650  11     -none- list
651  11     -none- list
652  11     -none- list
653  11     -none- list
654  11     -none- list
655  11     -none- list
656  11     -none- list
657  11     -none- list
658  11     -none- list
659  11     -none- list
660  11     -none- list
661  11     -none- list
662  11     -none- list
663  11     -none- list
664  11     -none- list
665  11     -none- list
666  11     -none- list
667  11     -none- list
668  11     -none- list
669  11     -none- list
670  11     -none- list
671  11     -none- list
672  11     -none- list
673  11     -none- list
674  11     -none- list
675  11     -none- list
676  11     -none- list
677  11     -none- list
678  11     -none- list
679  11     -none- list
680  11     -none- list
681  11     -none- list
682  11     -none- list
683  11     -none- list
684  11     -none- list
685  11     -none- list
686  11     -none- list
687  11     -none- list
688  11     -none- list
689  11     -none- list
690  11     -none- list
691  11     -none- list
692  11     -none- list
693  11     -none- list
694  11     -none- list
695  11     -none- list
696  11     -none- list
697  11     -none- list
698  11     -none- list
699  11     -none- list
700  11     -none- list
701  11     -none- list
702  11     -none- list
703  11     -none- list
704  11     -none- list
705  11     -none- list
706  11     -none- list
707  11     -none- list
708  11     -none- list
709  11     -none- list
710  11     -none- list
711  11     -none- list
712  11     -none- list
713  11     -none- list
714  11     -none- list
715  11     -none- list
716  11     -none- list
717  11     -none- list
718  11     -none- list
719  11     -none- list
720  11     -none- list
721  11     -none- list
722  11     -none- list
723  11     -none- list
724  11     -none- list
725  11     -none- list
726  11     -none- list
727  11     -none- list
728  11     -none- list
729  11     -none- list
730  11     -none- list
731  11     -none- list
732  11     -none- list
733  11     -none- list
734  11     -none- list
735  11     -none- list
736  11     -none- list
737  11     -none- list
738  11     -none- list
739  11     -none- list
740  11     -none- list
741  11     -none- list
742  11     -none- list
743  11     -none- list
744  11     -none- list
745  11     -none- list
746  11     -none- list
747  11     -none- list
748  11     -none- list
749  11     -none- list
750  11     -none- list
751  11     -none- list
752  11     -none- list
753  11     -none- list
754  11     -none- list
755  11     -none- list
756  11     -none- list
757  11     -none- list
758  11     -none- list
759  11     -none- list
760  11     -none- list
761  11     -none- list
762  11     -none- list
763  11     -none- list
764  11     -none- list
765  11     -none- list
766  11     -none- list
767  11     -none- list
768  11     -none- list
769  11     -none- list
770  11     -none- list
771  11     -none- list
772  11     -none- list
773  11     -none- list
774  11     -none- list
775  11     -none- list
776  11     -none- list
777  11     -none- list
778  11     -none- list
779  11     -none- list
780  11     -none- list
781  11     -none- list
782  11     -none- list
783  11     -none- list
784  11     -none- list
785  11     -none- list
786  11     -none- list
787  11     -none- list
788  11     -none- list
789  11     -none- list
790  11     -none- list
791  11     -none- list
792  11     -none- list
793  11     -none- list
794  11     -none- list
795  11     -none- list
796  11     -none- list
797  11     -none- list
798  11     -none- list
799  11     -none- list
800  11     -none- list
801  11     -none- list
802  11     -none- list
803  11     -none- list
804  11     -none- list
805  11     -none- list
806  11     -none- list
807  11     -none- list
808  11     -none- list
809  11     -none- list
810  11     -none- list
811  11     -none- list
812  11     -none- list
813  11     -none- list
814  11     -none- list
815  11     -none- list
816  11     -none- list
817  11     -none- list
818  11     -none- list
819  11     -none- list
820  11     -none- list
821  11     -none- list
822  11     -none- list
823  11     -none- list
824  11     -none- list
825  11     -none- list
826  11     -none- list
827  11     -none- list
828  11     -none- list
829  11     -none- list
830  11     -none- list
831  11     -none- list
832  11     -none- list
833  11     -none- list
834  11     -none- list
835  11     -none- list
836  11     -none- list
837  11     -none- list
838  11     -none- list
839  11     -none- list
840  11     -none- list
841  11     -none- list
842  11     -none- list
843  11     -none- list
844  11     -none- list
845  11     -none- list
846  11     -none- list
847  11     -none- list
848  11     -none- list
849  11     -none- list
850  11     -none- list
851  11     -none- list
852  11     -none- list
853  11     -none- list
854  11     -none- list
855  11     -none- list
856  11     -none- list
857  11     -none- list
858  11     -none- list
859  11     -none- list
860  11     -none- list
861  11     -none- list
862  11     -none- list
863  11     -none- list
864  11     -none- list
865  11     -none- list
866  11     -none- list
867  11     -none- list
868  11     -none- list
869  11     -none- list
870  11     -none- list
871  11     -none- list
872  11     -none- list
873  11     -none- list
874  11     -none- list
875  11     -none- list
876  11     -none- list
877  11     -none- list
878  11     -none- list
879  11     -none- list
880  11     -none- list
881  11     -none- list
882  11     -none- list
883  11     -none- list
884  11     -none- list
885  11     -none- list
886  11     -none- list
887  11     -none- list
888  11     -none- list
889  11     -none- list
890  11     -none- list
891  11     -none- list
892  11     -none- list
893  11     -none- list
894  11     -none- list
895  11     -none- list
896  11     -none- list
897  11     -none- list
898  11     -none- list
899  11     -none- list
900  11     -none- list
901  11     -none- list
902  11     -none- list
903  11     -none- list
904  11     -none- list
905  11     -none- list
906  11     -none- list
907  11     -none- list
908  11     -none- list
909  11     -none- list
910  11     -none- list
911  11     -none- list
912  11     -none- list
913  11     -none- list
914  11     -none- list
915  11     -none- list
916  11     -none- list
917  11     -none- list
918  11     -none- list
919  11     -none- list
920  11     -none- list
921  11     -none- list
922  11     -none- list
923  11     -none- list
924  11     -none- list
925  11     -none- list
926  11     -none- list
927  11     -none- list
928  11     -none- list
929  11     -none- list
930  11     -none- list
931  11     -none- list
932  11     -none- list
933  11     -none- list
934  11     -none- list
935  11     -none- list
936  11     -none- list
937  11     -none- list
938  11     -none- list
939  11     -none- list
940  11     -none- list
941  11     -none- list
942  11     -none- list
943  11     -none- list
944  11     -none- list
945  11     -none- list
946  11     -none- list
947  11     -none- list
948  11     -none- list
949  11     -none- list
950  11     -none- list
951  11     -none- list
952  11     -none- list
953  11     -none- list
954  11     -none- list
955  11     -none- list
956  11     -none- list
957  11     -none- list
958  11     -none- list
959  11     -none- list
960  11     -none- list
961  11     -none- list
962  11     -none- list
963  11     -none- list
964  11     -none- list
965  11     -none- list
966  11     -none- list
967  11     -none- list
968  11     -none- list
969  11     -none- list
970  11     -none- list
971  11     -none- list
972  11     -none- list
973  11     -none- list
974  11     -none- list
975  11     -none- list
976  11     -none- list
977  11     -none- list
978  11     -none- list
979  11     -none- list
980  11     -none- list
981  11     -none- list
982  11     -none- list
983  11     -none- list
984  11     -none- list
985  11     -none- list
986  11     -none- list
987  11     -none- list
988  11     -none- list
989  11     -none- list
990  11     -none- list
991  11     -none- list
992  11     -none- list
993  11     -none- list
994  11     -none- list
995  11     -none- list
996  11     -none- list
997  11     -none- list
998  11     -none- list
999  11     -none- list
1000 11     -none- list
1001 11     -none- list
1002 11     -none- list
1003 11     -none- list
1004 11     -none- list
1005 11     -none- list
1006 11     -none- list
1007 11     -none- list
1008 11     -none- list
1009 11     -none- list
1010 11     -none- list
1011 11     -none- list
1012 11     -none- list
1013 11     -none- list
1014 11     -none- list
1015 11     -none- list
1016 11     -none- list
1017 11     -none- list
1018 11     -none- list
1019 11     -none- list
1020 11     -none- list
1021 11     -none- list
1022 11     -none- list
1023 11     -none- list
1024 11     -none- list
1025 11     -none- list
1026 11     -none- list
1027 11     -none- list
1028 11     -none- list
1029 11     -none- list
1030 11     -none- list
1031 11     -none- list
1032 11     -none- list
1033 11     -none- list
1034 11     -none- list
1035 11     -none- list
1036 11     -none- list
1037 11     -none- list
1038 11     -none- list
1039 11     -none- list
1040 11     -none- list
1041 11     -none- list
1042 11     -none- list
1043 11     -none- list
1044 11     -none- list
1045 11     -none- list
1046 11     -none- list
1047 11     -none- list
1048 11     -none- list
1049 11     -none- list
1050 11     -none- list
1051 11     -none- list
1052 11     -none- list
1053 11     -none- list
1054 11     -none- list
1055 11     -none- list
1056 11     -none- list
1057 11     -none- list
1058 11     -none- list
1059 11     -none- list
1060 11     -none- list
1061 11     -none- list
1062 11     -none- list
1063 11     -none- list
1064 11     -none- list
1065 11     -none- list
1066 11     -none- list
1067 11     -none- list
1068 11     -none- list
1069 11     -none- list
1070 11     -none- list
1071 11     -none- list
1072 11     -none- list
1073 11     -none- list
1074 11     -none- list
1075 11     -none- list
1076 11     -none- list
1077 11     -none- list
1078 11     -none- list
1079 11     -none- list
1080 11     -none- list
1081 11     -none- list
1082 11     -none- list
1083 11     -none- list
1084 11     -none- list
1085 11     -none- list
1086 11     -none- list
1087 11     -none- list
1088 11     -none- list
1089 11     -none- list
1090 11     -none- list
1091 11     -none- list
1092 11     -none- list
1093 11     -none- list
1094 11     -none- list
1095 11     -none- list
1096 11     -none- list
1097 11     -none- list
1098 11     -none- list
1099 11     -none- list
1100 11     -none- list
1101 11     -none- list
1102 11     -none- list
1103 11     -none- list
1104 11     -none- list
1105 11     -none- list
1106 11     -none- list
1107 11     -none- list
1108 11     -none- list
1109 11     -none- list
1110 11     -none- list
1111 11     -none- list
1112 11     -none- list
1113 11     -none- list
1114 11     -none- list
1115 11     -none- list
1116 11     -none- list
1117 11     -none- list
1118 11     -none- list
1119 11     -none- list
1120 11     -none- list
1121 11     -none- list
1122 11     -none- list
1123 11     -none- list
1124 11     -none- list
1125 11     -none- list
1126 11     -none- list
1127 11     -none- list
1128 11     -none- list
1129 11     -none- list
1130 11     -none- list
1131 11     -none- list
1132 11     -none- list
1133 11     -none- list
1134 11     -none- list
1135 11     -none- list
1136 11     -none- list
1137 11     -none- list
1138 11     -none- list
1139 11     -none- list
1140 11     -none- list
1141 11     -none- list
1142 11     -none- list
1143 11     -none- list
1144 11     -none- list
1145 11     -none- list
1146 11     -none- list
1147 11     -none- list
1148 11     -none- list
1149 11     -none- list
1150 11     -none- list
1151 11     -none- list
1152 11     -none- list
1153 11     -none- list
1154 11     -none- list
1155 11     -none- list
1156 11     -none- list
1157 11     -none- list
1158 11     -none- list
1159 11     -none- list
1160 11     -none- list
1161 11     -none- list
1162 11     -none- list
1163 11     -none- list
1164 11     -none- list
1165 11     -none- list
1166 11     -none- list
1167 11     -none- list
1168 11     -none- list
1169 11     -none- list
1170 11     -none- list
1171 11     -none- list
1172 11     -none- list
1173 11     -none- list
1174 11     -none- list
1175 11     -none- list
1176 11     -none- list
1177 11     -none- list
1178 11     -none- list
1179 11     -none- list
1180 11     -none- list
1181 11     -none- list
1182 11     -none- list
1183 11     -none- list
1184 11     -none- list
1185 11     -none- list
1186 11     -none- list
1187 11     -none- list
1188 11     -none- list
1189 11     -none- list
1190 11     -none- list
1191 11     -none- list
1192 11     -none- list
1193 11     -none- list
1194 11     -none- list
1195 11     -none- list
1196 11     -none- list
1197 11     -none- list
1198 11     -none- list
1199 11     -none- list
1200 11     -none- list
1201 11     -none- list
1202 11     -none- list
1203 11     -none- list
1204 11     -none- list
1205 11     -none- list
1206 11     -none- list
1207 11     -none- list
1208 11     -none- list
1209 11     -none- list
1210 11     -none- list
1211 11     -none- list
1212 11     -none- list
1213 11     -none- list
1214 11     -none- list
1215 11     -none- list
1216 11     -none- list
1217 11     -none- list
1218 11     -none- list
1219 11     -none- list
1220 11     -none- list
1221 11     -none- list
1222 11     -none- list
1223 11     -none- list
1224 11     -none- list
1225 11     -none- list
1226 11     -none- list
1227 11     -none- list
1228 11     -none- list
1229 11     -none- list
1230 11     -none- list
1231 11     -none- list
1232 11     -none- list
1233 11     -none- list
1234 11     -none- list
1235 11     -none- list
1236 11     -none- list
1237 11     -none- list
1238 11     -none- list
1239 11     -none- list
1240 11     -none- list
1241 11     -none- list
1242 11     -none- list
1243 11     -none- list
1244 11     -none- list
1245 11     -none- list
1246 11     -none- list
1247 11     -none- list
1248 11     -none- list
1249 11     -none- list
1250 11     -none- list
1251 11     -none- list
1252 11     -none- list
1253 11     -none- list
1254 11     -none- list
1255 11     -none- list
1256 11     -none- list
1257 11     -none- list
1258 11     -none- list
1259 11     -none- list
1260 11     -none- list
1261 11     -none- list
1262 11     -none- list
1263 11     -none- list
1264 11     -none- list
1265 11     -none- list
1266 11     -none- list
1267 11     -none- list
1268 11     -none- list
1269 11     -none- list
1270 11     -none- list
1271 11     -none- list
1272 11     -none- list
1273 11     -none- list
1274 11     -none- list
1275 11     -none- list
1276 11     -none- list
1277 11     -none- list
1278 11     -none- list
1279 11     -none- list
1280 11     -none- list
1281 11     -none- list
1282 11     -none- list
1283 11     -none- list
1284 11     -none- list
1285 11     -none- list
1286 11     -none- list
1287 11     -none- list
1288 11     -none- list
1289 11     -none- list
1290 11     -none- list
1291 11     -none- list
1292 11     -none- list
1293 11     -none- list
1294 11     -none- list
1295 11     -none- list
1296 11     -none- list
1297 11     -none- list
1298 11     -none- list
1299 11     -none- list
1300 11     -none- list
1301 11     -none- list
1302 11     -none- list
1303 11     -none- list
1304 11     -none- list
1305 11     -none- list
1306 11     -none- list
1307 11     -none- list
1308 11     -none- list
1309 11     -none- list
1310 11     -none- list
1311 11     -none- list
1312 11     -none- list
1313 11     -none- list
1314 11     -none- list
1315 11     -none- list
1316 11     -none- list
1317 11     -none- list
1318 11     -none- list
1319 11     -none- list
1320 11     -none- list
1321 11     -none- list
1322 11     -none- list
1323 11     -none- list
1324 11     -none- list
1325 11     -none- list
1326 11     -none- list
1327 11     -none- list
1328 11     -none- list
1329 11     -none- list
1330 11     -none- list
1331 11     -none- list
1332 11     -none- list
1333 11     -none- list
1334 11     -none- list
1335 11     -none- list
1336 11     -none- list
1337 11     -none- list
1338 11     -none- list
1339 11     -none- list
1340 11     -none- list
1341 11     -none- list
1342 11     -none- list
1343 11     -none- list
1344 11     -none- list
1345 11     -none- list
1346 11     -none- list
1347 11     -none- list
1348 11     -none- list
1349 11     -none- list
1350 11     -none- list
1351 11     -none- list
1352 11     -none- list
1353 11     -none- list
1354 11     -none- list
1355 11     -none- list
1356 11     -none- list
1357 11     -none- list
1358 11     -none- list
1359 11     -none- list
1360 11     -none- list
1361 11     -none- list
1362 11     -none- list
1363 11     -none- list
1364 11     -none- list
1365 11     -none- list
1366 11     -none- list
1367 11     -none- list
1368 11     -none- list
1369 11     -none- list
1370 11     -none- list
1371 11     -none- list
1372 11     -none- list
1373 11     -none- list
1374 11     -none- list
1375 11     -none- list
1376 11     -none- list
1377 11     -none- list
1378 11     -none- list
1379 11     -none- list
1380 11     -none- list
1381 11     -none- list
1382 11     -none- list
1383 11     -none- list
1384 11     -none- list
1385 11     -none- list
1386 11     -none- list
1387 11     -none- list
1388 11     -none- list
1389 11     -none- list
1390 11     -none- list
1391 11     -none- list
1392 11     -none- list
1393 11     -none- list
1394 11     -none- list
1395 11     -none- list
1396 11     -none- list
1397 11     -none- list
1398 11     -none- list
1399 11     -none- list
1400 11     -none- list
1401 11     -none- list
1402 11     -none- list
1403 11     -none- list
1404 11     -none- list
1405 11     -none- list
1406 11     -none- list
1407 11     -none- list
1408 11     -none- list
1409 11     -none- list
1410 11     -none- list
1411 11     -none- list
1412 11     -none- list
1413 11     -none- list
1414 11     -none- list
1415 11     -none- list
1416 11     -none- list
1417 11     -none- list
1418 11     -none- list
1419 11     -none- list
1420 11     -none- list
1421 11     -none- list
1422 11     -none- list
1423 11     -none- list
1424 11     -none- list
1425 11     -none- list
1426 11     -none- list
1427 11     -none- list
1428 11     -none- list
1429 11     -none- list
1430 11     -none- list
1431 11     -none- list
1432 11     -none- list
1433 11     -none- list
1434 11     -none- list
1435 11     -none- list
1436 11     -none- list
1437 11     -none- list
1438 11     -none- list
1439 11     -none- list
1440 11     -none- list
1441 11     -none- list
1442 11     -none- list
1443 11     -none- list
1444 11     -none- list
1445 11     -none- list
1446 11     -none- list
1447 11     -none- list
1448 11     -none- list
1449 11     -none- list
1450 11     -none- list
1451 11     -none- list
1452 11     -none- list
1453 11     -none- list
1454 11     -none- list
1455 11     -none- list
1456 11     -none- list
1457 11     -none- list
1458 11     -none- list
1459 11     -none- list
1460 11     -none- list
1461 11     -none- list
1462 11     -none- list
1463 11     -none- list
1464 11     -none- list
1465 11     -none- list
1466 11     -none- list
1467 11     -none- list
1468 11     -none- list
1469 11     -none- list
1470 11     -none- list
1471 11     -none- list
1472 11     -none- list
1473 11     -none- list
1474 11     -none- list
1475 11     -none- list
1476 11     -none- list
1477 11     -none- list
1478 11     -none- list
1479 11     -none- list
1480 11     -none- list
1481 11     -none- list
1482 11     -none- list
1483 11     -none- list
1484 11     -none- list
1485 11     -none- list
1486 11     -none- list
1487 11     -none- list
1488 11     -none- list
1489 11     -none- list
1490 11     -none- list
1491 11     -none- list
1492 11     -none- list
1493 11     -none- list
1494 11     -none- list
1495 11     -none- list
1496 11     -none- list
1497 11     -none- list
1498 11     -none- list
1499 11     -none- list
1500 11     -none- list
1501 11     -none- list
1502 11     -none- list
1503 11     -none- list
1504 11     -none- list
1505 11     -none- list
1506 11     -none- list
1507 11     -none- list
1508 11     -none- list
1509 11     -none- list
1510 11     -none- list
1511 11     -none- list
1512 11     -none- list
1513 11     -none- list
1514 11     -none- list
1515 11     -none- list
1516 11     -none- list
1517 11     -none- list
1518 11     -none- list
1519 11     -none- list
1520 11     -none- list
1521 11     -none- list
1522 11     -none- list
1523 11     -none- list
1524 11     -none- list
1525 11     -none- list
1526 11     -none- list
1527 11     -none- list
1528 11     -none- list
1529 11     -none- list
1530 11     -none- list
1531 11     -none- list
1532 11     -none- list
1533 11     -none- list
1534 11     -none- list
1535 11     -none- list
1536 11     -none- list
1537 11     -none- list
1538 11     -none- list
1539 11     -none- list
1540 11     -none- list
1541 11     -none- list
1542 11     -none- list
1543 11     -none- list
1544 11     -none- list
1545 11     -none- list
1546 11     -none- list
1547 11     -none- list
1548 11     -none- list
1549 11     -none- list
1550 11     -none- list
1551 11     -none- list
1552 11     -none- list
1553 11     -none- list
1554 11     -none- list
1555 11     -none- list
1556 11     -none- list
1557 11     -none- list
1558 11     -none- list
1559 11     -none- list
1560 11     -none- list
1561 11     -none- list
1562 11     -none- list
1563 11     -none- list
1564 11     -none- list
1565 11     -none- list
1566 11     -none- list
1567 11     -none- list
1568 11     -none- list
1569 11     -none- list
1570 11     -none- list
1571 11     -none- list
1572 11     -none- list
1573 11     -none- list
1574 11     -none- list
1575 11     -none- list
1576 11     -none- list
1577 11     -none- list
1578 11     -none- list
1579 11     -none- list
1580 11     -none- list
1581 11     -none- list
1582 11     -none- list
1583 11     -none- list
1584 11     -none- list
1585 11     -none- list
1586 11     -none- list
1587 11     -none- list
1588 11     -none- list
1589 11     -none- list
1590 11     -none- list
1591 11     -none- list
1592 11     -none- list
1593 11     -none- list
1594 11     -none- list
1595 11     -none- list
1596 11     -none- list
1597 11     -none- list
1598 11     -none- list
1599 11     -none- list
1600 11     -none- list
1601 11     -none- list
1602 11     -none- list
1603 11     -none- list
1604 11     -none- list
1605 11     -none- list
1606 11     -none- list
1607 11     -none- list
1608 11     -none- list
1609 11     -none- list
1610 11     -none- list
1611 11     -none- list
1612 11     -none- list
1613 11     -none- list
1614 11     -none- list
1615 11     -none- list
1616 11     -none- list
1617 11     -none- list
1618 11     -none- list
1619 11     -none- list
1620 11     -none- list
1621 11     -none- list
1622 11     -none- list
1623 11     -none- list
1624 11     -none- list
1625 11     -none- list
1626 11     -none- list
1627 11     -none- list
1628 11     -none- list
1629 11     -none- list
1630 11     -none- list
1631 11     -none- list
1632 11     -none- list
1633 11     -none- list
1634 11     -none- list
1635 11     -none- list
1636 11     -none- list
1637 11     -none- list
1638 11     -none- list
1639 11     -none- list
1640 11     -none- list
1641 11     -none- list
1642 11     -none- list
1643 11     -none- list
1644 11     -none- list
1645 11     -none- list
1646 11     -none- list
1647 11     -none- list
1648 11     -none- list
1649 11     -none- list
1650 11     -none- list
1651 11     -none- list
1652 11     -none- list
1653 11     -none- list
1654 11     -none- list
1655 11     -none- list
1656 11     -none- list
1657 11     -none- list
1658 11     -none- list
1659 11     -none- list
1660 11     -none- list
1661 11     -none- list
1662 11     -none- list
1663 11     -none- list
1664 11     -none- list
1665 11     -none- list
1666 11     -none- list
1667 11     -none- list
1668 11     -none- list
1669 11     -none- list
1670 11     -none- list
1671 11     -none- list
1672 11     -none- list
1673 11     -none- list
1674 11     -none- list
1675 11     -none- list
1676 11     -none- list
1677 11     -none- list
1678 11     -none- list
1679 11     -none- list
1680 11     -none- list
1681 11     -none- list
1682 11     -none- list
1683 11     -none- list
1684 11     -none- list
1685 11     -none- list
1686 11     -none- list
1687 11     -none- list
1688 11     -none- list
1689 11     -none- list
1690 11     -none- list
1691 11     -none- list
1692 11     -none- list
1693 11     -none- list
1694 11     -none- list
1695 11     -none- list
1696 11     -none- list
1697 11     -none- list
1698 11     -none- list
1699 11     -none- list
1700 11     -none- list
1701 11     -none- list
1702 11     -none- list
1703 11     -none- list
1704 11     -none- list
1705 11     -none- list
1706 11     -none- list
1707 11     -none- list
1708 11     -none- list
1709 11     -none- list
1710 11     -none- list
1711 11     -none- list
1712 11     -none- list
1713 11     -none- list
1714 11     -none- list
1715 11     -none- list
1716 11     -none- list
1717 11     -none- list
1718 11     -none- list
1719 11     -none- list
1720 11     -none- list
1721 11     -none- list
1722 11     -none- list
1723 11     -none- list
1724 11     -none- list
1725 11     -none- list
1726 11     -none- list
1727 11     -none- list
1728 11     -none- list
1729 11     -none- list
1730 11     -none- list
1731 11     -none- list
1732 11     -none- list
1733 11     -none- list
1734 11     -none- list
1735 11     -none- list
1736 11     -none- list
1737 11     -none- list
1738 11     -none- list
1739 11     -none- list
1740 11     -none- list
1741 11     -none- list
1742 11     -none- list
1743 11     -none- list
1744 11     -none- list
1745 11     -none- list
1746 11     -none- list
1747 11     -none- list
1748 11     -none- list
1749 11     -none- list
1750 11     -none- list
1751 11     -none- list
1752 11     -none- list
1753 11     -none- list
1754 11     -none- list
1755 11     -none- list
1756 11     -none- list
1757 11     -none- list
1758 11     -none- list
1759 11     -none- list
1760 11     -none- list
1761 11     -none- list
1762 11     -none- list
1763 11     -none- list
1764 11     -none- list
1765 11     -none- list
1766 11     -none- list
1767 11     -none- list
1768 11     -none- list
1769 11     -none- list
1770 11     -none- list
1771 11     -none- list
1772 11     -none- list
1773 11     -none- list
1774 11     -none- list
1775 11     -none- list
1776 11     -none- list
1777 11     -none- list
1778 11     -none- list
1779 11     -none- list
1780 11     -none- list
1781 11     -none- list
1782 11     -none- list
1783 11     -none- list
1784 11     -none- list
1785 11     -none- list
1786 11     -none- list
1787 11     -none- list
1788 11     -none- list
1789 11     -none- list
1790 11     -none- list
1791 11     -none- list
1792 11     -none- list
1793 11     -none- list
1794 11     -none- list
1795 11     -none- list
1796 11     -none- list
1797 11     -none- list
1798 11     -none- list
1799 11     -none- list
1800 11     -none- list
1801 11     -none- list
1802 11     -none- list
1803 11     -none- list
1804 11     -none- list
1805 11     -none- list
1806 11     -none- list
1807 11     -none- list
1808 11     -none- list
1809 11     -none- list
1810 11     -none- list
1811 11     -none- list
1812 11     -none- list
1813 11     -none- list
1814 11     -none- list
1815 11     -none- list
1816 11     -none- list
1817 11     -none- list
1818 11     -none- list
1819 11     -none- list
1820 11     -none- list
1821 11     -none- list
1822 11     -none- list
1823 11     -none- list
1824 11     -none- list
1825 11     -none- list
1826 11     -none- list
1827 11     -none- list
1828 11     -none- list
1829 11     -none- list
1830 11     -none- list
1831 11     -none- list
1832 11     -none- list
1833 11     -none- list
1834 11     -none- list
1835 11     -none- list
1836 11     -none- list
1837 11     -none- list
1838 11     -none- list
1839 11     -none- list
1840 11     -none- list
1841 11     -none- list
1842 11     -none- list
1843 11     -none- list
1844 11     -none- list
1845 11     -none- list
1846 11     -none- list
1847 11     -none- list
1848 11     -none- list
1849 11     -none- list
1850 11     -none- list
1851 11     -none- list
1852 11     -none- list
1853 11     -none- list
1854 11     -none- list
1855 11     -none- list
1856 11     -none- list
1857 11     -none- list
1858 11     -none- list
1859 11     -none- list
1860 11     -none- list
1861 11     -none- list
1862 11     -none- list
1863 11     -none- list
1864 11     -none- list
1865 11     -none- list
1866 11     -none- list
1867 11     -none- list
1868 11     -none- list
1869 11     -none- list
1870 11     -none- list
1871 11     -none- list
1872 11     -none- list
1873 11     -none- list
1874 11     -none- list
1875 11     -none- list
1876 11     -none- list
1877 11     -none- list
1878 11     -none- list
1879 11     -none- list
1880 11     -none- list
1881 11     -none- list
1882 11     -none- list
1883 11     -none- list
1884 11     -none- list
1885 11     -none- list
1886 11     -none- list
1887 11     -none- list
1888 11     -none- list
1889 11     -none- list
1890 11     -none- list
1891 11     -none- list
1892 11     -none- list
1893 11     -none- list
1894 11     -none- list
1895 11     -none- list
1896 11     -none- list
1897 11     -none- list
1898 11     -none- list
1899 11     -none- list
1900 11     -none- list
1901 11     -none- list
1902 11     -none- list
1903 11     -none- list
1904 11     -none- list
1905 11     -none- list
1906 11     -none- list
1907 11     -none- list
1908 11     -none- list
1909 11     -none- list
1910 11     -none- list
1911 11     -none- list
>  alpha<-c(10,5,3)
>   if (models>3){alpha<-c(alpha, rep(1, models-3))}
Error: object 'models' not found
> models=3
> train=5
>  alpha<-c(10,5,3)
>   if (models>3){alpha<-c(alpha, rep(1, models-3))}
>  a.mean <- alpha/sum(alpha) # ?
> c<-c(0,.01, 0.02, 0.03, 0.04, .05, 0.075, 0.1, 0.15, 0.2, 0.3, .5)
> slots<-rep(NA,12)
> count<-0
> for(i in 1:1911){
+  if(output[[i]]$theseParams[1]==train & output[[i]]$theseParams[2]==models){
+  count<-count+1
+  slots[count]<-i} 
+  }
> error.mat<-mae.mat<-rmse.mat<-mad.mat<-rmsle.mat <- mape.mat <- meape.mat <- mrae.mat <- pw.mat <- crps.mat <- matrix(NA,nrow=13,ncol=100)
> error.mat<-mae.mat<-rmse.mat<-mad.mat<-rmsle.mat <- mape.mat <- meape.mat <- mrae.mat <- pw.mat <- crps.mat <- matrix(NA,nrow=12,ncol=100)
> for(i in slots){
+  count<-which(slots==i)
+         errror.all.mat<-abs(output[[i]]$error)%*%a.mean
+  error.mat[count,]<-output[[i]]$error[,1]
+  rmse.mat[count,]<-output[[i]]$pred.rmse[,"EBMA"]
+  mae.mat[count,]<-output[[i]]$pred.mae[,"EBMA"]
+         mad.mat[count,]<-output[[i]]$pred.mad[,"EBMA"]
+         rmsle.mat[count,] <- output[[i]]$pred.rmsle[,"EBMA"]
+         mape.mat[count,] <- output[[i]]$pred.mape[,"EBMA"]
+         meape.mat[count,] <- output[[i]]$pred.meape[,"EBMA"]
+         mrae.mat[count,] <- output[[i]]$pred.mrae[,"EBMA"]
+         pw.mat[count,] <- output[[i]]$pred.pw[,"EBMA"]
+         crps.mat[count,] <- output[[i]]$model.crps
+ }
Error in error.mat[count, ] <- output[[i]]$error[, 1] : 
  subscript out of bounds
> models=5
> train=5
>  alpha<-c(10,5,3)
>   if (models>3){alpha<-c(alpha, rep(1, models-3))}
>  a.mean <- alpha/sum(alpha) # ?
> c<-c(0,.01, 0.02, 0.025, 0.03, 0.04, .05, 0.075, 0.1, 0.15, 0.2, 0.3, .5)
> slots<-rep(NA,13)
> count<-0
> for(i in 1:1911){
+  if(output[[i]]$theseParams[1]==train & output[[i]]$theseParams[2]==models){
+  count<-count+1
+  slots[count]<-i} 
+  }
> error.mat<-mae.mat<-rmse.mat<-mad.mat<-rmsle.mat <- mape.mat <- meape.mat <- mrae.mat <- pw.mat <- crps.mat <- matrix(NA,nrow=13,ncol=100)
> for(i in slots){
+  count<-which(slots==i)
+         errror.all.mat<-abs(output[[i]]$error)%*%a.mean
+  error.mat[count,]<-output[[i]]$error[,1]
+  rmse.mat[count,]<-output[[i]]$pred.rmse[,"EBMA"]
+  mae.mat[count,]<-output[[i]]$pred.mae[,"EBMA"]
+         mad.mat[count,]<-output[[i]]$pred.mad[,"EBMA"]
+         rmsle.mat[count,] <- output[[i]]$pred.rmsle[,"EBMA"]
+         mape.mat[count,] <- output[[i]]$pred.mape[,"EBMA"]
+         meape.mat[count,] <- output[[i]]$pred.meape[,"EBMA"]
+         mrae.mat[count,] <- output[[i]]$pred.mrae[,"EBMA"]
+         pw.mat[count,] <- output[[i]]$pred.pw[,"EBMA"]
+         crps.mat[count,] <- output[[i]]$model.crps
+ }
> if(func=="med"){
+  error.all<-apply(abs(error.mat),1,FUN=median,na.rm=TRUE)
+  error<-(apply(error.mat,1,FUN=median, na.rm=TRUE))
+  rmse<-abs(apply(rmse.mat,1,FUN=median, na.rm=TRUE))
+  mae<-abs(apply(mae.mat,1,FUN=median, na.rm=TRUE))
+        mad<-abs(apply(mad.mat,1,FUN=median, na.rm=TRUE))
+         rmsle<-abs(apply(rmsle.mat,1,FUN=median, na.rm=TRUE))
+         mape<-abs(apply(mape.mat,1,FUN=median, na.rm=TRUE))
+         meape<-abs(apply(meape.mat,1,FUN=median, na.rm=TRUE))
+         mrae<-abs(apply(mrae.mat,1,FUN=median, na.rm=TRUE))
+         pw<-abs(apply(pw.mat,1,FUN=median, na.rm=TRUE))
+         crps<-abs(apply(crps.mat,1,FUN=median, na.rm=TRUE))
+       }
Error: object 'func' not found
>  error.all<-apply(abs(error.mat),1,FUN=median,na.rm=TRUE)
>  error<-(apply(error.mat,1,FUN=median, na.rm=TRUE))
>  rmse<-abs(apply(rmse.mat,1,FUN=median, na.rm=TRUE))
>  mae<-abs(apply(mae.mat,1,FUN=median, na.rm=TRUE))
>        mad<-abs(apply(mad.mat,1,FUN=median, na.rm=TRUE))
>         rmsle<-abs(apply(rmsle.mat,1,FUN=median, na.rm=TRUE))
>         mape<-abs(apply(mape.mat,1,FUN=median, na.rm=TRUE))
>         meape<-abs(apply(meape.mat,1,FUN=median, na.rm=TRUE))
>         mrae<-abs(apply(mrae.mat,1,FUN=median, na.rm=TRUE))
>         pw<-abs(apply(pw.mat,1,FUN=median, na.rm=TRUE))
>         crps<-abs(apply(crps.mat,1,FUN=median, na.rm=TRUE))
> error.all
 [1] 0.1458727 0.2232547 0.2372671 0.2369210 0.2229444 0.2030052 0.2597597
 [8] 0.2162401 0.2266492 0.2266173 0.1725958 0.2125142 0.2639894
> output[[1]]$these.params
NULL
> output[[1]]
$theseParams
[1]   3   3 100 250   0

$error
               [,1]        [,2]       [,3]
  [1,]  0.106668439  0.05872828 -0.1653967
  [2,] -0.225321003  0.05160032  0.1737207
  [3,] -0.552225940  0.71959257 -0.1673666
  [4,]  0.121440598 -0.30096990  0.1795293
  [5,]  0.107817408  0.04947915 -0.1572966
  [6,] -0.225021044 -0.28307490  0.5080959
  [7,]  0.082443733 -0.28362381  0.2011801
  [8,]  0.119594374  0.04616418 -0.1657586
  [9,] -0.002332946  0.16516496 -0.1628320
 [10,]  0.108198623  0.05291062 -0.1611092
 [11,]  0.115206433 -0.27505333  0.1598469
 [12,] -0.224942937  0.39040487 -0.1654619
 [13,]  0.427679956 -0.26702191 -0.1606580
 [14,]  0.101085402 -0.28014775  0.1790623
 [15,]  0.452718503 -0.27980507 -0.1729134
 [16,]  0.445524645 -0.27629817 -0.1692265
 [17,]  0.131627662 -0.29301432  0.1613867
 [18,] -0.551823806  0.71940593 -0.1675821
 [19,] -0.219030098  0.05453261  0.1644975
 [20,] -0.230548913  0.38971613 -0.1591672
 [21,] -0.547983265  0.38302839  0.1649549
 [22,] -0.570087653  0.06349327  0.5065944
 [23,]  0.114341644  0.04596343 -0.1603051
 [24,]  0.444772089 -0.27980820 -0.1649639
 [25,] -0.224619938  0.38630126 -0.1616813
 [26,]  0.094855149  0.06218974 -0.1570449
 [27,]  0.037733127  0.12604901 -0.1637821
 [28,]  0.447410697 -0.27623752 -0.1711732
 [29,] -0.218284076  0.05319259  0.1650915
 [30,] -0.558481233 -0.27611102  0.8345923
 [31,]  0.108888578 -0.26965051  0.1607619
 [32,] -0.220943831  0.05417708  0.1667667
 [33,]  0.445267652 -0.27550662 -0.1697610
 [34,]  0.446030092 -0.27331464 -0.1727155
 [35,]  0.093488359  0.07752320 -0.1710116
 [36,] -0.543457564  0.05751932  0.4859382
 [37,] -0.226092860  0.05631806  0.1697748
 [38,] -0.230984764  0.40744353 -0.1764588
 [39,]  0.112380936  0.06315450 -0.1755354
 [40,] -0.548172855  0.29815972  0.2500131
 [41,] -0.234897807  0.05754544  0.1773524
 [42,] -0.563949730  0.06206232  0.5018874
 [43,]  0.450945565 -0.28545675 -0.1654888
 [44,] -0.223710771  0.39647728 -0.1727665
 [45,] -0.564860443  0.34554887  0.2193116
 [46,] -0.220499404  0.05995957  0.1605398
 [47,] -0.549976663  0.39014572  0.1598309
 [48,] -0.545805698  0.35261109  0.1931946
 [49,]  0.438237043 -0.28248640 -0.1557506
 [50,] -0.227245844  0.05185287  0.1753930
 [51,] -0.217850105 -0.28907038  0.5069205
 [52,] -0.556934938  0.71414538 -0.1572104
 [53,]  0.103199613  0.06399279 -0.1671924
 [54,] -0.221201052  0.04808564  0.1731154
 [55,] -0.208418285 -0.28315616  0.4915744
 [56,]  0.095434559 -0.26733931  0.1719047
 [57,]  0.112147246  0.05640947 -0.1685567
 [58,]  0.107338513  0.05744850 -0.1647870
 [59,]  0.440704288 -0.27505026 -0.1656540
 [60,]  0.099862729  0.06212754 -0.1619903
 [61,] -0.230908573  0.38977247 -0.1588639
 [62,]  0.077176154  0.09446711 -0.1716433
 [63,] -0.567715270  0.39422595  0.1734893
 [64,] -0.549290193  0.38809217  0.1611980
 [65,] -0.558499477  0.05908430  0.4994152
 [66,]  0.123576101 -0.29432942  0.1707533
 [67,] -0.229200286  0.05614302  0.1730573
 [68,]  0.443963383 -0.27837609 -0.1655873
 [69,] -0.559945914  0.37915313  0.1807928
 [70,] -0.084608318  0.24392773 -0.1593194
 [71,] -0.231525419  0.40362894 -0.1721035
 [72,] -0.007491550  0.17192878 -0.1644372
 [73,] -0.222786390  0.05348115  0.1693052
 [74,]  0.084112027  0.07299758 -0.1571096
 [75,]  0.055332347  0.11392976 -0.1692621
 [76,]  0.107048563  0.05667018 -0.1637187
 [77,]  0.043423645  0.12753866 -0.1709623
 [78,]  0.109981793  0.05701476 -0.1669966
 [79,]  0.093032064  0.07518632 -0.1682184
 [80,]  0.110590958  0.05035229 -0.1609432
 [81,]  0.445784880 -0.27130948 -0.1744754
 [82,] -0.545382873  0.39298417  0.1523987
 [83,] -0.554075080  0.39161356  0.1624615
 [84,] -0.033765672  0.20009233 -0.1663267
 [85,] -0.219872281 -0.28676894  0.5066412
 [86,] -0.211546485  0.38240730 -0.1708608
 [87,]  0.119791813 -0.27899681  0.1592050
 [88,]  0.447259716 -0.28374388 -0.1635158
 [89,]  0.101070740  0.06307710 -0.1641478
 [90,]  0.446905005 -0.27613259 -0.1707724
 [91,]  0.087102326 -0.26066647  0.1735641
 [92,]  0.113970069  0.05180838 -0.1657784
 [93,]  0.108910192  0.05887775 -0.1677879
 [94,]  0.447463398 -0.27352134 -0.1739421
 [95,]  0.111338491 -0.28902177  0.1776833
 [96,] -0.467532516  0.05182092  0.4157116
 [97,]  0.099942593 -0.27211608  0.1721735
 [98,] -0.234795454  0.06638173  0.1684137
 [99,]  0.112115988 -0.28638991  0.1742739
[100,] -0.221328280  0.37969673 -0.1583684

$model.crps
            [,1]
  [1,]  3.667572
  [2,]  5.688390
  [3,] 13.307988
  [4,]  7.110773
  [5,]  5.179494
  [6,]  5.944946
  [7,]  3.860704
  [8,]  4.377022
  [9,]  5.080289
 [10,]  4.754631
 [11,]  7.283100
 [12,] 10.347905
 [13,]  3.831654
 [14,]  4.159421
 [15,]  9.765096
 [16,]  3.113174
 [17,]  7.033026
 [18,] 11.194843
 [19,]  5.854114
 [20,]  6.909229
 [21,]  5.617751
 [22,]  9.990947
 [23,]  7.577704
 [24,]  5.500987
 [25,]  7.812340
 [26,]  2.577255
 [27,]  6.698321
 [28,] 10.317019
 [29,]  6.445994
 [30,] 16.172343
 [31,]  6.240258
 [32,]  8.104503
 [33,]  7.161296
 [34,]  9.749635
 [35,]  6.868730
 [36,] 11.066258
 [37,]  7.806363
 [38,]  6.682104
 [39,]  6.002625
 [40,]  8.352776
 [41,]  6.541501
 [42,] 11.933895
 [43,]  6.315618
 [44,]  7.424189
 [45,]  8.313120
 [46,]  6.366087
 [47,]  7.097254
 [48,]  8.581526
 [49,]  5.694534
 [50,]  4.730972
 [51,] 11.769302
 [52,]  6.878606
 [53,]  5.373881
 [54,]  6.797588
 [55,] 11.145141
 [56,]  4.607749
 [57,]  4.227355
 [58,]  5.161524
 [59,]  5.796111
 [60,]  4.423112
 [61,]  7.444577
 [62,]  4.846286
 [63,] 14.391948
 [64,]  7.868354
 [65,] 13.252297
 [66,] 10.578574
 [67,]  4.032152
 [68,]  5.808969
 [69,] 11.830227
 [70,]  5.098946
 [71,]  7.681896
 [72,]  5.856455
 [73,]  6.476036
 [74,]  3.276774
 [75,]  3.902441
 [76,]  3.414548
 [77,]  3.811140
 [78,]  6.743935
 [79,]  3.294159
 [80,]  5.039314
 [81,]  7.742678
 [82,] 10.277239
 [83,]  9.428005
 [84,]  3.330850
 [85,]  8.882327
 [86,]  7.036094
 [87,]  7.063190
 [88,]  4.240952
 [89,]  4.864202
 [90,]  7.975245
 [91,]  7.561170
 [92,]  4.029459
 [93,]  6.183498
 [94,]  5.254969
 [95,]  7.956760
 [96,]  8.172842
 [97,]  3.637106
 [98,]  6.633018
 [99,]  6.401945
[100,]  5.971115

$pred.mae
            EBMA   Model 1   Model 2   Model 3
  [1,]  4.984913  5.107577  9.844524 11.799284
  [2,]  8.391320  7.083074 12.060042 14.776504
  [3,] 13.638951  7.938853 13.638950  9.234758
  [4,]  8.752866  8.792530 10.656100 20.724277
  [5,]  7.154150  7.285455  8.674167 16.666354
  [6,] 10.078466  6.003637  9.386213 10.458670
  [7,]  4.490586  4.573853  6.625687 12.296613
  [8,]  6.395274  6.555508  8.741146 13.061372
  [9,]  7.408833  7.521016 10.885130 11.731835
 [10,]  6.731458  6.946525  6.946994 12.711011
 [11,] 10.213010 10.341067 15.170526 15.558016
 [12,] 17.716548 11.868574 18.066884 20.839276
 [13,]  4.317000  4.316999  7.936178  7.253893
 [14,]  5.095479  5.129455  7.590000 12.318483
 [15,] 10.119365 10.119364 17.691163 18.988569
 [16,]  3.362840  3.362839  4.172367  7.180063
 [17,]  9.988028 10.125708 12.819770 16.231146
 [18,] 11.444570 10.092775 11.444570 21.130937
 [19,]  8.560533  8.436995 11.156638 15.778816
 [20,] 12.550621  7.037607 12.912027 11.205608
 [21,]  9.212753  4.912501  9.672101  6.176378
 [22,] 16.085750  8.459155 16.343048 16.367069
 [23,] 11.474547 11.683334 16.655399 16.164126
 [24,]  5.922010  5.922009 10.130536 13.137771
 [25,] 12.807280  9.112946 12.935707 17.642724
 [26,]  3.373310  3.449882  7.524210  5.408359
 [27,]  8.769722  8.839500 12.606879 20.129841
 [28,] 10.626578 10.626578 16.466459 17.748964
 [29,] 10.363724 10.089440 11.955739 14.606753
 [30,] 16.782373  8.510313 12.720220 16.782371
 [31,]  7.178073  7.123658 11.559160 12.171005
 [32,] 12.051154 11.368311 15.203879 21.891540
 [33,]  7.402675  7.402674 10.078198 13.781627
 [34,] 10.114633 10.114633 14.061294 17.612890
 [35,] 10.060837 10.168042 18.576157 16.533667
 [36,] 12.411115  9.541199 11.640997 12.592674
 [37,] 12.045215 10.606531 14.903825 20.117262
 [38,] 12.196855  7.767319 12.448323 12.513077
 [39,]  8.383208  8.456097 14.620223 15.677160
 [40,] 12.563462  7.397170 12.900197 10.954969
 [41,] 11.479304  7.722247 13.420671 14.303029
 [42,] 16.175987  8.496969 14.877980 16.194440
 [43,]  6.748464  6.748464 11.201906 13.367682
 [44,] 12.711559  8.173574 12.855606 14.542418
 [45,] 11.684633  7.419216 11.835557 14.961877
 [46,] 10.109959  8.017965 12.643140 15.617161
 [47,]  9.418165  6.802540  9.524196 15.245878
 [48,] 11.236117  8.977280 11.395902 17.520988
 [49,]  6.164588  6.164586  8.804672 17.768794
 [50,]  6.322421  5.981691 12.656187 10.873267
 [51,] 20.171315 12.431749 14.859534 20.581258
 [52,]  7.885058  5.919435  7.885057 14.104562
 [53,]  7.157772  7.243971 14.889832 12.760172
 [54,]  9.793761  9.134314 13.824791 18.198948
 [55,] 17.456500 11.419890 13.791215 18.027201
 [56,]  5.155544  5.175519 11.006627  8.678145
 [57,]  5.352487  5.402608 11.503994  8.691208
 [58,]  7.708068  7.784412 10.384279 12.724814
 [59,]  6.041470  6.041470 10.353106 14.122380
 [60,]  5.556258  5.610337  8.948415 10.648093
 [61,] 12.835061  9.385954 12.906549 14.507612
 [62,]  6.236509  6.214447 10.422075 17.790347
 [63,] 19.078790 11.900721 19.232784 20.278123
 [64,] 13.249050  6.624345 13.608245  8.716358
 [65,] 17.659904  8.401428 15.371075 17.850549
 [66,] 14.047617 14.123561 18.633200 22.501887
 [67,]  6.532893  6.202078  8.199650  8.134310
 [68,]  6.116427  6.116426  8.308257 13.380332
 [69,] 16.632170 10.024617 16.843027 18.118771
 [70,] 11.645798  6.086287 12.433707 13.016004
 [71,] 13.364240  8.325489 13.767143 16.242238
 [72,]  7.852344  7.887848 11.401708 17.587645
 [73,] 10.820034  7.897989 14.092061 14.327419
 [74,]  4.689854  4.727875  7.544953  6.851966
 [75,]  5.065104  5.107834  7.780217  8.912141
 [76,]  4.841542  4.920395  8.922484  7.989535
 [77,]  5.175941  5.214164  8.516043 11.963993
 [78,]  9.458196  9.502527 14.297915 19.415082
 [79,]  5.130225  5.403219  6.702416  8.149197
 [80,]  6.904778  6.978645 10.957462 19.695244
 [81,]  8.139137  8.139137 14.786710 12.772230
 [82,] 13.066155 10.402360 13.235098 16.444181
 [83,] 12.142158 11.205357 12.245711 16.567730
 [84,]  5.321272  5.391619  6.265856  9.212629
 [85,] 16.565457  6.707223 11.683442 17.286822
 [86,] 11.756337  8.475409 12.007640 17.631378
 [87,]  9.503506  9.586429 13.424518 17.742541
 [88,]  4.819899  4.819899  7.771544  7.443411
 [89,]  6.847778  6.851683 11.271655 14.750040
 [90,]  8.374162  8.374162 16.254938 17.234541
 [91,]  9.851897  9.936945 14.382967 18.604906
 [92,]  5.554247  5.625029  9.061199 11.166849
 [93,]  8.746930  8.819338 13.324304 19.913449
 [94,]  5.519490  5.519490 10.313305 12.632302
 [95,] 10.544218 10.619211 14.979540 17.670598
 [96,] 12.832257  7.911262 13.770128 13.110657
 [97,]  4.589648  4.660741  7.736319  6.910004
 [98,] 10.353316  8.944890 16.481403 12.975191
 [99,]  7.710695  7.744011 15.824227 13.673776
[100,] 10.916125  6.669039 11.194958 12.017643

$pred.rmse
            EBMA   Model 1   Model 2   Model 3
  [1,]  8.537673  8.917301 13.949714 16.384804
  [2,] 13.050023 12.259945 17.670977 20.227689
  [3,] 19.809416 15.053749 19.809415 15.030458
  [4,] 14.428044 14.680203 15.521530 26.954671
  [5,] 12.613597 12.904018 12.488007 22.794997
  [6,] 13.238388 10.519720 13.165183 13.629841
  [7,]  7.849681  8.194905  9.460595 16.302066
  [8,] 10.514959 10.804258 12.797463 16.079928
  [9,] 12.488318 13.035265 15.949309 16.542776
 [10,] 11.267162 11.525195 10.643318 17.191202
 [11,] 18.109840 18.420642 22.555780 20.846693
 [12,] 25.811747 21.496532 26.176494 27.542150
 [13,]  7.357083  7.357083 10.898766  9.817948
 [14,]  9.254293  9.339206 10.569953 15.776337
 [15,] 18.524916 18.524916 26.521802 25.658223
 [16,]  5.673971  5.673970  5.641693  9.554961
 [17,] 16.515552 16.762122 18.745878 23.495754
 [18,] 17.445997 17.274414 17.445997 28.972459
 [19,] 13.150017 14.269913 16.727051 21.876356
 [20,] 18.244856 12.919800 18.644282 15.349065
 [21,] 12.554775  8.704527 13.147884  8.528298
 [22,] 22.440024 14.473286 24.010260 22.752036
 [23,] 20.536714 20.942905 23.746688 20.334650
 [24,] 10.834698 10.834697 14.166158 17.763694
 [25,] 18.041977 15.689021 18.181767 23.976373
 [26,]  5.725933  5.946216 10.567348  7.755826
 [27,] 14.871520 15.436536 18.728357 27.341035
 [28,] 18.296105 18.296105 22.611847 24.839731
 [29,] 15.492961 16.735583 18.615109 19.404578
 [30,] 22.948610 15.240191 19.386317 22.948609
 [31,] 11.704067 11.640587 16.294704 16.456523
 [32,] 18.598430 20.001123 21.906255 31.710765
 [33,] 12.670982 12.670981 15.543156 19.158422
 [34,] 17.487743 17.487742 20.151940 24.044375
 [35,] 19.044505 19.322197 26.045569 22.600367
 [36,] 18.799305 16.840444 17.891729 18.935891
 [37,] 18.436840 18.668879 22.160381 27.081257
 [38,] 17.231805 13.204694 17.536226 16.608506
 [39,] 14.052495 14.220826 21.214977 20.601167
 [40,] 18.388275 13.302242 18.924494 15.070837
 [41,] 17.459744 14.689718 19.860657 20.281395
 [42,] 21.984360 15.468033 20.981547 22.002853
 [43,] 12.168982 12.168981 16.401217 17.575883
 [44,] 17.458818 13.999154 17.611357 19.321925
 [45,] 16.703302 13.662106 17.018104 20.386212
 [46,] 15.091475 14.797892 18.050440 21.204474
 [47,] 13.261269 11.365466 13.506688 20.635499
 [48,] 16.012053 15.594807 16.425471 23.559016
 [49,] 11.453461 11.453460 13.026867 23.900721
 [50,] 10.071188 10.964331 17.652974 14.438328
 [51,] 29.040561 20.851635 21.886822 29.461354
 [52,] 11.501511 10.977451 11.501511 19.497179
 [53,] 12.973077 13.204566 21.328609 17.307717
 [54,] 15.694949 17.024384 20.371669 24.672663
 [55,] 23.349750 18.582052 21.249544 24.090379
 [56,]  9.130275  9.164086 14.787967 12.308992
 [57,]  9.089353  9.320324 16.497999 12.277538
 [58,] 13.286336 13.394675 15.401609 17.313784
 [59,] 11.333093 11.333094 15.306326 19.472707
 [60,]  9.162496  9.305982 12.706913 15.300548
 [61,] 18.842069 16.248728 18.921048 19.498347
 [62,] 11.675285 12.011054 15.561260 23.834298
 [63,] 26.729354 22.031099 26.905476 27.755580
 [64,] 18.622559 12.969535 19.043688 13.640519
 [65,] 24.709058 15.784772 21.371422 24.916297
 [66,] 24.161975 24.333443 27.372015 30.486761
 [67,]  9.654918 11.025659 12.024170 11.399001
 [68,] 10.305839 10.305838 12.053273 17.406541
 [69,] 23.938577 18.576225 24.281229 25.470145
 [70,] 16.874368 11.555660 17.858574 18.657312
 [71,] 20.160881 15.083556 20.695315 21.974485
 [72,] 13.193269 13.455846 16.254713 23.619798
 [73,] 16.171179 14.020817 19.842280 19.493959
 [74,]  7.865688  7.910507 10.729880  8.545234
 [75,]  8.767863  8.821061 11.062602 12.109286
 [76,]  8.451623  8.606574 12.906153 10.764284
 [77,]  8.973982  9.565127 12.475342 16.355141
 [78,] 16.624490 16.894787 21.705291 27.055269
 [79,]  8.475089  8.903755  9.439735 11.203548
 [80,] 11.748833 11.930678 14.769491 26.185570
 [81,] 15.009511 15.009510 20.899005 17.802474
 [82,] 19.604309 17.959510 19.893274 21.911110
 [83,] 18.849154 19.480839 19.066522 23.182214
 [84,]  9.204921 10.071731  9.011790 12.359296
 [85,] 21.377668 12.008784 16.785620 22.155443
 [86,] 16.915158 15.607346 17.175739 23.378928
 [87,] 17.598577 17.728734 18.749052 23.661126
 [88,]  7.672572  7.672570 10.580126 10.497066
 [89,] 12.358948 12.748936 16.475219 19.665058
 [90,] 14.734574 14.734573 23.122432 23.607714
 [91,] 18.806824 18.997800 21.249528 24.525051
 [92,]  9.531110  9.659768 13.238852 14.880391
 [93,] 16.160364 16.299776 19.062745 26.351126
 [94,]  9.721859  9.721859 14.970433 16.748046
 [95,] 18.542589 18.882018 22.461423 23.952923
 [96,] 17.505325 13.486606 18.372198 17.851575
 [97,]  7.666815  7.753669 11.303623  8.469370
 [98,] 15.570580 17.001805 24.585666 17.833442
 [99,] 13.971092 14.052305 22.523077 19.238043
[100,] 15.913688 12.563685 16.281566 16.582319

$pred.mad
            EBMA  Model 1   Model 2   Model 3
  [1,]  1.568296 1.325923  7.240918  8.530698
  [2,]  3.570960 1.660919  7.521369 10.967582
  [3,]  9.426736 1.513990  9.426743  4.969860
  [4,]  2.344569 1.792767  6.777007 18.254198
  [5,]  1.751451 1.632027  6.540290 12.799276
  [6,]  9.087502 1.386706  6.363602  9.613097
  [7,]  1.740269 1.306683  4.496106  9.549593
  [8,]  1.690518 1.623369  5.929968 12.792972
  [9,]  2.150416 1.430079  6.025828  8.684292
 [10,]  2.042401 2.097760  3.664078 10.056010
 [11,]  1.851652 1.509382  9.029183 11.393158
 [12,] 13.109546 1.432454 13.380834 16.841792
 [13,]  1.314905 1.314905  5.810606  5.250297
 [14,]  1.228738 1.214606  5.514378 11.021742
 [15,]  1.490522 1.490517 11.662257 15.080302
 [16,]  1.271347 1.271348  3.181936  5.894554
 [17,]  1.741690 1.637726  8.901119 10.577126
 [18,]  6.954783 2.231688  6.954782 16.197782
 [19,]  3.861251 1.613106  7.142189 12.032833
 [20,]  7.545419 1.312871  8.157151  8.407135
 [21,]  6.772387 1.375532  7.357964  4.583507
 [22,] 12.365350 1.644240 10.599745 12.597875
 [23,]  1.871974 1.802209 12.490726 15.764535
 [24,]  1.251348 1.251349  7.305403  9.683337
 [25,] 11.208171 1.493885 11.208172 14.299999
 [26,]  1.376544 1.348251  5.327503  3.415162
 [27,]  2.694558 1.963372  7.875308 15.544220
 [28,]  1.920417 1.920421 13.127065 13.830949
 [29,]  6.292052 2.023767  6.072572 11.963735
 [30,] 13.371166 1.573425  8.237354 13.371153
 [31,]  2.151633 1.665577  8.616390 10.439457
 [32,]  5.947336 1.578514 10.158753 16.356239
 [33,]  1.576567 1.576557  5.093136 11.128266
 [34,]  1.823143 1.823143  8.960593 14.239111
 [35,]  1.756437 1.569717 14.958874 12.652022
 [36,]  6.511597 1.578420  5.642352  6.811584
 [37,]  8.442648 1.638401  9.485032 16.630172
 [38,]  8.698887 1.662489  9.180498 10.188167
 [39,]  1.810093 1.515012  9.678733 12.435070
 [40,]  7.449866 1.341222  7.789254  8.377098
 [41,]  6.540130 1.215281  8.667188  9.583603
 [42,] 12.734856 1.386157 10.627805 12.771252
 [43,]  1.533889 1.533888  7.803693 10.786745
 [44,] 10.974416 1.661189 10.974416 11.835246
 [45,]  7.549490 1.441612  8.238325 11.158320
 [46,]  6.098644 1.238127  9.394104 12.384141
 [47,]  7.631032 1.574726  7.785280 12.223420
 [48,]  7.673526 1.483618  7.998397 14.110871
 [49,]  1.384988 1.384983  5.583775 14.563974
 [50,]  2.735597 1.295295  9.118643  9.137244
 [51,] 15.421589 1.931585  9.890917 15.946389
 [52,]  5.591961 1.303480  5.591961 10.268498
 [53,]  1.376367 1.230499 10.693283  9.640926
 [54,]  5.452403 1.429429 10.110658 14.874754
 [55,] 14.535338 2.009175  7.189568 15.651972
 [56,]  1.385700 1.360817  9.286232  5.901031
 [57,]  1.676204 1.371247  7.679144  6.658173
 [58,]  1.690839 1.724848  6.257183  9.389658
 [59,]  1.543264 1.543258  6.906918 10.324979
 [60,]  1.881564 1.593224  6.703881  7.536347
 [61,]  8.010612 1.549799  8.146025 10.532865
 [62,]  1.874372 1.200613  5.898273 14.300347
 [63,] 14.697480 1.237030 15.039074 15.641169
 [64,] 10.256092 1.461394 10.906216  4.888765
 [65,] 13.770755 1.189983 12.718986 14.252820
 [66,]  1.770398 1.608120 11.072032 18.744962
 [67,]  3.823293 1.383291  5.459600  5.904979
 [68,]  1.262953 1.262951  6.009797 11.479944
 [69,] 11.305663 1.384188 12.153935 12.855692
 [70,]  7.754727 1.011266  8.637128  9.529653
 [71,]  7.659276 1.548341  8.330696 12.405345
 [72,]  1.886315 1.398964  8.429875 13.833372
 [73,]  4.973498 1.575951 10.505152 11.272104
 [74,]  1.440621 1.494283  4.920988  6.528336
 [75,]  1.485777 1.442511  5.341460  6.907957
 [76,]  1.346689 1.335012  6.329981  6.413855
 [77,]  2.200595 1.286426  5.368938  9.112386
 [78,]  1.878291 1.449194  7.117480 14.824800
 [79,]  1.664642 1.608518  4.771842  5.450367
 [80,]  1.561237 1.452229  9.506055 16.139354
 [81,]  1.401374 1.401374 10.168080 10.023364
 [82,]  7.750068 1.643343  7.858109 13.064272
 [83,]  5.517286 1.848617  5.625820 11.032034
 [84,]  2.250304 1.174596  3.546656  7.136507
 [85,] 14.868746 1.354139  7.947754 15.774061
 [86,]  8.690203 1.291590  8.991831 14.603904
 [87,]  1.507428 1.398625 10.880535 13.919880
 [88,]  1.532387 1.532398  6.622547  5.328309
 [89,]  1.814753 1.352353  7.131954 11.423579
 [90,]  1.547745 1.547744 11.227716 13.574683
 [91,]  1.638130 1.397669  9.307968 15.607325
 [92,]  1.369934 1.262625  6.412061  8.498383
 [93,]  1.505028 1.392679  9.192123 16.520259
 [94,]  1.231735 1.231733  6.891304 10.927094
 [95,]  2.013709 1.728030  8.637001 13.454433
 [96,]  9.865069 1.787141 12.394243  9.477223
 [97,]  1.344652 1.392075  4.875810  6.643313
 [98,]  5.798670 1.390322 10.048365 10.609160
 [99,]  1.440007 1.362157 10.784223 10.068113
[100,]  8.007248 1.412194  8.198742  9.062699

$pred.rmsle
            EBMA   Model 1   Model 2   Model 3
  [1,] 0.6569500 0.5851577 1.1783529 1.2875942
  [2,] 1.1063194 1.0591460 1.2412961 1.4613367
  [3,] 0.6187592 0.4100103 0.6187590 0.8043488
  [4,] 0.6516361 0.6701086 1.0373054 1.3370291
  [5,] 0.6930591 0.7061987 1.6358745 1.8395138
  [6,] 1.1353410 0.5480612 0.9893231 1.1589968
  [7,] 0.5167161 0.5411179 0.9560128 1.4577464
  [8,] 0.4436466 0.4562746 0.8396684 0.4867128
  [9,] 0.5789985 0.5678919 0.9365260 1.0331246
 [10,] 0.5589948 0.6062610 0.8289018 1.2295649
 [11,] 0.8295940 0.8180840 1.1450060 1.7887510
 [12,] 1.0684436 0.8268581 1.0776355 1.2488979
 [13,] 0.5559465 0.5559463 0.8877300 0.9440324
 [14,] 0.5015664 0.5159026 0.7618985 1.3704657
 [15,] 0.6744990 0.6744996 1.2712602 1.2831534
 [16,] 0.4918695 0.4918692 0.4002782 1.0289709
 [17,] 0.6810521 0.6774805 0.8159838 0.9944305
 [18,] 1.0232467 0.7620298 1.0232460 1.2346594
 [19,] 0.9356950 0.8185553 1.0996500 1.3008045
 [20,] 1.1507280 0.6186696 1.1994808 0.7671652
 [21,] 0.8054611 0.3439549 0.8279645 0.9466585
 [22,] 0.9565941 0.5980801 1.2432386 0.9706520
 [23,] 0.6254423 0.6524551 0.8878480 0.8601054
 [24,] 0.5664976 0.5664979 1.1001362 1.1210099
 [25,] 0.5353242 0.3716474 0.5321472 1.1933583
 [26,] 0.5009428 0.4994321 0.8009682 0.5662606
 [27,] 0.4630675 0.4777489 0.6061753 1.1076020
 [28,] 0.7098312 0.7098309 1.4696466 1.3223227
 [29,] 1.1577609 0.8971893 1.0092673 1.2839727
 [30,] 1.0809798 0.4032714 0.7853061 1.0809795
 [31,] 1.7240071 1.1960482 1.7880667 1.1554889
 [32,] 1.0781514 0.7422137 1.2886016 1.5003331
 [33,] 0.8817595 0.8817595 1.2222251 1.4602120
 [34,] 0.6980654 0.6980652 1.0623091 1.2070099
 [35,] 0.7463952 0.7601661 1.5437661 2.3993249
 [36,] 1.9165248 1.6640075 2.0066579 1.7259371
 [37,] 1.2909733 0.9975307 1.4426033 1.6346801
 [38,] 0.9487499 0.5825439 0.9369161 1.0498509
 [39,] 0.7876571 0.7845620 1.1599590 0.9844605
 [40,] 1.2535139 0.7464317 1.2571149 1.1909157
 [41,] 1.6961524 0.8355265 1.6774983 1.7482119
 [42,] 1.0335361 0.5648229 0.9456391 1.0343263
 [43,] 0.5935031 0.5935029 0.9767751 1.0615961
 [44,] 0.9527007 0.5711707 0.9397662 1.0790994
 [45,] 1.0028928 0.7747879 0.9759929 1.3235503
 [46,] 1.1020688 0.7725419 1.2345220 1.4744347
 [47,] 0.9068800 0.7268340 0.9117615 1.4918653
 [48,] 1.2335682 0.7838094 1.2079217 1.5921908
 [49,] 0.5414324 0.5414321 0.9712551 1.3524452
 [50,] 0.7730021 0.6424276 1.1796995 1.2523456
 [51,] 1.3917799 0.8852942 1.2393390 1.4328016
 [52,] 1.3268750 0.6588456 1.3268743 1.5024582
 [53,] 0.7021891 0.6724214 1.0551359 1.0391270
 [54,] 0.9908319 0.8104700 1.1971359 1.4132551
 [55,] 1.3127977 0.8217196 0.9318706 1.2588224
 [56,] 0.4752492 0.4897181 0.9951804 0.7736686
 [57,] 0.6137754 0.5794967 1.3993839 0.9031575
 [58,] 0.6214069 0.6209911 0.8220351 1.1016772
 [59,] 0.6360123 0.6360123 0.9555733 1.2449386
 [60,] 0.7619033 0.7488543 0.9255519 1.2657078
 [61,] 1.1152687 0.7263652 1.1164196 1.2543775
 [62,] 0.4192022 0.4133014 0.5740286 1.0446656
 [63,] 1.3156078 0.6440704 1.3334315 1.2609182
 [64,] 1.5089519 0.6724319 1.5216802 1.2603253
 [65,] 1.3397767 0.6897219 1.2316899 1.3521194
 [66,] 0.7626373 0.7541604 0.9758556 1.3029092
 [67,] 0.6438166 0.5771230 0.8668665 0.8310893
 [68,] 0.6555011 0.6555006 0.8784118 1.1735696
 [69,] 0.9630192 0.4910432 0.9601012 1.1499300
 [70,] 1.6682567 0.8009945 1.8309146 1.5907776
 [71,] 0.9156740 0.6258702 0.9545243 1.1219130
 [72,] 0.7237943 0.6911380 1.1672174 1.2781640
 [73,] 1.6644504 0.8409873 1.3722484 1.9797101
 [74,] 0.5495324 0.5545207 0.8400446 1.5717528
 [75,] 0.6744145 0.6824998 0.9869632 1.0508505
 [76,] 0.4727012 0.4829370 0.9638839 1.1157783
 [77,] 0.4575988 0.4790390 0.8844079 1.1243433
 [78,] 1.5616940 1.4466863 1.9341116 2.4114997
 [79,] 0.4079809 0.3826420 0.4257909 0.6181931
 [80,] 0.3356931 0.3440519 0.6995680 0.9968179
 [81,] 0.6450988 0.6450989 1.2650798 1.0091824
 [82,] 0.8713604 0.6152846 0.8823461 1.3337241
 [83,] 0.8942888 0.6988574 0.9355553 1.1452463
 [84,] 0.4136061 0.4206023 0.7323835 0.9734604
 [85,] 1.3426643 0.6363964 0.8903097 1.3367165
 [86,] 1.4350448 0.7204286 1.4580847 1.5405971
 [87,] 0.7204449 0.7256732 1.3583192 1.2865243
 [88,] 0.5081372 0.5081369 0.8800591 1.0096668
 [89,] 0.4659820 0.4873063 0.9788694 1.0632690
 [90,] 0.6930157 0.6930157 1.4465475 1.3687317
 [91,] 0.6249630 0.6436984 1.2607415 1.3792178
 [92,] 0.5734846 0.5512093 0.8319384 1.0212374
 [93,] 0.7255100 0.7263182 0.9019487 1.3438501
 [94,] 0.6561162 0.6561163 0.9032293 1.2721118
 [95,] 0.6412422 0.6158090 1.2400540 1.2630391
 [96,] 0.8965783 0.5845884 0.9494210 0.8870298
 [97,] 0.5122947 0.4785153 1.0088014 0.6346669
 [98,] 1.7087044 0.8123417 1.3819202 2.6605574
 [99,] 1.2975549 1.2643627 2.1614725 1.9541137
[100,] 1.3397870 0.9235506 1.3488439 2.4841497

$pred.mape
             EBMA     Model 1    Model 2      Model 3
  [1,]  122.90467   129.07435  479.39359    444.97017
  [2,]  261.13267   475.19660  647.81154   1243.50913
  [3,]  207.76436   107.74538  207.76435     97.57337
  [4,]  163.89792   159.51245  199.58016    509.15166
  [5,]  350.44503   374.40061  149.15642    962.78541
  [6,]  450.24563   524.23190  675.98217    474.11345
  [7,] 1282.02885  1377.91297  169.13182    705.83768
  [8,]   99.43596   104.71222  193.88363    260.68046
  [9,]  183.32651   195.05031  240.71941    328.47044
 [10,]  300.62457   318.68457   94.79117    634.78469
 [11,]  301.45832   322.47833  372.95296    323.45328
 [12,]  592.47801   385.30861  597.59436    283.97616
 [13,]  400.96041   400.96029 1107.24838   2196.80403
 [14,]  226.36596   228.02328  208.59982    664.60057
 [15,]  189.28817   189.28797  393.19075    482.48793
 [16,]   87.25898    87.25897  207.26282    461.85784
 [17,]  202.08515   205.88014  154.44893    187.11417
 [18,]  133.77193   225.51572  133.77192    480.37138
 [19,]  234.49510   128.91224  801.97257    701.57366
 [20,] 1414.92256   244.29169 1528.16102   1241.42339
 [21,]  363.56734   807.01450  418.32003    539.87738
 [22,]  227.11202    94.41412  294.36762    232.96078
 [23,]  699.40610   746.86885  603.46277    213.51035
 [24,]  275.01597   275.01589  185.48354    212.49211
 [25,]  208.60302   101.84282  214.44856    526.53076
 [26,]  191.49690   199.17798  319.41911    187.38278
 [27,]   91.57614    87.52818  139.66457    309.08388
 [28,]  251.08330   251.08332  272.53600    506.48187
 [29,]  236.24185   333.63512  394.50379    358.08531
 [30,]  390.26739   161.65254  148.96181    390.26731
 [31,]  565.30503  1040.38204 1044.91362  10798.49539
 [32,]  190.13294   288.49319  228.88822    832.02783
 [33,]  112.82608   112.82612  788.78610    647.39013
 [34,]  333.32572   333.32559  220.62895    904.48548
 [35,]  358.13481   372.14634  628.58250    136.51660
 [36,]  487.68908   908.00136 1260.32065    566.30806
 [37,]  328.09607   421.51007  256.58355    791.07761
 [38,]  370.33944   151.05425  375.24536    281.71347
 [39,]  161.68641   161.25550  434.70548    268.37972
 [40,] 1666.93180   294.07521 1780.13267    853.98339
 [41,]  149.01665   677.78215  334.74887    516.02736
 [42,]  271.72632   202.60458  201.96223    272.39349
 [43,]  139.54590   139.54597  440.08392    358.53979
 [44,]  135.34546   216.55283  138.39708    393.99779
 [45,]  347.72871   175.68623  358.15480    429.94350
 [46,]  277.67939   374.87672  157.11955    485.93272
 [47,]  741.35638   206.39992  752.21143   1537.83219
 [48,] 5585.04683 52708.62186 2842.29774 108039.28758
 [49,]  190.79685   190.79679  160.05287    644.10447
 [50,]  157.05390   143.58243  524.78731    454.57428
 [51,]  449.33240   238.36266  145.21950    462.93396
 [52,]  292.18602   717.45515  292.18620   1359.07000
 [53,]  143.54772   144.66327  576.03465    205.50832
 [54,]  205.70958   884.40811  330.24167    770.72595
 [55,]  280.33388    99.67619  260.29158    296.60941
 [56,]  106.21338   104.93782  408.98779    338.23975
 [57,]  272.67348   232.08651 1327.38746    307.68054
 [58,]  262.59763   259.54343  451.10869    430.28848
 [59,]  131.31791   131.31797  261.10336    531.81892
 [60,]  298.16157   319.16356  377.27118   1145.90647
 [61,]  300.11264   344.87299  304.07019    463.36201
 [62,]  131.50968   129.32703  174.60089    289.99698
 [63,]  274.73044  1185.34171  246.10999   1521.95818
 [64,]  879.56130   370.31795  903.91860    114.99807
 [65,]  410.79661   368.30287  162.55194    423.44829
 [66,]  310.64712   297.97113 1714.84211    745.76954
 [67,]  176.82069   189.42184  355.95644    212.02826
 [68,]  357.33675   357.33703 2471.85126   2482.07203
 [69,]  208.35794   120.16168  210.39276    352.25532
 [70,]  298.26989   566.75429  371.67961    590.59606
 [71,]  323.37772   996.33364  337.13264    306.17394
 [72,]  130.27645   144.81410  795.22186    951.20788
 [73,]  158.86545   410.86339  372.90116    233.07998
 [74,]  472.93291   478.05333  758.97881    126.43600
 [75,]  120.72843   122.78480  432.05479    460.51230
 [76,]  294.67537   299.66232  521.26976    335.13271
 [77,]  187.32115   203.42508  123.46641    321.44914
 [78,]  152.81072   120.47278 1141.55192   2623.51668
 [79,]   92.55009    99.44179  213.11531    210.90562
 [80,]  143.37895   148.51303  118.08289    318.18706
 [81,]  317.38081   317.38088 3186.10571   1182.86650
 [82,]  289.80646   225.83820  283.61088    432.77757
 [83,]  152.40054   222.26251  157.16513    271.60766
 [84,]  126.95824   155.64090  149.01419    306.48254
 [85,]  369.01040   158.27447  248.28180    394.65424
 [86,]  549.02036   844.40899  503.22450  10249.11900
 [87,]  762.14188   771.83269  200.93048    588.98776
 [88,]  555.49480   555.49474  686.84061    289.83366
 [89,]  128.48722   132.46635  238.31502    314.29448
 [90,]  163.10910   163.10898  754.65077    712.01891
 [91,]  265.49729   267.54100  307.05558    314.58505
 [92,]  277.20446   285.22971  371.15047    382.54986
 [93,]  563.97882   568.54661  210.83876    562.97392
 [94,]  125.64207   125.64204  633.33514    727.21859
 [95,]  157.95020   156.10076  289.68667    330.76387
 [96,]  258.44497   381.87214  337.57999    266.33855
 [97,]  168.18578   179.14230  568.87590    347.88983
 [98,]  162.39118   351.12065  551.15216    112.98666
 [99,]  114.59956   112.30217 1041.87646    857.73022
[100,]  383.71557   819.33978  383.51877    120.49048

$pred.meape
            EBMA  Model 1   Model 2   Model 3
  [1,]  46.87645 39.40011 166.06923 139.01615
  [2,]  77.42349 53.80338 157.59599 153.60183
  [3,] 133.99986 17.26811 133.99985  63.83956
  [4,]  43.20259 29.58880  83.36690 179.56449
  [5,]  44.62485 39.85965  97.58333 229.13353
  [6,] 114.00725 32.48308 101.75213 118.31824
  [7,]  36.18628 28.86848  91.45968 184.80496
  [8,]  33.42703 30.29656  79.87039 161.93648
  [9,]  44.49055 28.30866  93.10474 113.05148
 [10,]  37.73071 34.86804  80.61167 153.06663
 [11,]  25.77025 25.80158  96.66443 100.20480
 [12,]  93.63945 15.97574  97.94851 118.26418
 [13,]  32.08435 32.08435 119.95249 103.26710
 [14,]  36.69994 41.12185 115.79696 185.75178
 [15,]  18.13031 18.13030  98.06962 123.30887
 [16,]  51.84382 51.84386  76.29724 196.07735
 [17,]  24.38138 25.34629  65.63831 101.33569
 [18,]  70.15729 32.02322  70.15722 168.77189
 [19,]  59.17048 43.64136  89.66584 138.72576
 [20,] 110.66511 37.50566 114.28581 123.33493
 [21,] 144.59367 32.75269 154.53007  82.95821
 [22,] 132.89939 30.96074 149.34974 133.51434
 [23,]  21.90736 23.02707 114.11921 119.49930
 [24,]  15.90238 15.90266  79.67731 107.26756
 [25,] 117.30448 23.99170 118.76825 145.22239
 [26,]  39.51968 37.45490 136.06588 105.01808
 [27,]  32.33817 29.72811  57.01122 126.03422
 [28,]  23.53873 23.53845 107.85448 105.56801
 [29,]  76.19136 39.75227  89.78196 118.52115
 [30,] 117.98757 17.19733  82.67629 117.98769
 [31,]  76.01647 85.86808 222.26767 255.41560
 [32,]  68.39171 40.96900  92.87446 126.35934
 [33,]  61.34193 61.34193 103.44681 152.22660
 [34,]  27.32659 27.32658 109.28959 140.02359
 [35,]  21.68028 16.87694 102.60261  98.41974
 [36,] 108.03592 25.40122  96.47918 110.56741
 [37,]  66.74153 21.46258  84.17825 128.00338
 [38,] 120.59633 35.24831 123.71047 114.60311
 [39,]  41.42630 37.88422 116.33885 144.99479
 [40,] 100.30789 25.08651  98.59580  83.41235
 [41,]  83.28700 14.56880  94.79232 104.20480
 [42,] 121.98220 17.94316 108.30821 122.19020
 [43,]  29.79924 29.79921 107.95488 142.54388
 [44,] 105.69268 26.88250 106.26761 120.10782
 [45,] 106.90552 33.11402 107.33211 142.50699
 [46,]  56.17549 11.20361  76.51441  98.41559
 [47,] 129.24792 47.03954 131.36307 194.06968
 [48,]  91.59237 34.78996  83.84956 166.50092
 [49,]  24.59086 24.59086  70.76677 183.30993
 [50,]  55.17996 26.80924 136.28256 120.18044
 [51,] 122.26063 36.55079  92.13281 126.21062
 [52,]  93.77769 28.80208  93.77769 208.21190
 [53,]  19.81115 17.44944 108.49687 100.18159
 [54,]  51.83423 23.30401  90.46082 148.81120
 [55,] 116.29978 41.27545  78.32638 128.27088
 [56,]  35.24878 37.39491 159.11500 110.58174
 [57,]  50.67978 41.44261 198.20175 129.77539
 [58,]  39.61674 37.37393  93.11441 112.52519
 [59,]  28.35676 28.35676 101.97533 156.98707
 [60,]  56.19562 56.82320 130.18805 155.85418
 [61,]  92.92689 39.55396  94.29927 112.74483
 [62,]  25.91118 17.99326  75.77558 160.25687
 [63,] 111.45883 11.08776 112.49055 121.24720
 [64,] 141.98400 29.81364 149.61870  74.93299
 [65,]  96.28626 11.05767  79.60529  97.49382
 [66,]  25.43415 26.66419  67.68613 107.87919
 [67,]  49.88096 26.42785  67.44738  68.03784
 [68,]  45.86856 45.86850 111.85149 180.19031
 [69,]  98.12750 18.61167 103.31548 112.99811
 [70,]  89.87715 15.24234  97.20956 102.36213
 [71,]  72.16228 17.08607  77.62423 112.95943
 [72,]  31.81962 24.15706  80.73138 129.91871
 [73,]  67.98759 17.37503 100.06081 106.33559
 [74,]  17.07959 17.96200  76.14141  87.58439
 [75,]  34.10798 32.02169  72.07188 109.10154
 [76,]  31.46180 28.64730 118.80652 105.48109
 [77,]  25.05346 18.53475  73.61887 100.11491
 [78,]  84.48999 81.94192 167.13781 226.27680
 [79,]  35.64435 38.98926  57.98065 107.19967
 [80,]  15.24857 16.52357 101.86001 191.66293
 [81,]  25.08635 25.08653 127.60398 115.39451
 [82,]  78.22504 27.90900  79.70186 114.39989
 [83,]  72.73911 43.72891  71.28145 118.24136
 [84,]  24.91340 16.97576  49.30404  81.69013
 [85,] 140.04976 16.81691  86.03409 149.12444
 [86,]  82.27601 20.25792  89.01340 133.60136
 [87,]  15.61252 17.95800  81.92131 109.51462
 [88,]  23.09151 23.09153  75.20963  81.75993
 [89,]  29.49516 18.81630  91.67687 148.54827
 [90,]  35.49865 35.49866 165.33194 157.31039
 [91,]  15.87835 12.57987  73.21255 107.61785
 [92,]  34.65043 30.68662 109.19374 130.14843
 [93,]  15.38729 14.65878  79.59391 130.31748
 [94,]  37.41614 37.41642 142.58372 192.74296
 [95,]  31.69128 33.54733  86.94139 120.59424
 [96,] 106.24373 23.00449 118.60840 115.55413
 [97,]  56.06362 54.45075 156.94068 168.31697
 [98,]  84.39615 24.94083 129.42371  98.29230
 [99,]  64.43445 68.52036 305.82736 217.13274
[100,]  90.91239 15.24243  92.56375 104.74172

$pred.mrae
            EBMA   Model 1   Model 2   Model 3
  [1,] 0.5887360 0.5566001 1.9449867 1.8316062
  [2,] 0.8635317 0.5001236 1.3213819 1.5051741
  [3,] 1.6383304 0.2515438 1.6383303 0.8554750
  [4,] 0.6595168 0.5975779 1.0504098 2.5151469
  [5,] 0.4132587 0.4484649 0.9668366 2.4622794
  [6,] 1.3338257 0.2834273 1.1033875 1.3912640
  [7,] 0.4970348 0.4346238 1.1009439 2.4864536
  [8,] 0.4684163 0.5408267 1.1584723 2.2455454
  [9,] 0.5888301 0.4236934 1.3708569 1.4574071
 [10,] 0.7852008 0.8441282 0.9311749 2.2075024
 [11,] 0.3892302 0.4549134 1.6533115 1.4979452
 [12,] 1.1893634 0.1713190 1.2211630 1.5232777
 [13,] 0.6130314 0.6130314 1.9488922 1.5840050
 [14,] 0.4075663 0.4092669 1.2338280 2.4667109
 [15,] 0.3113218 0.3113217 1.5962391 1.5707256
 [16,] 0.7674900 0.7674901 1.1571207 2.4738222
 [17,] 0.5659058 0.5751606 1.2394793 1.5966587
 [18,] 0.9488061 0.5015453 0.9488059 2.0662443
 [19,] 0.7701596 0.5642585 1.0899596 1.7474448
 [20,] 1.4687339 0.3298025 1.5444707 1.2245045
 [21,] 1.5661933 0.2862021 1.6963889 0.8924413
 [22,] 1.4238396 0.3350870 1.5434911 1.4712036
 [23,] 0.4945912 0.4872092 1.5304908 1.4607257
 [24,] 0.3637750 0.3637771 1.5027032 1.9400578
 [25,] 1.0960237 0.2271463 1.1061242 1.6335096
 [26,] 0.6709377 0.6929272 2.3149151 1.3446333
 [27,] 0.6641679 0.4280516 1.1228247 2.3320507
 [28,] 0.3630755 0.3630757 1.4987611 1.6899944
 [29,] 0.9004031 0.7138012 1.1807062 1.2745881
 [30,] 1.5079406 0.3246239 1.0610327 1.5079400
 [31,] 0.7941894 0.8536617 1.8543470 1.7480934
 [32,] 0.8042323 0.3787518 0.9747258 1.5484567
 [33,] 0.5773351 0.5773346 1.4410432 1.7557942
 [34,] 0.4772777 0.4772807 1.2350098 1.7542451
 [35,] 0.2657624 0.2310804 1.8624535 1.3551240
 [36,] 1.2781231 0.3658936 1.1506756 1.2705077
 [37,] 0.8855594 0.2387781 1.0777759 1.4880707
 [38,] 1.3462591 0.2777540 1.3708605 1.1320808
 [39,] 0.5128676 0.5169366 1.6800542 1.6607284
 [40,] 1.3702581 0.3019993 1.4324959 1.0460579
 [41,] 1.0648098 0.2424851 1.2542005 1.3144823
 [42,] 1.3807117 0.2547568 1.1137514 1.3817872
 [43,] 0.4381115 0.4381127 1.7050470 1.6753951
 [44,] 1.2483036 0.3318455 1.2736828 1.4467928
 [45,] 1.1973088 0.2873545 1.1998966 1.7372970
 [46,] 0.9285389 0.2545955 1.1532932 1.3492619
 [47,] 1.1377113 0.3848090 1.1181090 1.9154845
 [48,] 1.0434004 0.3038872 1.0354614 1.8619863
 [49,] 0.3386821 0.3386819 1.0014266 2.6373540
 [50,] 0.8336514 0.3616857 1.9847980 1.3412197
 [51,] 1.3815636 0.3963728 0.8825634 1.4287303
 [52,] 1.0841862 0.3126200 1.0841859 2.2340224
 [53,] 0.4537450 0.4595014 1.9840895 1.3229517
 [54,] 0.8081939 0.3016252 1.1721236 1.7554175
 [55,] 1.4016591 0.4388455 0.9356213 1.4585719
 [56,] 0.5736664 0.5778539 2.7378893 1.3116139
 [57,] 0.6637661 0.5492609 2.0645192 1.4992415
 [58,] 0.5337866 0.5637348 1.2961095 1.6433412
 [59,] 0.4894760 0.4894736 1.2527871 2.1806441
 [60,] 0.8034925 0.7184100 1.4741287 2.0427436
 [61,] 1.1892745 0.3429778 1.1740187 1.2905794
 [62,] 0.5136336 0.3754123 1.0948397 2.7610396
 [63,] 1.3066397 0.1702266 1.2954705 1.2807321
 [64,] 1.6118574 0.2734883 1.7025811 0.8160777
 [65,] 1.3695633 0.1154608 1.1854901 1.3863632
 [66,] 0.3326867 0.3645337 1.3365292 1.6095816
 [67,] 0.9822044 0.4842462 1.1897259 1.2105899
 [68,] 0.6026810 0.6026840 1.3389011 2.1899945
 [69,] 1.2785907 0.2271045 1.2443995 1.4913199
 [70,] 1.1797523 0.1991338 1.3027552 1.3059430
 [71,] 1.1892542 0.3111175 1.1722185 1.6171222
 [72,] 0.5429374 0.4776995 1.2783786 2.0940217
 [73,] 0.9019956 0.2985368 1.2814524 1.3161476
 [74,] 0.6659821 0.6739484 1.7547786 1.5420300
 [75,] 0.5891075 0.6350397 1.5529670 1.6444143
 [76,] 0.4788057 0.4435449 1.8353618 1.3995675
 [77,] 0.5510264 0.4609889 1.2682450 1.9923716
 [78,] 0.4426093 0.4298481 1.3462657 1.8930948
 [79,] 0.5900336 0.6023987 1.4759858 1.7704076
 [80,] 0.3021331 0.2707542 1.1317569 2.2641242
 [81,] 0.4167834 0.4167836 2.0155320 1.4117430
 [82,] 1.1649487 0.4704246 1.1372945 1.4184328
 [83,] 0.9549152 0.4883655 0.9624434 1.4359537
 [84,] 0.7411227 0.5102098 1.0365068 1.9620840
 [85,] 1.5582538 0.1910447 0.8770642 1.6378247
 [86,] 1.0257328 0.1995372 1.0430672 1.6797267
 [87,] 0.3238621 0.3186597 1.2895797 1.8896153
 [88,] 0.8512581 0.8512524 1.5396579 1.6131628
 [89,] 0.4707708 0.3550282 1.4245853 2.0774468
 [90,] 0.3062668 0.3062662 1.4609517 1.7612877
 [91,] 0.3192452 0.3525823 1.3915742 1.9017615
 [92,] 0.5313771 0.4720199 1.4634824 1.8275647
 [93,] 0.2497897 0.2383063 1.1703726 1.9685761
 [94,] 0.4880526 0.4880528 1.7866069 2.2539362
 [95,] 0.3843561 0.4209237 1.2896070 1.5557792
 [96,] 1.2801386 0.3032520 1.3496274 1.3196855
 [97,] 0.6735835 0.8042948 2.0154332 1.4668561
 [98,] 0.8709853 0.4135235 1.6084260 1.1233566
 [99,] 0.3615885 0.3237343 1.9263702 1.4455384
[100,] 1.1725656 0.1868858 1.2369208 1.3097808

$pred.pw
       EBMA Model 1 Model 2 Model 3
  [1,] 36.0    36.4    61.2    68.4
  [2,] 38.4    37.6    58.0    70.4
  [3,] 65.6    34.4    65.6    44.8
  [4,] 40.8    38.4    52.0    79.6
  [5,] 41.6    42.0    48.8    73.2
  [6,] 67.6    33.2    52.8    69.2
  [7,] 35.6    35.2    54.8    76.8
  [8,] 38.0    36.8    53.6    72.4
  [9,] 38.8    38.8    56.8    60.8
 [10,] 48.0    48.8    48.4    68.0
 [11,] 41.6    41.6    59.2    64.0
 [12,] 58.4    38.0    57.6    60.4
 [13,] 40.4    40.4    66.8    64.8
 [14,] 36.8    36.4    59.6    76.0
 [15,] 38.8    38.8    59.2    66.8
 [16,] 44.0    44.0    58.0    74.4
 [17,] 44.0    44.8    55.2    60.0
 [18,] 47.6    42.4    47.6    69.2
 [19,] 34.8    37.2    54.0    68.8
 [20,] 64.4    33.2    64.8    55.2
 [21,] 67.6    35.6    67.6    46.0
 [22,] 66.4    32.4    56.0    69.2
 [23,] 43.6    42.0    57.6    65.2
 [24,] 38.4    38.4    60.4    71.2
 [25,] 55.2    36.4    55.6    67.2
 [26,] 40.4    40.8    70.0    62.4
 [27,] 40.4    36.8    52.4    72.8
 [28,] 42.4    42.4    61.6    66.0
 [29,] 42.8    44.0    54.4    66.0
 [30,] 70.0    30.8    51.6    70.0
 [31,] 42.0    41.2    63.2    70.8
 [32,] 33.6    41.2    49.2    64.8
 [33,] 39.6    39.6    55.6    64.4
 [34,] 39.6    39.6    54.4    66.4
 [35,] 40.0    41.2    67.2    60.0
 [36,] 63.6    46.0    57.6    63.2
 [37,] 40.0    37.2    52.4    69.2
 [38,] 62.0    41.6    62.8    57.6
 [39,] 38.0    37.6    58.0    70.4
 [40,] 66.4    35.6    65.2    52.4
 [41,] 56.4    41.6    63.2    72.0
 [42,] 66.8    35.6    53.2    66.8
 [43,] 35.2    35.2    58.8    71.2
 [44,] 62.0    39.6    61.6    60.4
 [45,] 60.0    33.6    57.6    66.4
 [46,] 41.6    39.6    56.0    69.2
 [47,] 54.4    38.0    53.2    69.2
 [48,] 52.8    37.6    51.6    66.8
 [49,] 33.6    33.6    50.0    76.0
 [50,] 39.2    38.0    66.0    63.6
 [51,] 68.0    42.0    46.8    69.6
 [52,] 52.0    34.8    52.0    71.6
 [53,] 35.6    36.8    66.0    61.6
 [54,] 36.0    34.4    58.0    69.6
 [55,] 68.4    41.2    48.4    69.6
 [56,] 37.6    38.0    66.8    62.4
 [57,] 38.4    39.6    69.6    62.0
 [58,] 40.8    41.6    54.8    65.2
 [59,] 36.0    36.0    58.8    71.6
 [60,] 42.4    41.2    60.4    65.6
 [61,] 56.8    42.8    56.8    60.8
 [62,] 35.2    31.6    52.8    74.8
 [63,] 62.0    33.6    62.0    60.4
 [64,] 69.6    32.8    69.6    44.0
 [65,] 67.2    35.6    54.8    67.2
 [66,] 40.4    40.8    53.6    64.8
 [67,] 44.8    42.0    58.8    60.8
 [68,] 37.2    37.2    59.2    74.8
 [69,] 59.2    32.8    58.4    62.4
 [70,] 64.8    34.8    68.0    67.6
 [71,] 56.8    34.0    56.8    65.6
 [72,] 37.6    35.6    56.0    69.6
 [73,] 44.0    40.4    63.6    65.6
 [74,] 45.2    45.6    65.2    66.0
 [75,] 40.0    40.0    61.6    65.2
 [76,] 35.6    36.4    65.6    63.2
 [77,] 38.8    38.8    58.8    72.8
 [78,] 36.0    33.2    55.6    70.0
 [79,] 42.8    44.4    57.2    66.4
 [80,] 35.2    36.0    53.2    72.0
 [81,] 38.8    38.8    68.8    59.6
 [82,] 56.0    42.4    55.6    64.4
 [83,] 49.2    42.8    48.8    63.2
 [84,] 40.8    39.2    50.8    69.6
 [85,] 74.0    30.4    46.0    76.0
 [86,] 52.4    34.4    52.8    66.4
 [87,] 40.0    40.4    56.8    69.6
 [88,] 44.8    44.8    65.6    64.4
 [89,] 36.8    33.2    59.6    72.4
 [90,] 33.2    33.2    59.6    66.4
 [91,] 38.0    38.0    59.6    72.4
 [92,] 38.0    38.0    58.4    70.0
 [93,] 36.0    36.0    54.8    72.8
 [94,] 33.2    33.2    64.0    74.0
 [95,] 41.2    41.2    56.8    65.6
 [96,] 62.4    33.2    61.2    63.2
 [97,] 44.4    44.8    62.4    64.4
 [98,] 41.2    39.6    63.6    56.8
 [99,] 34.4    33.2    65.6    60.0
[100,] 58.8    34.8    62.0    65.2

> str(output[[1]])
List of 11
 $ theseParams: num [1:5] 3 3 100 250 0
 $ error      : num [1:100, 1:3] 0.107 -0.225 -0.552 0.121 0.108 ...
 $ model.crps : num [1:100, 1] 3.67 5.69 13.31 7.11 5.18 ...
 $ pred.mae   : num [1:100, 1:4] 4.98 8.39 13.64 8.75 7.15 ...
  ..- attr(*, "dimnames")=List of 2
  .. ..$ : NULL
  .. ..$ : chr [1:4] "EBMA" "Model 1" "Model 2" "Model 3"
 $ pred.rmse  : num [1:100, 1:4] 8.54 13.05 19.81 14.43 12.61 ...
  ..- attr(*, "dimnames")=List of 2
  .. ..$ : NULL
  .. ..$ : chr [1:4] "EBMA" "Model 1" "Model 2" "Model 3"
 $ pred.mad   : num [1:100, 1:4] 1.57 3.57 9.43 2.34 1.75 ...
  ..- attr(*, "dimnames")=List of 2
  .. ..$ : NULL
  .. ..$ : chr [1:4] "EBMA" "Model 1" "Model 2" "Model 3"
 $ pred.rmsle : num [1:100, 1:4] 0.657 1.106 0.619 0.652 0.693 ...
  ..- attr(*, "dimnames")=List of 2
  .. ..$ : NULL
  .. ..$ : chr [1:4] "EBMA" "Model 1" "Model 2" "Model 3"
 $ pred.mape  : num [1:100, 1:4] 123 261 208 164 350 ...
  ..- attr(*, "dimnames")=List of 2
  .. ..$ : NULL
  .. ..$ : chr [1:4] "EBMA" "Model 1" "Model 2" "Model 3"
 $ pred.meape : num [1:100, 1:4] 46.9 77.4 134 43.2 44.6 ...
  ..- attr(*, "dimnames")=List of 2
  .. ..$ : NULL
  .. ..$ : chr [1:4] "EBMA" "Model 1" "Model 2" "Model 3"
 $ pred.mrae  : num [1:100, 1:4] 0.589 0.864 1.638 0.66 0.413 ...
  ..- attr(*, "dimnames")=List of 2
  .. ..$ : NULL
  .. ..$ : chr [1:4] "EBMA" "Model 1" "Model 2" "Model 3"
 $ pred.pw    : num [1:100, 1:4] 36 38.4 65.6 40.8 41.6 67.6 35.6 38 38.8 48 ...
  ..- attr(*, "dimnames")=List of 2
  .. ..$ : NULL
  .. ..$ : chr [1:4] "EBMA" "Model 1" "Model 2" "Model 3"
> output[[1]]$theseParams
[1]   3   3 100 250   0
> output[[2]]$theseParams
[1]   4   3 100 250   0
> slots
 [1]   24  171  318  465  612  759  906 1053 1200 1347 1494 1641 1788
> output[[slots]]$theseParams
Error in output[[slots]] : no such index at level 2
> str(output[slots])
List of 13
 $ 24  :List of 11
  ..$ theseParams: num [1:5] 5 5 100 250 0
  ..$ error      : num [1:100, 1:5] -0.0962 0.2655 -0.1009 -0.4885 -0.1005 ...
  ..$ model.crps : num [1:100, 1] 4.97 8.66 6.29 9.73 6.79 ...
  ..$ pred.mae   : num [1:100, 1:6] 6.78 11.93 8.58 11.72 10.64 ...
  .. ..- attr(*, "dimnames")=List of 2
  .. .. ..$ : NULL
  .. .. ..$ : chr [1:6] "EBMA" "Model 1" "Model 2" "Model 3" ...
  ..$ pred.rmse  : num [1:100, 1:6] 10.4 19.2 12.8 15.9 14.8 ...
  .. ..- attr(*, "dimnames")=List of 2
  .. .. ..$ : NULL
  .. .. ..$ : chr [1:6] "EBMA" "Model 1" "Model 2" "Model 3" ...
  ..$ pred.mad   : num [1:100, 1:6] 3.22 2.75 6.37 8.71 8.55 ...
  .. ..- attr(*, "dimnames")=List of 2
  .. .. ..$ : NULL
  .. .. ..$ : chr [1:6] "EBMA" "Model 1" "Model 2" "Model 3" ...
  ..$ pred.rmsle : num [1:100, 1:6] 0.762 1.066 1.825 1.055 0.895 ...
  .. ..- attr(*, "dimnames")=List of 2
  .. .. ..$ : NULL
  .. .. ..$ : chr [1:6] "EBMA" "Model 1" "Model 2" "Model 3" ...
  ..$ pred.mape  : num [1:100, 1:6] 180 207 532 358 157 ...
  .. ..- attr(*, "dimnames")=List of 2
  .. .. ..$ : NULL
  .. .. ..$ : chr [1:6] "EBMA" "Model 1" "Model 2" "Model 3" ...
  ..$ pred.meape : num [1:100, 1:6] 54 57.6 82.6 97.7 74.7 ...
  .. ..- attr(*, "dimnames")=List of 2
  .. .. ..$ : NULL
  .. .. ..$ : chr [1:6] "EBMA" "Model 1" "Model 2" "Model 3" ...
  ..$ pred.mrae  : num [1:100, 1:6] 0.798 0.792 0.958 1.257 0.844 ...
  .. ..- attr(*, "dimnames")=List of 2
  .. .. ..$ : NULL
  .. .. ..$ : chr [1:6] "EBMA" "Model 1" "Model 2" "Model 3" ...
  ..$ pred.pw    : num [1:100, 1:6] 42 43.6 47.6 60.8 39.2 40 33.6 43.2 38 43.6 ...
  .. ..- attr(*, "dimnames")=List of 2
  .. .. ..$ : NULL
  .. .. ..$ : chr [1:6] "EBMA" "Model 1" "Model 2" "Model 3" ...
 $ 171 :List of 11
  ..$ theseParams: num [1:5] 5 5 100 250 0.01
  ..$ error      : num [1:100, 1:5] 0.0438 0.2289 0.074 0.3012 -0.1081 ...
  ..$ model.crps : num [1:100, 1] 6.68 7.5 6.9 7.2 5.74 ...
  ..$ pred.mae   : num [1:100, 1:6] 10.59 10.54 9.49 9.44 7.85 ...
  .. ..- attr(*, "dimnames")=List of 2
  .. .. ..$ : NULL
  .. .. ..$ : chr [1:6] "EBMA" "Model 1" "Model 2" "Model 3" ...
  ..$ pred.rmse  : num [1:100, 1:6] 16.3 17.9 15.2 15.2 11.7 ...
  .. ..- attr(*, "dimnames")=List of 2
  .. .. ..$ : NULL
  .. .. ..$ : chr [1:6] "EBMA" "Model 1" "Model 2" "Model 3" ...
  ..$ pred.mad   : num [1:100, 1:6] 4.71 2.73 3.09 2.24 4.45 ...
  .. ..- attr(*, "dimnames")=List of 2
  .. .. ..$ : NULL
  .. .. ..$ : chr [1:6] "EBMA" "Model 1" "Model 2" "Model 3" ...
  ..$ pred.rmsle : num [1:100, 1:6] 0.896 0.979 0.607 0.708 0.877 ...
  .. ..- attr(*, "dimnames")=List of 2
  .. .. ..$ : NULL
  .. .. ..$ : chr [1:6] "EBMA" "Model 1" "Model 2" "Model 3" ...
  ..$ pred.mape  : num [1:100, 1:6] 270 264 161 108 146 ...
  .. ..- attr(*, "dimnames")=List of 2
  .. .. ..$ : NULL
  .. .. ..$ : chr [1:6] "EBMA" "Model 1" "Model 2" "Model 3" ...
  ..$ pred.meape : num [1:100, 1:6] 60.7 51.2 39.1 50.9 65.4 ...
  .. ..- attr(*, "dimnames")=List of 2
  .. .. ..$ : NULL
  .. .. ..$ : chr [1:6] "EBMA" "Model 1" "Model 2" "Model 3" ...
  ..$ pred.mrae  : num [1:100, 1:6] 0.759 0.678 0.513 0.654 0.735 ...
  .. ..- attr(*, "dimnames")=List of 2
  .. .. ..$ : NULL
  .. .. ..$ : chr [1:6] "EBMA" "Model 1" "Model 2" "Model 3" ...
  ..$ pred.pw    : num [1:100, 1:6] 43.6 42.4 37.6 42 35.2 43.2 35.6 39.2 38.8 40.4 ...
  .. ..- attr(*, "dimnames")=List of 2
  .. .. ..$ : NULL
  .. .. ..$ : chr [1:6] "EBMA" "Model 1" "Model 2" "Model 3" ...
 $ 318 :List of 11
  ..$ theseParams: num [1:5] 5 5 100 250 0.02
  ..$ error      : num [1:100, 1:5] -0.492 -0.457 -0.304 0.141 0.296 ...
  ..$ model.crps : num [1:100, 1] 11.1 7.25 7.55 7.5 4.39 ...
  ..$ pred.mae   : num [1:100, 1:6] 15.66 8.49 12.85 10.18 5.84 ...
  .. ..- attr(*, "dimnames")=List of 2
  .. .. ..$ : NULL
  .. .. ..$ : chr [1:6] "EBMA" "Model 1" "Model 2" "Model 3" ...
  ..$ pred.rmse  : num [1:100, 1:6] 18.7 11.9 16.7 17 11.3 ...
  .. ..- attr(*, "dimnames")=List of 2
  .. .. ..$ : NULL
  .. .. ..$ : chr [1:6] "EBMA" "Model 1" "Model 2" "Model 3" ...
  ..$ pred.mad   : num [1:100, 1:6] 14.77 6.31 10.25 2.57 1.81 ...
  .. ..- attr(*, "dimnames")=List of 2
  .. .. ..$ : NULL
  .. .. ..$ : chr [1:6] "EBMA" "Model 1" "Model 2" "Model 3" ...
  ..$ pred.rmsle : num [1:100, 1:6] 0.956 0.941 1.48 0.673 0.863 ...
  .. ..- attr(*, "dimnames")=List of 2
  .. .. ..$ : NULL
  .. .. ..$ : chr [1:6] "EBMA" "Model 1" "Model 2" "Model 3" ...
  ..$ pred.mape  : num [1:100, 1:6] 240 529 1316 199 176 ...
  .. ..- attr(*, "dimnames")=List of 2
  .. .. ..$ : NULL
  .. .. ..$ : chr [1:6] "EBMA" "Model 1" "Model 2" "Model 3" ...
  ..$ pred.meape : num [1:100, 1:6] 176.6 94.1 158.4 30 63.1 ...
  .. ..- attr(*, "dimnames")=List of 2
  .. .. ..$ : NULL
  .. .. ..$ : chr [1:6] "EBMA" "Model 1" "Model 2" "Model 3" ...
  ..$ pred.mrae  : num [1:100, 1:6] 1.57 1.094 1.474 0.501 0.662 ...
  .. ..- attr(*, "dimnames")=List of 2
  .. .. ..$ : NULL
  .. .. ..$ : chr [1:6] "EBMA" "Model 1" "Model 2" "Model 3" ...
  ..$ pred.pw    : num [1:100, 1:6] 73.2 53.2 68.8 40.4 36.8 42 50 66.4 66 42.4 ...
  .. ..- attr(*, "dimnames")=List of 2
  .. .. ..$ : NULL
  .. .. ..$ : chr [1:6] "EBMA" "Model 1" "Model 2" "Model 3" ...
 $ 465 :List of 11
  ..$ theseParams: num [1:5] 5 5 100 250 0.025
  ..$ error      : num [1:100, 1:5] -0.0853 0.2768 -0.4789 -0.3519 0.2324 ...
  ..$ model.crps : num [1:100, 1] 7.85 3.28 10.51 7.13 5.25 ...
  ..$ pred.mae   : num [1:100, 1:6] 12.6 4.34 17.85 9.38 6.64 ...
  .. ..- attr(*, "dimnames")=List of 2
  .. .. ..$ : NULL
  .. .. ..$ : chr [1:6] "EBMA" "Model 1" "Model 2" "Model 3" ...
  ..$ pred.rmse  : num [1:100, 1:6] 18.03 7.56 23.79 12.97 11.85 ...
  .. ..- attr(*, "dimnames")=List of 2
  .. .. ..$ : NULL
  .. .. ..$ : chr [1:6] "EBMA" "Model 1" "Model 2" "Model 3" ...
  ..$ pred.mad   : num [1:100, 1:6] 7.78 1.63 13.34 7.38 2.36 ...
  .. ..- attr(*, "dimnames")=List of 2
  .. .. ..$ : NULL
  .. .. ..$ : chr [1:6] "EBMA" "Model 1" "Model 2" "Model 3" ...
  ..$ pred.rmsle : num [1:100, 1:6] 1.281 0.464 1.486 0.551 0.914 ...
  .. ..- attr(*, "dimnames")=List of 2
  .. .. ..$ : NULL
  .. .. ..$ : chr [1:6] "EBMA" "Model 1" "Model 2" "Model 3" ...
  ..$ pred.mape  : num [1:100, 1:6] 317 160 640 230 509 ...
  .. ..- attr(*, "dimnames")=List of 2
  .. .. ..$ : NULL
  .. .. ..$ : chr [1:6] "EBMA" "Model 1" "Model 2" "Model 3" ...
  ..$ pred.meape : num [1:100, 1:6] 75 44.5 156.8 82.8 46.4 ...
  .. ..- attr(*, "dimnames")=List of 2
  .. .. ..$ : NULL
  .. .. ..$ : chr [1:6] "EBMA" "Model 1" "Model 2" "Model 3" ...
  ..$ pred.mrae  : num [1:100, 1:6] 0.864 0.615 1.588 1.073 0.367 ...
  .. ..- attr(*, "dimnames")=List of 2
  .. .. ..$ : NULL
  .. .. ..$ : chr [1:6] "EBMA" "Model 1" "Model 2" "Model 3" ...
  ..$ pred.pw    : num [1:100, 1:6] 41.2 36.8 72 52.8 33.2 34.8 36.4 46.4 53.6 42.4 ...
  .. ..- attr(*, "dimnames")=List of 2
  .. .. ..$ : NULL
  .. .. ..$ : chr [1:6] "EBMA" "Model 1" "Model 2" "Model 3" ...
 $ 612 :List of 11
  ..$ theseParams: num [1:5] 5 5 100 250 0.03
  ..$ error      : num [1:100, 1:5] 0.0854 0.1709 0.467 0.1248 0.4529 ...
  ..$ model.crps : num [1:100, 1] 7.58 4.82 4.6 4.03 6.38 ...
  ..$ pred.mae   : num [1:100, 1:6] 10.05 6.51 5.28 5.05 7.46 ...
  .. ..- attr(*, "dimnames")=List of 2
  .. .. ..$ : NULL
  .. .. ..$ : chr [1:6] "EBMA" "Model 1" "Model 2" "Model 3" ...
  ..$ pred.rmse  : num [1:100, 1:6] 16.66 11.76 8.4 8.57 12.47 ...
  .. ..- attr(*, "dimnames")=List of 2
  .. .. ..$ : NULL
  .. .. ..$ : chr [1:6] "EBMA" "Model 1" "Model 2" "Model 3" ...
  ..$ pred.mad   : num [1:100, 1:6] 4.39 2.01 1.58 2.24 2 ...
  .. ..- attr(*, "dimnames")=List of 2
  .. .. ..$ : NULL
  .. .. ..$ : chr [1:6] "EBMA" "Model 1" "Model 2" "Model 3" ...
  ..$ pred.rmsle : num [1:100, 1:6] 0.739 1.028 0.408 1.116 0.893 ...
  .. ..- attr(*, "dimnames")=List of 2
  .. .. ..$ : NULL
  .. .. ..$ : chr [1:6] "EBMA" "Model 1" "Model 2" "Model 3" ...
  ..$ pred.mape  : num [1:100, 1:6] 239 112 173 303 725 ...
  .. ..- attr(*, "dimnames")=List of 2
  .. .. ..$ : NULL
  .. .. ..$ : chr [1:6] "EBMA" "Model 1" "Model 2" "Model 3" ...
  ..$ pred.meape : num [1:100, 1:6] 60.3 54 43.9 85.3 46.2 ...
  .. ..- attr(*, "dimnames")=List of 2
  .. .. ..$ : NULL
  .. .. ..$ : chr [1:6] "EBMA" "Model 1" "Model 2" "Model 3" ...
  ..$ pred.mrae  : num [1:100, 1:6] 0.732 0.574 0.582 0.658 0.503 ...
  .. ..- attr(*, "dimnames")=List of 2
  .. .. ..$ : NULL
  .. .. ..$ : chr [1:6] "EBMA" "Model 1" "Model 2" "Model 3" ...
  ..$ pred.pw    : num [1:100, 1:6] 43.2 37.6 35.6 34.8 40.4 79.6 54.4 41.6 43.2 46.4 ...
  .. ..- attr(*, "dimnames")=List of 2
  .. .. ..$ : NULL
  .. .. ..$ : chr [1:6] "EBMA" "Model 1" "Model 2" "Model 3" ...
 $ 759 :List of 11
  ..$ theseParams: num [1:5] 5 5 100 250 0.04
  ..$ error      : num [1:100, 1:5] -0.00887 0.06251 -0.31991 -0.04858 0.44169 ...
  ..$ model.crps : num [1:100, 1] 6.63 9.11 7.46 6.08 5.25 ...
  ..$ pred.mae   : num [1:100, 1:6] 9.17 11.44 9.19 10.08 6.07 ...
  .. ..- attr(*, "dimnames")=List of 2
  .. .. ..$ : NULL
  .. .. ..$ : chr [1:6] "EBMA" "Model 1" "Model 2" "Model 3" ...
  ..$ pred.rmse  : num [1:100, 1:6] 12.8 17.3 13.9 14.1 10.2 ...
  .. ..- attr(*, "dimnames")=List of 2
  .. .. ..$ : NULL
  .. .. ..$ : chr [1:6] "EBMA" "Model 1" "Model 2" "Model 3" ...
  ..$ pred.mad   : num [1:100, 1:6] 6.21 4.46 5.19 6.52 1.75 ...
  .. ..- attr(*, "dimnames")=List of 2
  .. .. ..$ : NULL
  .. .. ..$ : chr [1:6] "EBMA" "Model 1" "Model 2" "Model 3" ...
  ..$ pred.rmsle : num [1:100, 1:6] 0.925 0.739 1.199 1.292 0.647 ...
  .. ..- attr(*, "dimnames")=List of 2
  .. .. ..$ : NULL
  .. .. ..$ : chr [1:6] "EBMA" "Model 1" "Model 2" "Model 3" ...
  ..$ pred.mape  : num [1:100, 1:6] 148 741 198 428 258 ...
  .. ..- attr(*, "dimnames")=List of 2
  .. .. ..$ : NULL
  .. .. ..$ : chr [1:6] "EBMA" "Model 1" "Model 2" "Model 3" ...
  ..$ pred.meape : num [1:100, 1:6] 70.1 68.8 103.5 88.7 40.2 ...
  .. ..- attr(*, "dimnames")=List of 2
  .. .. ..$ : NULL
  .. .. ..$ : chr [1:6] "EBMA" "Model 1" "Model 2" "Model 3" ...
  ..$ pred.mrae  : num [1:100, 1:6] 0.78 0.803 0.948 0.889 0.787 ...
  .. ..- attr(*, "dimnames")=List of 2
  .. .. ..$ : NULL
  .. .. ..$ : chr [1:6] "EBMA" "Model 1" "Model 2" "Model 3" ...
  ..$ pred.pw    : num [1:100, 1:6] 39.6 45.6 46 44 40 64.8 45.2 44 44.4 40.8 ...
  .. ..- attr(*, "dimnames")=List of 2
  .. .. ..$ : NULL
  .. .. ..$ : chr [1:6] "EBMA" "Model 1" "Model 2" "Model 3" ...
 $ 906 :List of 11
  ..$ theseParams: num [1:5] 5 5 100 250 0.05
  ..$ error      : num [1:100, 1:5] -0.47 0.231 -0.166 0.466 -0.419 ...
  ..$ model.crps : num [1:100, 1] 8.71 5.99 7.17 8.19 7.65 ...
  ..$ pred.mae   : num [1:100, 1:6] 11.77 7.81 11.85 9.46 10.11 ...
  .. ..- attr(*, "dimnames")=List of 2
  .. .. ..$ : NULL
  .. .. ..$ : chr [1:6] "EBMA" "Model 1" "Model 2" "Model 3" ...
  ..$ pred.rmse  : num [1:100, 1:6] 16.1 12.2 16.3 15.9 14.7 ...
  .. ..- attr(*, "dimnames")=List of 2
  .. .. ..$ : NULL
  .. .. ..$ : chr [1:6] "EBMA" "Model 1" "Model 2" "Model 3" ...
  ..$ pred.mad   : num [1:100, 1:6] 7.72 3.25 7.38 1.55 5.64 ...
  .. ..- attr(*, "dimnames")=List of 2
  .. .. ..$ : NULL
  .. .. ..$ : chr [1:6] "EBMA" "Model 1" "Model 2" "Model 3" ...
  ..$ pred.rmsle : num [1:100, 1:6] 0.821 0.791 1.022 0.735 0.984 ...
  .. ..- attr(*, "dimnames")=List of 2
  .. .. ..$ : NULL
  .. .. ..$ : chr [1:6] "EBMA" "Model 1" "Model 2" "Model 3" ...
  ..$ pred.mape  : num [1:100, 1:6] 211 188 245 311 273 ...
  .. ..- attr(*, "dimnames")=List of 2
  .. .. ..$ : NULL
  .. .. ..$ : chr [1:6] "EBMA" "Model 1" "Model 2" "Model 3" ...
  ..$ pred.meape : num [1:100, 1:6] 115.8 62.9 96.1 21.3 78.8 ...
  .. ..- attr(*, "dimnames")=List of 2
  .. .. ..$ : NULL
  .. .. ..$ : chr [1:6] "EBMA" "Model 1" "Model 2" "Model 3" ...
  ..$ pred.mrae  : num [1:100, 1:6] 1.127 0.712 0.976 0.332 0.955 ...
  .. ..- attr(*, "dimnames")=List of 2
  .. .. ..$ : NULL
  .. .. ..$ : chr [1:6] "EBMA" "Model 1" "Model 2" "Model 3" ...
  ..$ pred.pw    : num [1:100, 1:6] 54.4 41.2 49.6 42.4 47.6 51.2 48.8 51.2 43.6 44.8 ...
  .. ..- attr(*, "dimnames")=List of 2
  .. .. ..$ : NULL
  .. .. ..$ : chr [1:6] "EBMA" "Model 1" "Model 2" "Model 3" ...
 $ 1053:List of 11
  ..$ theseParams: num [1:5] 5 5 100 250 0.075
  ..$ error      : num [1:100, 1:5] 0.19084 0.00591 -0.42704 -0.35851 -0.0858 ...
  ..$ model.crps : num [1:100, 1] 6.26 5.43 9.31 10.85 6.15 ...
  ..$ pred.mae   : num [1:100, 1:6] 7.62 7.68 12.9 15.73 8.62 ...
  .. ..- attr(*, "dimnames")=List of 2
  .. .. ..$ : NULL
  .. .. ..$ : chr [1:6] "EBMA" "Model 1" "Model 2" "Model 3" ...
  ..$ pred.rmse  : num [1:100, 1:6] 13.2 10.7 16.5 21.6 12.4 ...
  .. ..- attr(*, "dimnames")=List of 2
  .. .. ..$ : NULL
  .. .. ..$ : chr [1:6] "EBMA" "Model 1" "Model 2" "Model 3" ...
  ..$ pred.mad   : num [1:100, 1:6] 2.99 5.52 11.37 11.87 6.16 ...
  .. ..- attr(*, "dimnames")=List of 2
  .. .. ..$ : NULL
  .. .. ..$ : chr [1:6] "EBMA" "Model 1" "Model 2" "Model 3" ...
  ..$ pred.rmsle : num [1:100, 1:6] 0.79 0.857 1.351 1.224 1.084 ...
  .. ..- attr(*, "dimnames")=List of 2
  .. .. ..$ : NULL
  .. .. ..$ : chr [1:6] "EBMA" "Model 1" "Model 2" "Model 3" ...
  ..$ pred.mape  : num [1:100, 1:6] 153 182 176 557 182 ...
  .. ..- attr(*, "dimnames")=List of 2
  .. .. ..$ : NULL
  .. .. ..$ : chr [1:6] "EBMA" "Model 1" "Model 2" "Model 3" ...
  ..$ pred.meape : num [1:100, 1:6] 44.5 71.6 107.7 141.6 102.7 ...
  .. ..- attr(*, "dimnames")=List of 2
  .. .. ..$ : NULL
  .. .. ..$ : chr [1:6] "EBMA" "Model 1" "Model 2" "Model 3" ...
  ..$ pred.mrae  : num [1:100, 1:6] 0.525 0.755 1.159 1.493 1.001 ...
  .. ..- attr(*, "dimnames")=List of 2
  .. .. ..$ : NULL
  .. .. ..$ : chr [1:6] "EBMA" "Model 1" "Model 2" "Model 3" ...
  ..$ pred.pw    : num [1:100, 1:6] 29.6 41.2 58.4 65.6 50 38.4 42 41.6 36.8 51.6 ...
  .. ..- attr(*, "dimnames")=List of 2
  .. .. ..$ : NULL
  .. .. ..$ : chr [1:6] "EBMA" "Model 1" "Model 2" "Model 3" ...
 $ 1200:List of 11
  ..$ theseParams: num [1:5] 5 5 100 250 0.1
  ..$ error      : num [1:100, 1:5] -0.4711 -0.0022 -0.2597 -0.0297 0.3746 ...
  ..$ model.crps : num [1:100, 1] 11.14 7.38 9.72 6.88 11.02 ...
  ..$ pred.mae   : num [1:100, 1:6] 15.44 10.45 14.4 9.92 13.85 ...
  .. ..- attr(*, "dimnames")=List of 2
  .. .. ..$ : NULL
  .. .. ..$ : chr [1:6] "EBMA" "Model 1" "Model 2" "Model 3" ...
  ..$ pred.rmse  : num [1:100, 1:6] 21 14.5 17.9 13.2 22.6 ...
  .. ..- attr(*, "dimnames")=List of 2
  .. .. ..$ : NULL
  .. .. ..$ : chr [1:6] "EBMA" "Model 1" "Model 2" "Model 3" ...
  ..$ pred.mad   : num [1:100, 1:6] 10.95 7.06 12.72 7.38 3.72 ...
  .. ..- attr(*, "dimnames")=List of 2
  .. .. ..$ : NULL
  .. .. ..$ : chr [1:6] "EBMA" "Model 1" "Model 2" "Model 3" ...
  ..$ pred.rmsle : num [1:100, 1:6] 1.392 1.055 1.345 0.818 0.948 ...
  .. ..- attr(*, "dimnames")=List of 2
  .. .. ..$ : NULL
  .. .. ..$ : chr [1:6] "EBMA" "Model 1" "Model 2" "Model 3" ...
  ..$ pred.mape  : num [1:100, 1:6] 427 981 286 176 313 ...
  .. ..- attr(*, "dimnames")=List of 2
  .. .. ..$ : NULL
  .. .. ..$ : chr [1:6] "EBMA" "Model 1" "Model 2" "Model 3" ...
  ..$ pred.meape : num [1:100, 1:6] 112.4 66.2 96.4 70 40.1 ...
  .. ..- attr(*, "dimnames")=List of 2
  .. .. ..$ : NULL
  .. .. ..$ : chr [1:6] "EBMA" "Model 1" "Model 2" "Model 3" ...
  ..$ pred.mrae  : num [1:100, 1:6] 1.174 0.739 1.045 0.764 0.569 ...
  .. ..- attr(*, "dimnames")=List of 2
  .. .. ..$ : NULL
  .. .. ..$ : chr [1:6] "EBMA" "Model 1" "Model 2" "Model 3" ...
  ..$ pred.pw    : num [1:100, 1:6] 59.2 38 54 37.6 40.8 53.2 36 59.6 48.4 66 ...
  .. ..- attr(*, "dimnames")=List of 2
  .. .. ..$ : NULL
  .. .. ..$ : chr [1:6] "EBMA" "Model 1" "Model 2" "Model 3" ...
 $ 1347:List of 11
  ..$ theseParams: num [1:5] 5 5 100 250 0.15
  ..$ error      : num [1:100, 1:5] 0.296 -0.227 -0.212 -0.208 -0.134 ...
  ..$ model.crps : num [1:100, 1] 8.06 5.52 7.6 7.67 7.35 ...
  ..$ pred.mae   : num [1:100, 1:6] 10.7 8.8 10.71 9.97 10.55 ...
  .. ..- attr(*, "dimnames")=List of 2
  .. .. ..$ : NULL
  .. .. ..$ : chr [1:6] "EBMA" "Model 1" "Model 2" "Model 3" ...
  ..$ pred.rmse  : num [1:100, 1:6] 17.6 10.3 15.5 13.7 14.3 ...
  .. ..- attr(*, "dimnames")=List of 2
  .. .. ..$ : NULL
  .. .. ..$ : chr [1:6] "EBMA" "Model 1" "Model 2" "Model 3" ...
  ..$ pred.mad   : num [1:100, 1:6] 4.23 8.6 7.17 7.24 7.67 ...
  .. ..- attr(*, "dimnames")=List of 2
  .. .. ..$ : NULL
  .. .. ..$ : chr [1:6] "EBMA" "Model 1" "Model 2" "Model 3" ...
  ..$ pred.rmsle : num [1:100, 1:6] 0.928 1.106 0.936 1.26 1.199 ...
  .. ..- attr(*, "dimnames")=List of 2
  .. .. ..$ : NULL
  .. .. ..$ : chr [1:6] "EBMA" "Model 1" "Model 2" "Model 3" ...
  ..$ pred.mape  : num [1:100, 1:6] 388 117 170 1236 201 ...
  .. ..- attr(*, "dimnames")=List of 2
  .. .. ..$ : NULL
  .. .. ..$ : chr [1:6] "EBMA" "Model 1" "Model 2" "Model 3" ...
  ..$ pred.meape : num [1:100, 1:6] 24.4 107.7 65.2 124.8 93.2 ...
  .. ..- attr(*, "dimnames")=List of 2
  .. .. ..$ : NULL
  .. .. ..$ : chr [1:6] "EBMA" "Model 1" "Model 2" "Model 3" ...
  ..$ pred.mrae  : num [1:100, 1:6] 0.357 1.145 0.888 1.057 1 ...
  .. ..- attr(*, "dimnames")=List of 2
  .. .. ..$ : NULL
  .. .. ..$ : chr [1:6] "EBMA" "Model 1" "Model 2" "Model 3" ...
  ..$ pred.pw    : num [1:100, 1:6] 38.8 64 45.2 57.6 50 40.8 45.6 40 44 38.4 ...
  .. ..- attr(*, "dimnames")=List of 2
  .. .. ..$ : NULL
  .. .. ..$ : chr [1:6] "EBMA" "Model 1" "Model 2" "Model 3" ...
 $ 1494:List of 11
  ..$ theseParams: num [1:5] 5 5 100 250 0.2
  ..$ error      : num [1:100, 1:5] 0.089 0.0812 0.0797 -0.3315 -0.2747 ...
  ..$ model.crps : num [1:100, 1] 8.93 5.32 8.42 7.88 9.6 ...
  ..$ pred.mae   : num [1:100, 1:6] 12.26 7.28 11.2 10.82 14.63 ...
  .. ..- attr(*, "dimnames")=List of 2
  .. .. ..$ : NULL
  .. .. ..$ : chr [1:6] "EBMA" "Model 1" "Model 2" "Model 3" ...
  ..$ pred.rmse  : num [1:100, 1:6] 17.3 10.9 15.4 14.4 18.4 ...
  .. ..- attr(*, "dimnames")=List of 2
  .. .. ..$ : NULL
  .. .. ..$ : chr [1:6] "EBMA" "Model 1" "Model 2" "Model 3" ...
  ..$ pred.mad   : num [1:100, 1:6] 8.46 4.48 8.47 7.68 12.1 ...
  .. ..- attr(*, "dimnames")=List of 2
  .. .. ..$ : NULL
  .. .. ..$ : chr [1:6] "EBMA" "Model 1" "Model 2" "Model 3" ...
  ..$ pred.rmsle : num [1:100, 1:6] 0.863 0.65 0.877 1.027 1.574 ...
  .. ..- attr(*, "dimnames")=List of 2
  .. .. ..$ : NULL
  .. .. ..$ : chr [1:6] "EBMA" "Model 1" "Model 2" "Model 3" ...
  ..$ pred.mape  : num [1:100, 1:6] 205 167 391 287 472 ...
  .. ..- attr(*, "dimnames")=List of 2
  .. .. ..$ : NULL
  .. .. ..$ : chr [1:6] "EBMA" "Model 1" "Model 2" "Model 3" ...
  ..$ pred.meape : num [1:100, 1:6] 64.7 52.2 50.9 128.9 106.7 ...
  .. ..- attr(*, "dimnames")=List of 2
  .. .. ..$ : NULL
  .. .. ..$ : chr [1:6] "EBMA" "Model 1" "Model 2" "Model 3" ...
  ..$ pred.mrae  : num [1:100, 1:6] 0.643 0.591 0.617 1.211 1.127 ...
  .. ..- attr(*, "dimnames")=List of 2
  .. .. ..$ : NULL
  .. .. ..$ : chr [1:6] "EBMA" "Model 1" "Model 2" "Model 3" ...
  ..$ pred.pw    : num [1:100, 1:6] 37.6 32 38.8 63.2 64.4 48 40.8 56.8 54.8 38.4 ...
  .. ..- attr(*, "dimnames")=List of 2
  .. .. ..$ : NULL
  .. .. ..$ : chr [1:6] "EBMA" "Model 1" "Model 2" "Model 3" ...
 $ 1641:List of 11
  ..$ theseParams: num [1:5] 5 5 100 250 0.3
  ..$ error      : num [1:100, 1:5] -0.193403 -0.207264 0.000902 -0.002626 0.092469 ...
  ..$ model.crps : num [1:100, 1] 6.24 11.21 8.72 7.75 8.29 ...
  ..$ pred.mae   : num [1:100, 1:6] 8.31 17.39 12.12 10.63 10.5 ...
  .. ..- attr(*, "dimnames")=List of 2
  .. .. ..$ : NULL
  .. .. ..$ : chr [1:6] "EBMA" "Model 1" "Model 2" "Model 3" ...
  ..$ pred.rmse  : num [1:100, 1:6] 12.6 22.5 16.5 14.7 14.3 ...
  .. ..- attr(*, "dimnames")=List of 2
  .. .. ..$ : NULL
  .. .. ..$ : chr [1:6] "EBMA" "Model 1" "Model 2" "Model 3" ...
  ..$ pred.mad   : num [1:100, 1:6] 5.54 13.23 8.87 7.68 7.77 ...
  .. ..- attr(*, "dimnames")=List of 2
  .. .. ..$ : NULL
  .. .. ..$ : chr [1:6] "EBMA" "Model 1" "Model 2" "Model 3" ...
  ..$ pred.rmsle : num [1:100, 1:6] 1.215 1.237 0.858 0.884 0.931 ...
  .. ..- attr(*, "dimnames")=List of 2
  .. .. ..$ : NULL
  .. .. ..$ : chr [1:6] "EBMA" "Model 1" "Model 2" "Model 3" ...
  ..$ pred.mape  : num [1:100, 1:6] 141 225 392 119 708 ...
  .. ..- attr(*, "dimnames")=List of 2
  .. .. ..$ : NULL
  .. .. ..$ : chr [1:6] "EBMA" "Model 1" "Model 2" "Model 3" ...
  ..$ pred.meape : num [1:100, 1:6] 66.6 99.5 61.7 68.9 52 ...
  .. ..- attr(*, "dimnames")=List of 2
  .. .. ..$ : NULL
  .. .. ..$ : chr [1:6] "EBMA" "Model 1" "Model 2" "Model 3" ...
  ..$ pred.mrae  : num [1:100, 1:6] 0.841 1.037 0.649 0.718 0.552 ...
  .. ..- attr(*, "dimnames")=List of 2
  .. .. ..$ : NULL
  .. .. ..$ : chr [1:6] "EBMA" "Model 1" "Model 2" "Model 3" ...
  ..$ pred.pw    : num [1:100, 1:6] 36.4 53.2 32.8 38.8 32.8 50.4 41.2 39.2 39.6 49.6 ...
  .. ..- attr(*, "dimnames")=List of 2
  .. .. ..$ : NULL
  .. .. ..$ : chr [1:6] "EBMA" "Model 1" "Model 2" "Model 3" ...
 $ 1788:List of 11
  ..$ theseParams: num [1:5] 5 5 100 250 0.5
  ..$ error      : num [1:100, 1:5] -0.264 -0.195 -0.285 -0.179 -0.248 ...
  ..$ model.crps : num [1:100, 1] 5.5 6.97 7.03 9.85 6.69 ...
  ..$ pred.mae   : num [1:100, 1:6] 8.41 10.44 8.46 13.08 8.53 ...
  .. ..- attr(*, "dimnames")=List of 2
  .. .. ..$ : NULL
  .. .. ..$ : chr [1:6] "EBMA" "Model 1" "Model 2" "Model 3" ...
  ..$ pred.rmse  : num [1:100, 1:6] 9.51 13.51 11.42 17.21 11.45 ...
  .. ..- attr(*, "dimnames")=List of 2
  .. .. ..$ : NULL
  .. .. ..$ : chr [1:6] "EBMA" "Model 1" "Model 2" "Model 3" ...
  ..$ pred.mad   : num [1:100, 1:6] 7.98 8.15 6.52 10.31 7.12 ...
  .. ..- attr(*, "dimnames")=List of 2
  .. .. ..$ : NULL
  .. .. ..$ : chr [1:6] "EBMA" "Model 1" "Model 2" "Model 3" ...
  ..$ pred.rmsle : num [1:100, 1:6] 1.59 1.66 1.21 1.23 1.33 ...
  .. ..- attr(*, "dimnames")=List of 2
  .. .. ..$ : NULL
  .. .. ..$ : chr [1:6] "EBMA" "Model 1" "Model 2" "Model 3" ...
  ..$ pred.mape  : num [1:100, 1:6] 112 417 209 174 121 ...
  .. ..- attr(*, "dimnames")=List of 2
  .. .. ..$ : NULL
  .. .. ..$ : chr [1:6] "EBMA" "Model 1" "Model 2" "Model 3" ...
  ..$ pred.meape : num [1:100, 1:6] 104.4 87.9 86.6 82.2 86.7 ...
  .. ..- attr(*, "dimnames")=List of 2
  .. .. ..$ : NULL
  .. .. ..$ : chr [1:6] "EBMA" "Model 1" "Model 2" "Model 3" ...
  ..$ pred.mrae  : num [1:100, 1:6] 0.934 0.916 0.988 0.895 0.986 ...
  .. ..- attr(*, "dimnames")=List of 2
  .. .. ..$ : NULL
  .. .. ..$ : chr [1:6] "EBMA" "Model 1" "Model 2" "Model 3" ...
  ..$ pred.pw    : num [1:100, 1:6] 35.2 34 42 29.6 48 38.8 44.4 38.4 47.2 57.2 ...
  .. ..- attr(*, "dimnames")=List of 2
  .. .. ..$ : NULL
  .. .. ..$ : chr [1:6] "EBMA" "Model 1" "Model 2" "Model 3" ...
> output[slots]$theseParams
NULL
> pos=5
> x.axis <- rep(NA, 13)
> count <- 1
> for(i in slots){
+   x.axis[count] <- output[[i]]$theseParams[pos]
+ }
> x.axis
 [1] 0.5  NA  NA  NA  NA  NA  NA  NA  NA  NA  NA  NA  NA
> x.axis <- rep(NA, 13)
> count <- 1
> for(i in slots){
+   x.axis[count] <- output[[i]]$theseParams[pos]
+   count <- count+1
+ }
> x.axis
 [1] 0.000 0.010 0.020 0.025 0.030 0.040 0.050 0.075 0.100 0.150 0.200 0.300
[13] 0.500
> output[[1]]$theseParams
[1]   3   3 100 250   0
> plot.fn<-function(models, train, func){
+ pos1=1
+ value1=5
+ pos2=2
+ value2=2
+ pos3=5
+ 
+ 
+ 
+  alpha<-c(10,5,3)
+   if (models>3){alpha<-c(alpha, rep(1, models-3))}
+  a.mean <- alpha/sum(alpha) # ?
+   
+ 
+ slots<-rep(NA,13)
+ count<-0
+ for(i in 1:1911){
+  if(output[[i]]$theseParams[pos1]==value1 & output[[i]]$theseParams[pos2]==value2){
+  count<-count+1
+  slots[count]<-i} 
+  }
+ error.mat<-mae.mat<-rmse.mat<-mad.mat<-rmsle.mat <- mape.mat <- meape.mat <- mrae.mat <- pw.mat <- crps.mat <- matrix(NA,nrow=13,ncol=100)
+ 
+ x.axis <- rep(NA, 13)
+ count <- 1
+ for(i in slots){
+   x.axis[count] <- output[[i]]$theseParams[pos3]
+   count <- count+1
+ }
+ 
+ for(i in slots){
+  count<-which(slots==i)
+         errror.all.mat<-abs(output[[i]]$error)%*%a.mean
+  #error.all.mat<-rowSums(abs(output[[i]]$error))
+  error.mat[count,]<-output[[i]]$error[,1]
+  rmse.mat[count,]<-output[[i]]$pred.rmse[,"EBMA"]
+  mae.mat[count,]<-output[[i]]$pred.mae[,"EBMA"]
+         mad.mat[count,]<-output[[i]]$pred.mad[,"EBMA"]
+         rmsle.mat[count,] <- output[[i]]$pred.rmsle[,"EBMA"]
+         mape.mat[count,] <- output[[i]]$pred.mape[,"EBMA"]
+         meape.mat[count,] <- output[[i]]$pred.meape[,"EBMA"]
+         mrae.mat[count,] <- output[[i]]$pred.mrae[,"EBMA"]
+         pw.mat[count,] <- output[[i]]$pred.pw[,"EBMA"]
+         crps.mat[count,] <- output[[i]]$model.crps
+ }
+ 
+ if(func=="med"){
+  error.all<-apply(abs(error.mat),1,FUN=median,na.rm=TRUE)
+  error<-(apply(error.mat,1,FUN=median, na.rm=TRUE))
+  rmse<-abs(apply(rmse.mat,1,FUN=median, na.rm=TRUE))
+  mae<-abs(apply(mae.mat,1,FUN=median, na.rm=TRUE))
+        mad<-abs(apply(mad.mat,1,FUN=median, na.rm=TRUE))
+         rmsle<-abs(apply(rmsle.mat,1,FUN=median, na.rm=TRUE))
+         mape<-abs(apply(mape.mat,1,FUN=median, na.rm=TRUE))
+         meape<-abs(apply(meape.mat,1,FUN=median, na.rm=TRUE))
+         mrae<-abs(apply(mrae.mat,1,FUN=median, na.rm=TRUE))
+         pw<-abs(apply(pw.mat,1,FUN=median, na.rm=TRUE))
+         crps<-abs(apply(crps.mat,1,FUN=median, na.rm=TRUE))
+       }
+ 
+ if(func=="mea"){
+  error.all<-apply(abs(error.mat),1,FUN=mean,na.rm=TRUE)
+  error<-(apply(error.mat,1,FUN=mean, na.rm=TRUE))
+  rmse<-abs(apply(rmse.mat,1,FUN=mean, na.rm=TRUE))
+  mae<-abs(apply(mae.mat,1,FUN=mean, na.rm=TRUE))
+        mad<-abs(apply(mad.mat,1,FUN=mean, na.rm=TRUE))
+         rmsle<-abs(apply(rmsle.mat,1,FUN=mean, na.rm=TRUE))
+         mape<-abs(apply(mape.mat,1,FUN=mean, na.rm=TRUE))
+         meape<-abs(apply(meape.mat,1,FUN=mean, na.rm=TRUE))
+         mrae<-abs(apply(mrae.mat,1,FUN=mean, na.rm=TRUE))
+         pw<-abs(apply(pw.mat,1,FUN=mean, na.rm=TRUE))
+         crps<-abs(apply(crps.mat,1,FUN=mean, na.rm=TRUE))
+       }
+ 
+ 
+ 
+ 
+ plot(x.axis, crps)
+  
+ 
+ #par(mfrow=c(3,3))
+ #plot(c,error.all,pch=15,main="Weighted Weight Error (all)")
+ #lines(loess(error.all~c))
+ #plot(c,error,pch=15,main="Weight Error (largest weight model)")
+ #abline(h=0)
+ #lines(loess(error~c))
+ #plot(c,crps,pch=15,main="CRPS")
+ #lines(loess(crps~c))
+ #plot(c,mae,pch=15,main="MAE")
+ #lines(loess(mae~c))
+ #plot(c,rmse,pch=15,main="RMSE")
+ #lines(loess(rmse~c))
+ #plot(c,mape,pch=15,main="MAPE")
+ #lines(loess(mape~c))
+ #plot(c,meape,pch=15,main="MEAPE")
+ #lines(loess(meape~c))
+ #plot(c,mrae,pch=15,main="MRAE")
+ #lines(loess(mrae~c))
+ #plot(c,pw,pch=15,main="PW")
+ #lines(loess(pw~c))
+ 
+ 
+ 
+ }
> plot.fn<-function(models, train, func){
+ pos1=1
+ value1=5
+ pos2=2
+ value2=2
+ pos3=5
+ 
+ 
+ 
+ # alpha<-c(10,5,3)
+ #  if (models>3){alpha<-c(alpha, rep(1, models-3))}
+ # a.mean <- alpha/sum(alpha) # ?
+   
+ 
+ slots<-rep(NA,13)
+ count<-0
+ for(i in 1:1911){
+  if(output[[i]]$theseParams[pos1]==value1 & output[[i]]$theseParams[pos2]==value2){
+  count<-count+1
+  slots[count]<-i} 
+  }
+ error.mat<-mae.mat<-rmse.mat<-mad.mat<-rmsle.mat <- mape.mat <- meape.mat <- mrae.mat <- pw.mat <- crps.mat <- matrix(NA,nrow=13,ncol=100)
+ 
+ x.axis <- rep(NA, 13)
+ count <- 1
+ for(i in slots){
+   x.axis[count] <- output[[i]]$theseParams[pos3]
+   count <- count+1
+ }
+ 
+ for(i in slots){
+  count<-which(slots==i)
+         errror.all.mat<-abs(output[[i]]$error)#%*%a.mean
+  #error.all.mat<-rowSums(abs(output[[i]]$error))
+  error.mat[count,]<-output[[i]]$error[,1]
+  rmse.mat[count,]<-output[[i]]$pred.rmse[,"EBMA"]
+  mae.mat[count,]<-output[[i]]$pred.mae[,"EBMA"]
+         mad.mat[count,]<-output[[i]]$pred.mad[,"EBMA"]
+         rmsle.mat[count,] <- output[[i]]$pred.rmsle[,"EBMA"]
+         mape.mat[count,] <- output[[i]]$pred.mape[,"EBMA"]
+         meape.mat[count,] <- output[[i]]$pred.meape[,"EBMA"]
+         mrae.mat[count,] <- output[[i]]$pred.mrae[,"EBMA"]
+         pw.mat[count,] <- output[[i]]$pred.pw[,"EBMA"]
+         crps.mat[count,] <- output[[i]]$model.crps
+ }
+ 
+ if(func=="med"){
+  error.all<-apply(abs(error.mat),1,FUN=median,na.rm=TRUE)
+  error<-(apply(error.mat,1,FUN=median, na.rm=TRUE))
+  rmse<-abs(apply(rmse.mat,1,FUN=median, na.rm=TRUE))
+  mae<-abs(apply(mae.mat,1,FUN=median, na.rm=TRUE))
+        mad<-abs(apply(mad.mat,1,FUN=median, na.rm=TRUE))
+         rmsle<-abs(apply(rmsle.mat,1,FUN=median, na.rm=TRUE))
+         mape<-abs(apply(mape.mat,1,FUN=median, na.rm=TRUE))
+         meape<-abs(apply(meape.mat,1,FUN=median, na.rm=TRUE))
+         mrae<-abs(apply(mrae.mat,1,FUN=median, na.rm=TRUE))
+         pw<-abs(apply(pw.mat,1,FUN=median, na.rm=TRUE))
+         crps<-abs(apply(crps.mat,1,FUN=median, na.rm=TRUE))
+       }
+ 
+ if(func=="mea"){
+  error.all<-apply(abs(error.mat),1,FUN=mean,na.rm=TRUE)
+  error<-(apply(error.mat,1,FUN=mean, na.rm=TRUE))
+  rmse<-abs(apply(rmse.mat,1,FUN=mean, na.rm=TRUE))
+  mae<-abs(apply(mae.mat,1,FUN=mean, na.rm=TRUE))
+        mad<-abs(apply(mad.mat,1,FUN=mean, na.rm=TRUE))
+         rmsle<-abs(apply(rmsle.mat,1,FUN=mean, na.rm=TRUE))
+         mape<-abs(apply(mape.mat,1,FUN=mean, na.rm=TRUE))
+         meape<-abs(apply(meape.mat,1,FUN=mean, na.rm=TRUE))
+         mrae<-abs(apply(mrae.mat,1,FUN=mean, na.rm=TRUE))
+         pw<-abs(apply(pw.mat,1,FUN=mean, na.rm=TRUE))
+         crps<-abs(apply(crps.mat,1,FUN=mean, na.rm=TRUE))
+       }
+ 
+ 
+ 
+ 
+ plot(x.axis, crps)
+  
+ 
+ #par(mfrow=c(3,3))
+ #plot(c,error.all,pch=15,main="Weighted Weight Error (all)")
+ #lines(loess(error.all~c))
+ #plot(c,error,pch=15,main="Weight Error (largest weight model)")
+ #abline(h=0)
+ #lines(loess(error~c))
+ #plot(c,crps,pch=15,main="CRPS")
+ #lines(loess(crps~c))
+ #plot(c,mae,pch=15,main="MAE")
+ #lines(loess(mae~c))
+ #plot(c,rmse,pch=15,main="RMSE")
+ #lines(loess(rmse~c))
+ #plot(c,mape,pch=15,main="MAPE")
+ #lines(loess(mape~c))
+ #plot(c,meape,pch=15,main="MEAPE")
+ #lines(loess(meape~c))
+ #plot(c,mrae,pch=15,main="MRAE")
+ #lines(loess(mrae~c))
+ #plot(c,pw,pch=15,main="PW")
+ #lines(loess(pw~c))
+ 
+ 
+ 
+ }
> plot.fn<-function(){
+ pos1=1
+ value1=5
+ pos2=2
+ value2=2
+ pos3=5
+ 
+ 
+ 
+ # alpha<-c(10,5,3)
+ #  if (models>3){alpha<-c(alpha, rep(1, models-3))}
+ # a.mean <- alpha/sum(alpha) # ?
+   
+ 
+ slots<-rep(NA,13)
+ count<-0
+ for(i in 1:1911){
+  if(output[[i]]$theseParams[pos1]==value1 & output[[i]]$theseParams[pos2]==value2){
+  count<-count+1
+  slots[count]<-i} 
+  }
+ error.mat<-mae.mat<-rmse.mat<-mad.mat<-rmsle.mat <- mape.mat <- meape.mat <- mrae.mat <- pw.mat <- crps.mat <- matrix(NA,nrow=13,ncol=100)
+ 
+ x.axis <- rep(NA, 13)
+ count <- 1
+ for(i in slots){
+   x.axis[count] <- output[[i]]$theseParams[pos3]
+   count <- count+1
+ }
+ 
+ for(i in slots){
+  count<-which(slots==i)
+         errror.all.mat<-abs(output[[i]]$error)#%*%a.mean
+  #error.all.mat<-rowSums(abs(output[[i]]$error))
+  error.mat[count,]<-output[[i]]$error[,1]
+  rmse.mat[count,]<-output[[i]]$pred.rmse[,"EBMA"]
+  mae.mat[count,]<-output[[i]]$pred.mae[,"EBMA"]
+         mad.mat[count,]<-output[[i]]$pred.mad[,"EBMA"]
+         rmsle.mat[count,] <- output[[i]]$pred.rmsle[,"EBMA"]
+         mape.mat[count,] <- output[[i]]$pred.mape[,"EBMA"]
+         meape.mat[count,] <- output[[i]]$pred.meape[,"EBMA"]
+         mrae.mat[count,] <- output[[i]]$pred.mrae[,"EBMA"]
+         pw.mat[count,] <- output[[i]]$pred.pw[,"EBMA"]
+         crps.mat[count,] <- output[[i]]$model.crps
+ }
+ 
+ if(func=="med"){
+  error.all<-apply(abs(error.mat),1,FUN=median,na.rm=TRUE)
+  error<-(apply(error.mat,1,FUN=median, na.rm=TRUE))
+  rmse<-abs(apply(rmse.mat,1,FUN=median, na.rm=TRUE))
+  mae<-abs(apply(mae.mat,1,FUN=median, na.rm=TRUE))
+        mad<-abs(apply(mad.mat,1,FUN=median, na.rm=TRUE))
+         rmsle<-abs(apply(rmsle.mat,1,FUN=median, na.rm=TRUE))
+         mape<-abs(apply(mape.mat,1,FUN=median, na.rm=TRUE))
+         meape<-abs(apply(meape.mat,1,FUN=median, na.rm=TRUE))
+         mrae<-abs(apply(mrae.mat,1,FUN=median, na.rm=TRUE))
+         pw<-abs(apply(pw.mat,1,FUN=median, na.rm=TRUE))
+         crps<-abs(apply(crps.mat,1,FUN=median, na.rm=TRUE))
+       }
+ 
+ if(func=="mea"){
+  error.all<-apply(abs(error.mat),1,FUN=mean,na.rm=TRUE)
+  error<-(apply(error.mat,1,FUN=mean, na.rm=TRUE))
+  rmse<-abs(apply(rmse.mat,1,FUN=mean, na.rm=TRUE))
+  mae<-abs(apply(mae.mat,1,FUN=mean, na.rm=TRUE))
+        mad<-abs(apply(mad.mat,1,FUN=mean, na.rm=TRUE))
+         rmsle<-abs(apply(rmsle.mat,1,FUN=mean, na.rm=TRUE))
+         mape<-abs(apply(mape.mat,1,FUN=mean, na.rm=TRUE))
+         meape<-abs(apply(meape.mat,1,FUN=mean, na.rm=TRUE))
+         mrae<-abs(apply(mrae.mat,1,FUN=mean, na.rm=TRUE))
+         pw<-abs(apply(pw.mat,1,FUN=mean, na.rm=TRUE))
+         crps<-abs(apply(crps.mat,1,FUN=mean, na.rm=TRUE))
+       }
+ 
+ 
+ 
+ 
+ plot(x.axis, crps)
+  
+ 
+ #par(mfrow=c(3,3))
+ #plot(c,error.all,pch=15,main="Weighted Weight Error (all)")
+ #lines(loess(error.all~c))
+ #plot(c,error,pch=15,main="Weight Error (largest weight model)")
+ #abline(h=0)
+ #lines(loess(error~c))
+ #plot(c,crps,pch=15,main="CRPS")
+ #lines(loess(crps~c))
+ #plot(c,mae,pch=15,main="MAE")
+ #lines(loess(mae~c))
+ #plot(c,rmse,pch=15,main="RMSE")
+ #lines(loess(rmse~c))
+ #plot(c,mape,pch=15,main="MAPE")
+ #lines(loess(mape~c))
+ #plot(c,meape,pch=15,main="MEAPE")
+ #lines(loess(meape~c))
+ #plot(c,mrae,pch=15,main="MRAE")
+ #lines(loess(mrae~c))
+ #plot(c,pw,pch=15,main="PW")
+ #lines(loess(pw~c))
+ 
+ 
+ 
+ }
> plot.fn()
Error in x.axis[count] <- output[[i]]$theseParams[pos3] : 
  replacement has length zero
> output[[1]]$theseParams
[1]   3   3 100 250   0
> output[[1]]$theseParams[5]
[1] 0
> pos1=1
> value1=5
> pos2=2
> value2=2
> pos3=5
> slots<-rep(NA,13)
> count<-0
> for(i in 1:1911){
+  if(output[[i]]$theseParams[pos1]==value1 & output[[i]]$theseParams[pos2]==value2){
+  count<-count+1
+  slots[count]<-i} 
+  }
> error.mat<-mae.mat<-rmse.mat<-mad.mat<-rmsle.mat <- mape.mat <- meape.mat <- mrae.mat <- pw.mat <- crps.mat <- matrix(NA,nrow=13,ncol=100)
> x.axis <- rep(NA, 13)
> count <- 1
> for(i in slots){
+   x.axis[count] <- output[[i]]$theseParams[pos3]
+   count <- count+1
+ }
Error in x.axis[count] <- output[[i]]$theseParams[pos3] : 
  replacement has length zero
> x.axis <- rep(NA, 13)
> count <- 1
> for(i in slots){
+   print(i)
+   x.axis[count] <- output[[i]]$theseParams[pos3]
+   count <- count+1
+ }
[1] NA
Error in x.axis[count] <- output[[i]]$theseParams[pos3] : 
  replacement has length zero
> slots
 [1] NA NA NA NA NA NA NA NA NA NA NA NA NA
> output[[1]]$theseParams[5]
[1] 0
> output[[1]]$theseParams
[1]   3   3 100 250   0
> pos1=1
> value1=5
> pos2=2
> value2=5
> pos3=5
> slots<-rep(NA,13)
> count<-0
> for(i in 1:1911){
+  if(output[[i]]$theseParams[pos1]==value1 & output[[i]]$theseParams[pos2]==value2){
+  count<-count+1
+  slots[count]<-i} 
+  }
> error.mat<-mae.mat<-rmse.mat<-mad.mat<-rmsle.mat <- mape.mat <- meape.mat <- mrae.mat <- pw.mat <- crps.mat <- matrix(NA,nrow=13,ncol=100)
> x.axis <- rep(NA, 13)
> count <- 1
> for(i in slots){
+   print(i)
+   x.axis[count] <- output[[i]]$theseParams[pos3]
+   count <- count+1
+ }
[1] 24
[1] 171
[1] 318
[1] 465
[1] 612
[1] 759
[1] 906
[1] 1053
[1] 1200
[1] 1347
[1] 1494
[1] 1641
[1] 1788
> for(i in slots){
+  count<-which(slots==i)
+         errror.all.mat<-abs(output[[i]]$error)#%*%a.mean
+  error.mat[count,]<-output[[i]]$error[,1]
+  rmse.mat[count,]<-output[[i]]$pred.rmse[,"EBMA"]
+  mae.mat[count,]<-output[[i]]$pred.mae[,"EBMA"]
+         mad.mat[count,]<-output[[i]]$pred.mad[,"EBMA"]
+         rmsle.mat[count,] <- output[[i]]$pred.rmsle[,"EBMA"]
+         mape.mat[count,] <- output[[i]]$pred.mape[,"EBMA"]
+         meape.mat[count,] <- output[[i]]$pred.meape[,"EBMA"]
+         mrae.mat[count,] <- output[[i]]$pred.mrae[,"EBMA"]
+         pw.mat[count,] <- output[[i]]$pred.pw[,"EBMA"]
+         crps.mat[count,] <- output[[i]]$model.crps
+ }
>   funct="med"
>   func="med"
> if(func=="med"){
+  error.all<-apply(abs(error.mat),1,FUN=median,na.rm=TRUE)
+  error<-(apply(error.mat,1,FUN=median, na.rm=TRUE))
+  rmse<-abs(apply(rmse.mat,1,FUN=median, na.rm=TRUE))
+  mae<-abs(apply(mae.mat,1,FUN=median, na.rm=TRUE))
+        mad<-abs(apply(mad.mat,1,FUN=median, na.rm=TRUE))
+         rmsle<-abs(apply(rmsle.mat,1,FUN=median, na.rm=TRUE))
+         mape<-abs(apply(mape.mat,1,FUN=median, na.rm=TRUE))
+         meape<-abs(apply(meape.mat,1,FUN=median, na.rm=TRUE))
+         mrae<-abs(apply(mrae.mat,1,FUN=median, na.rm=TRUE))
+         pw<-abs(apply(pw.mat,1,FUN=median, na.rm=TRUE))
+         crps<-abs(apply(crps.mat,1,FUN=median, na.rm=TRUE))
+       }
> if(func=="mea"){
+  error.all<-apply(abs(error.mat),1,FUN=mean,na.rm=TRUE)
+  error<-(apply(error.mat,1,FUN=mean, na.rm=TRUE))
+  rmse<-abs(apply(rmse.mat,1,FUN=mean, na.rm=TRUE))
+  mae<-abs(apply(mae.mat,1,FUN=mean, na.rm=TRUE))
+        mad<-abs(apply(mad.mat,1,FUN=mean, na.rm=TRUE))
+         rmsle<-abs(apply(rmsle.mat,1,FUN=mean, na.rm=TRUE))
+         mape<-abs(apply(mape.mat,1,FUN=mean, na.rm=TRUE))
+         meape<-abs(apply(meape.mat,1,FUN=mean, na.rm=TRUE))
+         mrae<-abs(apply(mrae.mat,1,FUN=mean, na.rm=TRUE))
+         pw<-abs(apply(pw.mat,1,FUN=mean, na.rm=TRUE))
+         crps<-abs(apply(crps.mat,1,FUN=mean, na.rm=TRUE))
+       }
> plot(x.axis, crps)
> plot.fn<-function(pos1=1, value1=5, pos2=2,value2=5,pos3=5,func="med"){
+ 
+ 
+ 
+ 
+ # alpha<-c(10,5,3)
+ #  if (models>3){alpha<-c(alpha, rep(1, models-3))}
+ # a.mean <- alpha/sum(alpha) # ?
+   
+ 
+ slots<-rep(NA,13)
+ count<-0
+ for(i in 1:1911){
+  if(output[[i]]$theseParams[pos1]==value1 & output[[i]]$theseParams[pos2]==value2){
+  count<-count+1
+  slots[count]<-i} 
+  }
+ error.mat<-mae.mat<-rmse.mat<-mad.mat<-rmsle.mat <- mape.mat <- meape.mat <- mrae.mat <- pw.mat <- crps.mat <- matrix(NA,nrow=13,ncol=100)
+ 
+ x.axis <- rep(NA, 13)
+ count <- 1
+ for(i in slots){
+   print(i)
+   x.axis[count] <- output[[i]]$theseParams[pos3]
+   count <- count+1
+ }
+ 
+ for(i in slots){
+  count<-which(slots==i)
+         errror.all.mat<-abs(output[[i]]$error)#%*%a.mean
+  #error.all.mat<-rowSums(abs(output[[i]]$error))
+  error.mat[count,]<-output[[i]]$error[,1]
+  rmse.mat[count,]<-output[[i]]$pred.rmse[,"EBMA"]
+  mae.mat[count,]<-output[[i]]$pred.mae[,"EBMA"]
+         mad.mat[count,]<-output[[i]]$pred.mad[,"EBMA"]
+         rmsle.mat[count,] <- output[[i]]$pred.rmsle[,"EBMA"]
+         mape.mat[count,] <- output[[i]]$pred.mape[,"EBMA"]
+         meape.mat[count,] <- output[[i]]$pred.meape[,"EBMA"]
+         mrae.mat[count,] <- output[[i]]$pred.mrae[,"EBMA"]
+         pw.mat[count,] <- output[[i]]$pred.pw[,"EBMA"]
+         crps.mat[count,] <- output[[i]]$model.crps
+ }
+ 
+ if(func=="med"){
+  error.all<-apply(abs(error.mat),1,FUN=median,na.rm=TRUE)
+  error<-(apply(error.mat,1,FUN=median, na.rm=TRUE))
+  rmse<-abs(apply(rmse.mat,1,FUN=median, na.rm=TRUE))
+  mae<-abs(apply(mae.mat,1,FUN=median, na.rm=TRUE))
+        mad<-abs(apply(mad.mat,1,FUN=median, na.rm=TRUE))
+         rmsle<-abs(apply(rmsle.mat,1,FUN=median, na.rm=TRUE))
+         mape<-abs(apply(mape.mat,1,FUN=median, na.rm=TRUE))
+         meape<-abs(apply(meape.mat,1,FUN=median, na.rm=TRUE))
+         mrae<-abs(apply(mrae.mat,1,FUN=median, na.rm=TRUE))
+         pw<-abs(apply(pw.mat,1,FUN=median, na.rm=TRUE))
+         crps<-abs(apply(crps.mat,1,FUN=median, na.rm=TRUE))
+       }
+ 
+ if(func=="mea"){
+  error.all<-apply(abs(error.mat),1,FUN=mean,na.rm=TRUE)
+  error<-(apply(error.mat,1,FUN=mean, na.rm=TRUE))
+  rmse<-abs(apply(rmse.mat,1,FUN=mean, na.rm=TRUE))
+  mae<-abs(apply(mae.mat,1,FUN=mean, na.rm=TRUE))
+        mad<-abs(apply(mad.mat,1,FUN=mean, na.rm=TRUE))
+         rmsle<-abs(apply(rmsle.mat,1,FUN=mean, na.rm=TRUE))
+         mape<-abs(apply(mape.mat,1,FUN=mean, na.rm=TRUE))
+         meape<-abs(apply(meape.mat,1,FUN=mean, na.rm=TRUE))
+         mrae<-abs(apply(mrae.mat,1,FUN=mean, na.rm=TRUE))
+         pw<-abs(apply(pw.mat,1,FUN=mean, na.rm=TRUE))
+         crps<-abs(apply(crps.mat,1,FUN=mean, na.rm=TRUE))
+       }
+ 
+ 
+ 
+ 
+ plot(x.axis, crps)
+  
+ 
+ #par(mfrow=c(3,3))
+ #plot(c,error.all,pch=15,main="Weighted Weight Error (all)")
+ #lines(loess(error.all~c))
+ #plot(c,error,pch=15,main="Weight Error (largest weight model)")
+ #abline(h=0)
+ #lines(loess(error~c))
+ #plot(c,crps,pch=15,main="CRPS")
+ #lines(loess(crps~c))
+ #plot(c,mae,pch=15,main="MAE")
+ #lines(loess(mae~c))
+ #plot(c,rmse,pch=15,main="RMSE")
+ #lines(loess(rmse~c))
+ #plot(c,mape,pch=15,main="MAPE")
+ #lines(loess(mape~c))
+ #plot(c,meape,pch=15,main="MEAPE")
+ #lines(loess(meape~c))
+ #plot(c,mrae,pch=15,main="MRAE")
+ #lines(loess(mrae~c))
+ #plot(c,pw,pch=15,main="PW")
+ #lines(loess(pw~c))
+ 
+ 
+ 
+ }
> plot.fn(value1=5, value2=15)
[1] 129
[1] 276
[1] 423
[1] 570
[1] 717
[1] 864
[1] 1011
[1] 1158
[1] 1305
[1] 1452
[1] 1599
[1] 1746
[1] 1893
> plot.fn(pos1=5, value1=0, pos3=2)
[1] 22
[1] 23
[1] 24
[1] 25
[1] 26
[1] 27
[1] 28
[1] 29
[1] 30
[1] 31
[1] 32
[1] 33
[1] 34
[1] 35
[1] 36
[1] 37
[1] 38
[1] 39
[1] 40
[1] 41
[1] 42
Error in error.mat[count, ] <- output[[i]]$error[, 1] : 
  subscript out of bounds
> pos1=5; value1=0; pos2=2, pos2=5; pos3=2
Error: unexpected ',' in " pos2=2,"
> pos1=5; value1=0; pos2=2; pos2=5; pos3=2
> slots<-rep(NA,13)
> count<-0
> for(i in 1:1911){
+  if(output[[i]]$theseParams[pos1]==value1 & output[[i]]$theseParams[pos2]==value2){
+  count<-count+1
+  slots[count]<-i} 
+  }
> slots
 [1] NA NA NA NA NA NA NA NA NA NA NA NA NA
> pos1=5; value1=0; pos2=2; value2=5; pos2=5; pos3=2
> slots<-rep(NA,13)
> count<-0
> for(i in 1:1911){
+  if(output[[i]]$theseParams[pos1]==value1 & output[[i]]$theseParams[pos2]==value2){
+  count<-count+1
+  slots[count]<-i} 
+  }
> error.mat<-mae.mat<-rmse.mat<-mad.mat<-rmsle.mat <- mape.mat <- meape.mat <- mrae.mat <- pw.mat <- crps.mat <- matrix(NA,nrow=13,ncol=100)
> slots
 [1] NA NA NA NA NA NA NA NA NA NA NA NA NA
> pos1=5; value1=0; pos2=2; value2=5; pos3=2
> slots<-rep(NA,13)
> count<-0
> for(i in 1:1911){
+  if(output[[i]]$theseParams[pos1]==value1 & output[[i]]$theseParams[pos2]==value2){
+  count<-count+1
+  slots[count]<-i} 
+  }
> error.mat<-mae.mat<-rmse.mat<-mad.mat<-rmsle.mat <- mape.mat <- meape.mat <- mrae.mat <- pw.mat <- crps.mat <- matrix(NA,nrow=13,ncol=100)
> slots
 [1] 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42
> length(slots)
[1] 21
> pos1=5; value1=0; pos2=2; value2=5; pos3=2
> slots<-NA
> count<-0
> for(i in 1:1911){
+  if(output[[i]]$theseParams[pos1]==value1 & output[[i]]$theseParams[pos2]==value2){
+  count<-count+1
+  slots[count]<-i} 
+  }
> error.mat<-mae.mat<-rmse.mat<-mad.mat<-rmsle.mat <- mape.mat <- meape.mat <- mrae.mat <- pw.mat <- crps.mat <- matrix(NA,nrow=13,ncol=100)
> slots
 [1] 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42
> length(slots)
[1] 21
> plot.fn<-function(pos1=1, value1=5, pos2=2,value2=5,pos3=5,func="med"){
+ 
+ 
+ #pos1=5; value1=0; pos2=2; value2=5; pos3=2
+ 
+ # alpha<-c(10,5,3)
+ #  if (models>3){alpha<-c(alpha, rep(1, models-3))}
+ # a.mean <- alpha/sum(alpha) # ?
+   
+ 
+ slots<-NA
+ count<-0
+ for(i in 1:1911){
+  if(output[[i]]$theseParams[pos1]==value1 & output[[i]]$theseParams[pos2]==value2){
+  count<-count+1
+  slots[count]<-i} 
+  }
+ error.mat<-mae.mat<-rmse.mat<-mad.mat<-rmsle.mat <- mape.mat <- meape.mat <- mrae.mat <- pw.mat <- crps.mat <- matrix(NA,nrow=length(slots),ncol=100)
+ 
+ x.axis <- rep(NA, length(slots))
+ count <- 1
+ for(i in slots){
+   print(i)
+   x.axis[count] <- output[[i]]$theseParams[pos3]
+   count <- count+1
+ }
+ 
+ for(i in slots){
+  count<-which(slots==i)
+         errror.all.mat<-abs(output[[i]]$error)#%*%a.mean
+  #error.all.mat<-rowSums(abs(output[[i]]$error))
+  error.mat[count,]<-output[[i]]$error[,1]
+  rmse.mat[count,]<-output[[i]]$pred.rmse[,"EBMA"]
+  mae.mat[count,]<-output[[i]]$pred.mae[,"EBMA"]
+         mad.mat[count,]<-output[[i]]$pred.mad[,"EBMA"]
+         rmsle.mat[count,] <- output[[i]]$pred.rmsle[,"EBMA"]
+         mape.mat[count,] <- output[[i]]$pred.mape[,"EBMA"]
+         meape.mat[count,] <- output[[i]]$pred.meape[,"EBMA"]
+         mrae.mat[count,] <- output[[i]]$pred.mrae[,"EBMA"]
+         pw.mat[count,] <- output[[i]]$pred.pw[,"EBMA"]
+         crps.mat[count,] <- output[[i]]$model.crps
+ }
+ 
+ if(func=="med"){
+  error.all<-apply(abs(error.mat),1,FUN=median,na.rm=TRUE)
+  error<-(apply(error.mat,1,FUN=median, na.rm=TRUE))
+  rmse<-abs(apply(rmse.mat,1,FUN=median, na.rm=TRUE))
+  mae<-abs(apply(mae.mat,1,FUN=median, na.rm=TRUE))
+        mad<-abs(apply(mad.mat,1,FUN=median, na.rm=TRUE))
+         rmsle<-abs(apply(rmsle.mat,1,FUN=median, na.rm=TRUE))
+         mape<-abs(apply(mape.mat,1,FUN=median, na.rm=TRUE))
+         meape<-abs(apply(meape.mat,1,FUN=median, na.rm=TRUE))
+         mrae<-abs(apply(mrae.mat,1,FUN=median, na.rm=TRUE))
+         pw<-abs(apply(pw.mat,1,FUN=median, na.rm=TRUE))
+         crps<-abs(apply(crps.mat,1,FUN=median, na.rm=TRUE))
+       }
+ 
+ if(func=="mea"){
+  error.all<-apply(abs(error.mat),1,FUN=mean,na.rm=TRUE)
+  error<-(apply(error.mat,1,FUN=mean, na.rm=TRUE))
+  rmse<-abs(apply(rmse.mat,1,FUN=mean, na.rm=TRUE))
+  mae<-abs(apply(mae.mat,1,FUN=mean, na.rm=TRUE))
+        mad<-abs(apply(mad.mat,1,FUN=mean, na.rm=TRUE))
+         rmsle<-abs(apply(rmsle.mat,1,FUN=mean, na.rm=TRUE))
+         mape<-abs(apply(mape.mat,1,FUN=mean, na.rm=TRUE))
+         meape<-abs(apply(meape.mat,1,FUN=mean, na.rm=TRUE))
+         mrae<-abs(apply(mrae.mat,1,FUN=mean, na.rm=TRUE))
+         pw<-abs(apply(pw.mat,1,FUN=mean, na.rm=TRUE))
+         crps<-abs(apply(crps.mat,1,FUN=mean, na.rm=TRUE))
+       }
+ 
+ 
+ 
+ 
+ plot(x.axis, crps)
+  
+ 
+ #par(mfrow=c(3,3))
+ #plot(c,error.all,pch=15,main="Weighted Weight Error (all)")
+ #lines(loess(error.all~c))
+ #plot(c,error,pch=15,main="Weight Error (largest weight model)")
+ #abline(h=0)
+ #lines(loess(error~c))
+ #plot(c,crps,pch=15,main="CRPS")
+ #lines(loess(crps~c))
+ #plot(c,mae,pch=15,main="MAE")
+ #lines(loess(mae~c))
+ #plot(c,rmse,pch=15,main="RMSE")
+ #lines(loess(rmse~c))
+ #plot(c,mape,pch=15,main="MAPE")
+ #lines(loess(mape~c))
+ #plot(c,meape,pch=15,main="MEAPE")
+ #lines(loess(meape~c))
+ #plot(c,mrae,pch=15,main="MRAE")
+ #lines(loess(mrae~c))
+ #plot(c,pw,pch=15,main="PW")
+ #lines(loess(pw~c))
+ 
+ 
+ 
+ }
> plot.fn(pos1=5, value1=0, pos3=2)
[1] 22
[1] 23
[1] 24
[1] 25
[1] 26
[1] 27
[1] 28
[1] 29
[1] 30
[1] 31
[1] 32
[1] 33
[1] 34
[1] 35
[1] 36
[1] 37
[1] 38
[1] 39
[1] 40
[1] 41
[1] 42
> output[[22]]
$theseParams
[1]   3   5 100 250   0

$error
              [,1]        [,2]       [,3]        [,4]        [,5]
  [1,]  0.15798338  0.08646497 -0.1431674 -0.05069815 -0.05058276
  [2,]  0.16837501 -0.25717101  0.1911065 -0.05691102 -0.04539948
  [3,]  0.16715952  0.08038160 -0.1488796 -0.04838889 -0.05027264
  [4,] -0.17195102  0.08976078  0.1832284 -0.04942785 -0.05161032
  [5,]  0.50210382 -0.23977604 -0.1603230 -0.04979676 -0.05220806
  [6,] -0.15384877  0.41304864 -0.1538519 -0.05448193 -0.05086606
  [7,]  0.16852166 -0.25606551 -0.1469520 -0.04866841  0.28316421
  [8,]  0.50335541 -0.25978462 -0.1413232 -0.04982867 -0.05241896
  [9,]  0.16423485  0.07939663 -0.1442792 -0.05053626 -0.04881599
 [10,]  0.49052787 -0.24194479 -0.1463967 -0.05096607 -0.05122030
 [11,]  0.48858047 -0.24216864 -0.1467203 -0.04632608 -0.05336543
 [12,]  0.16802616  0.08122276 -0.1495196 -0.04640333 -0.05332600
 [13,]  0.49952533 -0.25258749 -0.1503234 -0.04467222 -0.05194221
 [14,] -0.50860545  0.08618213  0.5196804 -0.05464408 -0.04261302
 [15,]  0.20307921 -0.25260943  0.1512711 -0.05214026 -0.04960059
 [16,] -0.49483062  0.75403447 -0.1570380 -0.04992852 -0.05223737
 [17,] -0.18117884  0.43410189 -0.1535532 -0.04990141 -0.04946844
 [18,] -0.48639807  0.08122273 -0.1600506  0.61928190 -0.05405595
 [19,] -0.16092274 -0.23711057  0.4981896 -0.04738198 -0.05277428
 [20,] -0.17252694  0.07729803  0.1850909 -0.04553772 -0.04432430
 [21,]  0.50272251 -0.25524942 -0.1475927 -0.04794232 -0.05193808
 [22,] -0.49874438  0.08653459 -0.1448631  0.60910464 -0.05203172
 [23,] -0.49750905  0.74428039 -0.1480659 -0.04819017 -0.05051531
 [24,]  0.48802735 -0.24165851 -0.1465146 -0.05240133 -0.04745286
 [25,] -0.49412561  0.74809777 -0.1574816 -0.04577798 -0.05071262
 [26,] -0.15483511  0.08705634 -0.1589452 -0.05094538  0.27766933
 [27,]  0.17226301  0.07988194 -0.1562634 -0.04734107 -0.04854050
 [28,] -0.15685943 -0.25924696  0.5162419 -0.04919744 -0.05093807
 [29,]  0.15844227 -0.25058618  0.1879607 -0.04948025 -0.04633656
 [30,] -0.51067040  0.08609069  0.1932478  0.28198350 -0.05065160
 [31,]  0.17250362  0.08308564 -0.1565424 -0.04887641 -0.05017044
 [32,] -0.48667043  0.41063548 -0.1469127 -0.05390938  0.27685699
 [33,] -0.08211924 -0.25142698  0.4286179 -0.05089063 -0.04418102
 [34,]  0.16023591  0.08100286 -0.1434077 -0.04729551 -0.05053551
 [35,] -0.16187411  0.07301812 -0.1464839 -0.04995988  0.28529976
 [36,]  0.16755023 -0.25025089 -0.1489467 -0.05213777  0.28378513
 [37,]  0.15841187 -0.24532381 -0.1454517  0.28485574 -0.05249205
 [38,]  0.16103172 -0.25108277  0.1869880 -0.04750398 -0.04943293
 [39,]  0.16852037 -0.24943226 -0.1561063 -0.04630920  0.28332742
 [40,]  0.15209234  0.08902084 -0.1451342 -0.04694791 -0.04903107
 [41,] -0.50068042 -0.23853332  0.8506634 -0.05582145 -0.05562820
 [42,]  0.05376257  0.19470140 -0.1472464 -0.05010675 -0.05111081
 [43,] -0.49964279  0.75137475 -0.1528064 -0.05109492 -0.04783068
 [44,] -0.49144724  0.08142364  0.1807706 -0.05324086  0.28249384
 [45,] -0.16930882 -0.24397838  0.1866953  0.27890385 -0.05231196
 [46,] -0.50123933  0.15810139  0.1643572  0.22829284 -0.04951208
 [47,]  0.50812362 -0.26054010 -0.1532163 -0.04642477 -0.04794245
 [48,]  0.17266989 -0.25488901  0.1801562 -0.04853031 -0.04940680
 [49,]  0.16053144 -0.25214732 -0.1526158 -0.04492554  0.28915717
 [50,]  0.16669574 -0.24333128  0.1860017 -0.05135156 -0.05801461
 [51,] -0.17432621 -0.24182961  0.2158463  0.25231420 -0.05200470
 [52,]  0.14922606 -0.24356901 -0.1460015  0.28586642 -0.04552199
 [53,]  0.17449340 -0.26055416 -0.1471568  0.28451614 -0.05129855
 [54,] -0.05025706  0.29942274 -0.1463273 -0.05006709 -0.05277125
 [55,]  0.50408209 -0.25645786 -0.1488432 -0.04728678 -0.05149424
 [56,] -0.38777847 -0.25175935  0.7404673 -0.05375967 -0.04716983
 [57,] -0.49581337 -0.24822197  0.8409276 -0.04563509 -0.05125715
 [58,]  0.16302682 -0.25415493  0.1829764 -0.04830738 -0.04354092
 [59,]  0.49422556 -0.24721109 -0.1492935 -0.04620587 -0.05151511
 [60,] -0.49938539  0.08117897  0.1858247 -0.04680934  0.27919112
 [61,] -0.49388053  0.75453179 -0.1597092 -0.05256582 -0.04837627
 [62,]  0.48681894 -0.24177227 -0.1457809 -0.05191516 -0.04735062
 [63,]  0.15972599  0.09751682 -0.1482501 -0.05376148 -0.05523121
 [64,]  0.09502828  0.16549998 -0.1588215 -0.04760782 -0.05409889
 [65,] -0.17017485  0.08560177 -0.1521866 -0.04489947  0.28165915
 [66,] -0.50298198  0.42071036  0.1841750 -0.05132946 -0.05057395
 [67,] -0.17051494 -0.24567924  0.3388665  0.12347437 -0.04614669
 [68,]  0.16806634 -0.25767217 -0.1454329 -0.04575395  0.28079272
 [69,]  0.16633357 -0.24892557 -0.1491513 -0.05113162  0.28287492
 [70,]  0.50455144 -0.24854284 -0.1513915 -0.04823921 -0.05637789
 [71,] -0.15081165  0.07434463 -0.1573499  0.28269793 -0.04888096
 [72,]  0.49944445 -0.24897297 -0.1522134 -0.05308227 -0.04517585
 [73,]  0.17817644 -0.24736631 -0.1635758 -0.04754998  0.28031568
 [74,] -0.18420944 -0.25596804 -0.1518218  0.64024867 -0.04824937
 [75,]  0.49641336 -0.24192386 -0.1556055 -0.05053789 -0.04834607
 [76,]  0.50992110 -0.25434746 -0.1530019 -0.05245383 -0.05011791
 [77,]  0.17706668 -0.25681714  0.1808541 -0.05202357 -0.04908002
 [78,] -0.03013982  0.09562561 -0.1622619 -0.04735939  0.14413548
 [79,] -0.49526794  0.41520863  0.1780010 -0.04961573 -0.04832593
 [80,] -0.16974706  0.08344442  0.1865607 -0.05054026 -0.04971785
 [81,]  0.49470460 -0.25159848 -0.1461785 -0.05172415 -0.04520342
 [82,] -0.17435548  0.42225484 -0.1504916 -0.04718393 -0.05022380
 [83,]  0.16340501  0.07883082 -0.1473299 -0.05050496 -0.04440095
 [84,] -0.16158062 -0.25234854  0.1776775 -0.04783114  0.28408283
 [85,] -0.50771693  0.75391055 -0.1446186 -0.04880682 -0.05276824
 [86,] -0.16453857  0.41662629 -0.1477694 -0.05326434 -0.05105393
 [87,]  0.16337785  0.08953341 -0.1516765 -0.05175610 -0.04947861
 [88,] -0.50037868  0.08332325 -0.1494395 -0.05296001  0.61945492
 [89,]  0.07123786  0.18061226 -0.1475949 -0.05217517 -0.05208006
 [90,] -0.48536761 -0.25894580  0.3532956 -0.05235086  0.44336868
 [91,]  0.02290067  0.22366961 -0.1488752 -0.04869755 -0.04899750
 [92,]  0.49336905 -0.25257361 -0.1455993 -0.04819454 -0.04700163
 [93,] -0.49919562  0.08671006 -0.1558212  0.61629704 -0.04799027
 [94,] -0.16409746 -0.25478472  0.5136029 -0.04553076 -0.04918991
 [95,]  0.48207868 -0.24254522 -0.1364405 -0.05605046 -0.04704250
 [96,]  0.49629715 -0.24259690 -0.1496986 -0.04994085 -0.05406077
 [97,]  0.49598719 -0.24690805 -0.1490117 -0.05179075 -0.04827670
 [98,]  0.49030198 -0.24165521 -0.1492156 -0.05024121 -0.04918998
 [99,]  0.49866328 -0.25029842 -0.1532547 -0.04684620 -0.04826399
[100,] -0.16267863  0.40896999 -0.1502353 -0.04582736 -0.05022868

$model.crps
            [,1]
  [1,]  4.857660
  [2,]  8.903175
  [3,]  6.835720
  [4,]  5.713311
  [5,]  6.502573
  [6,]  7.102942
  [7,]  9.463247
  [8,] 10.975534
  [9,]  7.718938
 [10,] 10.122587
 [11,]  3.508847
 [12,]  2.322224
 [13,] 11.293205
 [14,] 14.701367
 [15,]  6.776803
 [16,]  5.025592
 [17,]  4.539895
 [18,]  8.879476
 [19,]  7.169085
 [20,]  8.689614
 [21,]  8.920893
 [22,]  7.466651
 [23,]  9.798459
 [24,]  9.801818
 [25,] 10.470557
 [26,]  7.995267
 [27,]  5.642060
 [28,]  7.648135
 [29,]  6.906039
 [30,] 12.901487
 [31,]  5.827995
 [32,]  8.161820
 [33,]  6.351505
 [34,]  7.142744
 [35,]  8.810738
 [36,]  9.026417
 [37,]  5.410130
 [38,]  6.947511
 [39,]  8.026040
 [40,]  7.249044
 [41,] 13.853044
 [42,]  4.600555
 [43,] 14.436433
 [44,]  6.119843
 [45,]  8.341216
 [46,] 11.997630
 [47,]  7.441250
 [48,]  9.015065
 [49,]  8.511409
 [50,]  6.668427
 [51,]  9.503265
 [52,]  6.721009
 [53,]  7.721815
 [54,]  5.057863
 [55,]  8.562779
 [56,] 14.411858
 [57,] 11.115267
 [58,]  6.521085
 [59,]  9.146050
 [60,]  5.096932
 [61,] 16.864721
 [62,] 12.284625
 [63,]  4.645898
 [64,]  5.532351
 [65,]  7.158837
 [66,]  7.161346
 [67,]  9.840484
 [68,]  5.887617
 [69,]  7.086612
 [70,]  6.241861
 [71,]  7.777836
 [72,]  5.207257
 [73,] 10.247297
 [74,]  8.253008
 [75,]  9.445907
 [76,]  8.082026
 [77,]  6.818465
 [78,]  5.963838
 [79,]  9.837693
 [80,]  6.603773
 [81,]  7.234161
 [82,]  9.361193
 [83,]  5.414794
 [84,]  5.592942
 [85,] 12.320223
 [86,]  9.005070
 [87,]  8.616518
 [88,] 13.185210
 [89,]  6.987270
 [90,] 11.662425
 [91,]  7.013171
 [92,]  9.451779
 [93,] 13.788905
 [94,]  8.049553
 [95,]  8.111483
 [96,] 14.170563
 [97,] 10.137134
 [98,]  8.127256
 [99,]  7.809299
[100,]  6.777975

$pred.mae
            EBMA   Model 1   Model 2   Model 3   Model 4   Model 5
  [1,]  6.297018  6.368993 10.359363 15.286114 11.527793 18.790469
  [2,] 10.780328 10.853734 14.171102 16.978302 12.843068 21.218784
  [3,]  9.809730  9.925289 13.694971 15.450029 14.342048 21.999476
  [4,]  8.344885  9.776907 10.498915 12.527060 11.874973 15.690867
  [5,]  6.796119  6.796118 11.453346 15.840130 10.026550 20.222778
  [6,] 11.481671  8.922186 11.865548 13.438355 12.003551 11.041930
  [7,] 12.565346 12.654127 20.971654 17.419843 24.017595 18.934495
  [8,] 11.516201 11.516201 15.540415 15.737639 23.794979 22.832976
  [9,] 10.834428 10.912064 15.854232 16.160705 18.731699 19.453871
 [10,] 10.690468 10.690467 12.362587 18.460623 19.266888 16.185533
 [11,]  3.879680  3.879681  4.469662 11.425096 15.957601 12.095894
 [12,]  3.055764  3.180826  5.464569  3.421638  3.359843 15.890996
 [13,] 11.709792 11.709792 16.651066 18.443429 22.258802 24.361025
 [14,] 20.001847 11.658507 15.105729 20.190531 24.016882 22.191828
 [15,]  8.972966  9.101094 12.543570 13.760950 19.664637 15.381808
 [16,]  5.583850  3.941647  5.583851  8.342330 11.051352  9.032024
 [17,]  7.232630  5.581441  7.461349 10.156607 11.866872 15.495597
 [18,] 12.283636  9.701112 13.141328 11.681323 12.528709 12.812970
 [19,] 12.494418  6.245225  8.503698 12.901349  7.564942 17.307180
 [20,] 12.113288 12.338262 18.198063 19.220567 23.293102 19.276373
 [21,]  9.388275  9.388275 10.954666 17.324835 17.454737 18.107352
 [22,]  9.519986  5.783169  9.696572  9.722983  9.568875 19.105363
 [23,] 10.051173  8.216614 10.051173 11.252812 10.564655 20.335733
 [24,] 10.081131 10.081131 17.170819 20.805862 14.211370 14.412511
 [25,] 11.087662  7.003800 11.088489  8.911121 13.788537 13.977167
 [26,] 12.384297 11.822771 15.897173 16.258554 21.546323 14.688060
 [27,]  8.008595  8.147203 11.559380 12.328880 10.912354 18.863590
 [28,] 11.721020  7.665251 14.568529 12.070023  8.960932  8.762142
 [29,]  8.924822  9.017531 12.066633 16.459611 13.246876 16.138987
 [30,] 16.548106 11.653433 18.067338 21.788894 22.757639 23.081535
 [31,]  8.109870  8.243129 10.565340 11.973915 15.589195 18.188028
 [32,] 11.784090  9.416480 11.948268 11.807389 19.042906 14.062049
 [33,]  7.427341  6.788785 16.846505  7.857964 22.069271 12.350871
 [34,] 10.513538 10.668783 11.696606 20.681099 20.989581 12.136686
 [35,] 13.284127 14.054064 17.724610 15.586436 18.311856 17.925602
 [36,] 12.113497 12.184942 17.000285 19.619905 18.076775 15.598815
 [37,]  6.042919  6.078394  7.927360 16.293939  9.420329 14.807549
 [38,]  9.050150  9.230855 14.034700 15.452250 12.349128 12.904921
 [39,]  8.694179  8.574818 12.963955 15.196201 18.732315 13.983866
 [40,] 11.438835 11.752116 11.980177 12.892183 20.309929 17.568697
 [41,] 14.482781 10.835626 13.987403 14.482781 20.988871 14.096162
 [42,]  6.362959  6.503098 10.380474 11.686854 12.157347 10.063321
 [43,] 14.969309  9.291803 14.969310 18.454711 17.786884 17.299722
 [44,]  8.137256  7.274818  8.166237 15.030233 16.187142  9.964965
 [45,] 10.805065  9.544330 15.116257 15.091611 18.417312 18.947072
 [46,] 15.812996 12.496058 20.717714 18.815545 19.074393 20.558453
 [47,]  7.760736  7.760736  9.144215  8.823285 10.583362 17.807534
 [48,] 10.339351 10.338156 12.049269 20.835816 11.670490 16.219567
 [49,] 11.936696 12.094735 13.120098 18.817167 20.415744 14.682529
 [50,]  9.529975  9.634258 10.870611 12.353983 20.398359 21.186621
 [51,] 11.539226 10.122246 14.786008 13.861261 14.470204 20.572706
 [52,]  7.442821  7.213217 12.712340 16.448356 14.826175 18.765592
 [53,]  9.862638  9.943647 15.781600 15.014338 17.487094 19.682105
 [54,]  9.699462  7.536171 10.125210  9.698235 10.128262 16.949864
 [55,]  8.928785  8.928784 13.964813 16.902534 16.888135 19.007696
 [56,] 17.897662  9.226546 13.562071 18.010740 19.660787 13.769802
 [57,] 11.990179  8.888035 14.651230 11.990178 14.949515 16.747343
 [58,]  8.893687  9.000681 15.431655 13.002706 13.164726 20.837975
 [59,]  9.516244  9.516243 14.125932 13.743024 16.842473 15.600863
 [60,]  6.302432  4.591804  6.144659  6.269825 13.778953 17.644129
 [61,] 17.320750 15.081512 17.320750 19.402640 20.564688 17.191686
 [62,] 12.755866 12.755865 19.475797 15.984367 21.895060 19.323024
 [63,]  6.720679  6.895875  8.579267  9.102279 18.259608 12.019573
 [64,]  7.814694  8.004574  9.316014 13.923573 11.178273 12.879954
 [65,]  9.956833  9.646783 15.311952 13.207729 14.725328 17.271896
 [66,] 10.439827  6.490218 10.622580 12.431355 13.178071  9.149600
 [67,] 14.009034 12.808595 18.428401 17.390837 22.837343 21.746052
 [68,]  6.451286  6.357204  9.838764 12.405110 18.046808 13.426713
 [69,]  8.604302  8.668318 17.719741 17.297190 16.339897 13.132089
 [70,]  6.672876  6.672875 11.987941  9.357048 10.660531 24.228176
 [71,] 12.379584 10.711313 14.447864 17.479520 15.427055 21.614804
 [72,]  5.522178  5.522179  9.115347  8.238815 12.561569 18.895582
 [73,] 12.720784 12.765877 18.344467 16.236498 17.790421 26.842990
 [74,] 11.208019  7.826070 12.249738 17.533532 11.452355 15.920922
 [75,]  9.967537  9.967536 15.023953 17.594243 22.355649 15.570663
 [76,]  8.395297  8.395297 10.970850 11.430128 17.368011 21.475133
 [77,]  8.805546  8.898006 12.078898 15.674227 14.584201 17.538427
 [78,]  9.704665  8.885057 11.418342 12.662232 15.622384 18.143117
 [79,] 17.362466  8.396780 17.737077 10.335077 16.069352 16.284321
 [80,]  9.095794  8.546295 17.794183 12.673082 17.079153 13.529460
 [81,]  7.682931  7.682931 11.746039 12.623526 20.944817 12.874261
 [82,] 16.446429 10.461419 16.711818 12.943679 20.809362 15.887140
 [83,]  6.258112  6.292949 10.669313 17.096764 12.495214 14.256388
 [84,]  6.503789  5.741440  7.609767 10.927202 15.305769 15.435397
 [85,] 12.930264  8.310695 12.930263 10.594452 19.619206 15.448549
 [86,] 15.786489 10.787344 15.957008 18.687146 21.026743 16.783308
 [87,] 11.461738 11.528596 16.348533 19.133566 22.494539 15.761542
 [88,] 19.984148  8.808097 11.960680 11.398071 13.139090 20.327406
 [89,]  9.962142 10.116661 13.459647 16.935890 13.518280 14.474897
 [90,] 18.785063  9.773665 14.146121 19.421437 20.771831 14.213913
 [91,]  8.600744  8.690861 15.975940 16.896317 19.660027 12.828152
 [92,]  9.695906  9.695905 12.838325 14.507440 11.673381 16.695768
 [93,] 19.961318 12.201096 14.946339 18.176949 20.233591 19.784333
 [94,] 14.063983 10.274013 12.270653 14.496439 20.652425 15.154937
 [95,]  8.593016  8.593016 12.774561 10.517754 11.688371 11.747239
 [96,] 14.303972 14.303972 19.245631 16.257171 19.240567 22.624616
 [97,] 10.523077 10.523077 16.156071 12.924632 19.594993 22.760739
 [98,]  8.553414  8.553413 11.626480 14.248024 14.649603 20.253017
 [99,]  8.085275  8.085273 12.426047 13.558231 19.523941 10.826602
[100,]  9.713234  6.845286  9.798304 18.626314 16.745891 22.204999

$pred.rmse
            EBMA   Model 1   Model 2   Model 3   Model 4  Model 5
  [1,] 11.534324 11.613056 14.856124 20.693983 15.222469 25.28324
  [2,] 17.013059 17.192884 20.689823 22.809413 17.880839 26.75827
  [3,] 16.514192 16.654097 20.427306 20.683809 19.180114 27.96238
  [4,] 12.522969 16.072907 15.174361 17.198957 15.778303 19.47038
  [5,] 11.834474 11.834475 16.299866 21.030575 12.754007 25.45232
  [6,] 16.883618 14.402035 17.287425 18.287968 15.536612 14.75653
  [7,] 21.773187 21.983506 29.749107 23.505490 30.808679 24.72290
  [8,] 18.575335 18.575334 22.008372 21.319198 29.347005 28.88328
  [9,] 19.247325 19.353560 22.652275 22.219682 23.816735 24.93065
 [10,] 17.980257 17.980256 17.877581 25.161106 25.125525 21.30815
 [11,]  7.558334  7.558335  7.880176 15.134706 20.687790 15.10544
 [12,]  6.437283  6.615847  8.281597  6.582781  6.493633 19.93495
 [13,] 19.869725 19.869725 24.006567 24.959716 27.537661 31.15722
 [14,] 25.929828 20.670661 21.641023 26.142013 30.562244 29.43570
 [15,] 14.000702 14.436149 17.659919 17.856972 24.624839 19.90401
 [16,]  7.839283  6.678642  7.839283 11.262500 14.626639 11.22539
 [17,] 10.466935  8.935571 10.730325 13.318859 15.635151 19.40473
 [18,] 16.091786 15.574451 19.330205 15.950064 16.381329 16.82012
 [19,] 16.705839 10.444280 12.219216 17.143843 10.379047 22.57149
 [20,] 18.792267 22.192753 26.269462 25.980115 30.129389 24.40540
 [21,] 15.614403 15.614403 15.674308 22.835480 21.242325 23.98439
 [22,] 12.279444  9.516871 13.094636 12.935731 12.368552 24.76571
 [23,] 14.397215 13.857102 14.397215 15.186650 13.925323 25.46810
 [24,] 17.367692 17.367693 24.940327 27.858116 18.657209 19.21619
 [25,] 15.781614 12.354788 15.782470 13.850035 18.044599 18.86225
 [26,] 17.184130 19.694014 21.730314 22.856365 28.628259 19.99216
 [27,] 12.949771 13.196229 17.119345 16.586651 14.868504 24.82704
 [28,] 15.292100 13.632647 20.333340 15.584332 14.017935 13.05967
 [29,] 14.745857 15.020418 17.704607 21.844470 17.140075 20.91777
 [30,] 23.032470 20.536776 26.111279 28.750751 29.309382 30.71720
 [31,] 14.337165 14.588924 14.381559 16.360326 19.386493 22.50585
 [32,] 17.441089 14.977004 17.739146 15.295655 24.321563 17.89992
 [33,] 12.989460 12.997031 23.268440 13.127384 29.105274 16.47649
 [34,] 18.380602 18.657753 16.545477 28.243045 27.265491 16.52245
 [35,] 18.363074 24.187086 25.594456 20.972270 22.814900 22.63173
 [36,] 20.414203 20.724598 24.177805 26.872668 22.591225 20.40748
 [37,] 11.700148 11.741414 13.273480 22.106188 13.754817 19.53639
 [38,] 14.702516 15.169977 20.115010 20.777780 15.881591 16.38407
 [39,] 14.234286 14.248310 18.163912 21.091980 23.394881 18.03003
 [40,] 18.532767 19.022129 17.652509 17.180112 26.259123 22.56614
 [41,] 19.538540 18.819842 21.051473 19.538539 26.575890 17.87216
 [42,] 11.109049 11.648379 14.442939 15.602268 15.599356 13.12075
 [43,] 20.921020 15.732502 20.921019 24.625746 22.054257 22.91114
 [44,] 11.880924 12.260902 12.046618 19.685918 20.535141 13.74665
 [45,] 16.418975 16.493237 21.043286 21.445794 23.013860 23.99108
 [46,] 21.291779 20.698109 29.767353 25.395744 24.253323 26.64945
 [47,] 13.270801 13.270800 14.185826 13.281622 14.612693 22.75524
 [48,] 16.778905 16.824342 18.271153 27.379488 15.257923 21.00477
 [49,] 19.925353 20.250441 18.658402 25.489803 26.674853 19.64258
 [50,] 16.668789 16.881440 16.159193 16.551330 25.938730 27.41157
 [51,] 17.844228 17.237522 21.526233 19.596449 19.572904 27.08178
 [52,] 12.816268 12.859955 17.600090 22.219337 18.679998 24.36407
 [53,] 16.476300 16.682401 23.023175 19.626474 22.180618 24.80901
 [54,] 13.673889 13.064606 14.146438 12.856508 12.701238 21.46105
 [55,] 15.671040 15.671039 19.473556 22.340364 21.320079 23.89361
 [56,] 23.762079 15.973287 19.508137 23.882637 25.175370 18.79898
 [57,] 17.611048 15.503918 21.756514 17.611047 20.302677 22.38790
 [58,] 15.031251 15.334185 21.392990 17.159177 16.558409 26.61810
 [59,] 17.111404 17.111403 19.591288 18.632589 21.902718 20.56385
 [60,]  8.609710  7.810359  8.915044  9.074972 17.929429 22.45843
 [61,] 24.339031 23.962981 24.339031 27.409504 26.245544 22.04920
 [62,] 22.166743 22.166742 28.243293 21.668799 27.642656 25.03155
 [63,] 11.497837 12.139516 12.237059 12.880780 23.253548 15.97229
 [64,] 13.115283 13.379085 13.519637 19.006234 14.939761 17.28013
 [65,] 14.873700 16.125845 21.965017 18.247693 19.800420 22.95977
 [66,] 13.689461 10.512932 13.888305 16.641805 17.089670 11.26778
 [67,] 19.953445 21.868121 25.989188 23.999427 28.842145 27.81506
 [68,] 10.471345 10.463092 14.267337 17.203071 23.639204 17.44089
 [69,] 15.190341 15.372404 25.243152 22.894143 20.925771 16.44656
 [70,] 11.426285 11.426285 16.933778 13.163304 13.334474 30.46652
 [71,] 18.147519 17.841684 21.419532 23.929452 20.536271 28.07017
 [72,]  9.651608  9.651609 13.049750 11.685826 16.244929 24.05113
 [73,] 21.580364 21.680196 26.555883 22.035906 22.511648 34.15805
 [74,] 14.734906 13.510611 17.641084 22.785598 14.903444 20.21142
 [75,] 17.928107 17.928107 21.132203 23.507062 28.506691 20.32349
 [76,] 14.715766 14.715766 16.053383 16.383691 22.546636 27.43372
 [77,] 14.394955 14.543577 17.007533 20.652598 18.708689 22.31245
 [78,] 14.212028 15.382064 15.877041 17.339853 20.659055 23.56909
 [79,] 25.817239 14.548456 26.260396 15.188905 20.686420 19.41077
 [80,] 13.906291 14.329138 25.002582 17.254177 22.533731 17.95235
 [81,] 12.930709 12.930709 16.609135 15.330158 26.760523 16.40885
 [82,] 23.268618 18.068348 23.571894 17.274601 26.141774 20.43327
 [83,] 11.072389 11.121533 15.306251 22.200083 16.395836 16.33127
 [84,] 10.107326  9.684900 11.620487 14.695738 19.728493 19.96802
 [85,] 17.815761 13.225116 17.815760 14.235351 26.193882 19.74223
 [86,] 22.981910 18.066701 23.177747 24.364546 27.290099 21.60441
 [87,] 19.491993 19.646572 23.617424 27.076482 29.471755 21.39209
 [88,] 26.083527 15.173764 16.906292 14.829893 17.346555 26.44120
 [89,] 16.878782 17.163775 19.425202 22.337197 17.416376 18.44599
 [90,] 25.759494 16.408907 20.446476 26.631850 27.018657 17.94541
 [91,] 15.184730 15.551779 22.571585 23.002582 24.783023 16.59247
 [92,] 15.869395 15.869394 17.445666 19.068842 14.727211 21.26358
 [93,] 26.110352 19.568682 21.043360 24.152326 26.406598 25.26121
 [94,] 19.721582 17.846110 18.316705 20.227222 26.047023 20.36213
 [95,] 14.298135 14.298135 18.711825 14.711537 14.882831 15.28237
 [96,] 23.854767 23.854768 26.636962 22.302565 24.560099 29.11149
 [97,] 17.614120 17.614119 23.054361 17.619290 25.231473 28.88439
 [98,] 15.365146 15.365144 16.544621 19.016686 19.016837 25.68660
 [99,] 13.964717 13.964716 16.936479 18.513203 24.529092 14.19333
[100,] 14.520502 12.980597 14.589190 24.872999 21.668570 28.06469

$pred.mad
            EBMA  Model 1   Model 2   Model 3   Model 4   Model 5
  [1,]  1.327132 1.368019  7.674005 11.382189  8.849185 14.566806
  [2,]  3.185993 3.251038  9.127017 13.550541  9.514240 18.367502
  [3,]  1.752278 1.799440  9.210009 12.650346 11.718737 17.408177
  [4,]  5.048871 4.305458  7.193079  9.463949  9.269571 14.570790
  [5,]  1.688285 1.688288  7.591990 12.575023  8.282509 17.703510
  [6,]  8.017899 2.191494  8.605646 10.382997  9.622758  8.311875
  [7,]  1.941977 1.745446 14.563302 14.096153 20.557046 15.176632
  [8,]  2.792727 2.792732 11.377924 11.751397 21.250911 18.408955
  [9,]  1.730003 1.730126  9.930956 13.215812 16.109500 15.237584
 [10,]  2.251049 2.251037  8.918522 13.816673 16.400897 12.249100
 [11,]  1.373284 1.373279  2.096007  9.605392 13.029169 10.354694
 [12,]  1.258586 1.339978  3.057793  1.909829  1.859974 13.607438
 [13,]  2.362870 2.362870 11.245059 14.087763 19.171291 19.759909
 [14,] 16.628368 1.791277 10.840314 17.125299 22.375402 17.320730
 [15,]  3.168743 2.672473  9.680156 11.794755 17.575457 13.084248
 [16,]  4.338125 1.347532  4.338124  6.408889  8.839054  7.869713
 [17,]  4.605636 1.652923  4.707617  8.426464  9.037253 13.463368
 [18,] 10.006106 2.063656  8.236007  7.904854 10.270587  9.373454
 [19,]  9.316746 1.618780  5.597162  9.837109  5.295444 14.834732
 [20,]  6.655471 2.154014 13.031800 16.688233 19.384704 15.638578
 [21,]  2.029722 2.029722  7.763703 13.852391 16.288688 14.211034
 [22,]  7.874551 1.494548  7.947643  7.602062  8.053077 15.222164
 [23,]  6.233760 2.105352  6.233761  9.145453  8.450214 16.329917
 [24,]  1.537766 1.537766 11.977361 16.442954 10.864832 11.154786
 [25,]  7.548126 2.044202  7.549445  5.497019 10.262808 10.168442
 [26,]  9.819746 2.373804 13.548209 11.858518 16.869875 10.558958
 [27,]  2.669704 2.814979  7.040684  9.196276  7.906047 13.840058
 [28,]  9.959039 1.613560  9.754089 10.480165  4.773682  5.555503
 [29,]  1.894781 1.565246  7.545941 14.004932 10.466692 13.530701
 [30,] 11.328048 1.682812 12.131488 18.041086 19.352850 17.632585
 [31,]  1.870394 1.670489  8.557136 10.223086 13.566283 16.532793
 [32,]  7.689960 2.643674  7.764952 10.650842 16.756968 12.949359
 [33,]  2.821563 1.369967 13.832267  3.898414 18.001854  9.370662
 [34,]  1.795076 1.723016  8.343803 17.851132 18.891048  8.666094
 [35,]  9.669446 2.037179 12.075044 12.689223 16.008352 15.615591
 [36,]  2.159574 1.680004 11.899834 15.496247 15.213966 12.075642
 [37,]  1.661199 1.634630  4.955671 12.629339  6.936502 11.590367
 [38,]  2.218958 1.958325 11.484973 11.443654 10.253438 10.347391
 [39,]  2.173996 1.788259  9.914437 11.268825 17.031047 12.169198
 [40,]  3.911240 3.545920  7.896751 11.300729 16.730271 14.226640
 [41,] 10.974000 1.692491  8.974907 10.974000 18.221473 12.010780
 [42,]  1.987372 1.388456  7.017660  9.568446 10.274660  8.083766
 [43,] 11.150385 1.967961 11.150374 15.363941 16.553550 13.388375
 [44,]  5.710362 2.259834  4.710686 11.945608 13.478664  7.414162
 [45,]  5.402175 1.596580 12.113824 10.308518 16.823616 15.876945
 [46,] 11.864339 2.234071 15.025374 14.592010 16.391223 16.642241
 [47,]  2.020507 2.020508  4.396482  4.234110  7.441672 15.699873
 [48,]  2.322609 2.383496  6.304009 17.733452  9.807756 13.520675
 [49,]  2.875844 3.571821  9.181575 15.385072 16.288964 11.206796
 [50,]  1.664070 1.576108  7.174135  9.574958 16.873715 16.891704
 [51,]  5.591361 2.282553  9.226629 10.078282 11.633838 16.692831
 [52,]  2.068225 1.581509  9.539442 11.654421 12.481938 14.771706
 [53,]  1.883540 1.711547 11.311152 13.227595 15.572182 17.377802
 [54,]  6.687364 1.672778  7.370342  6.911442  8.568237 13.860412
 [55,]  1.500272 1.500284  9.868100 12.354957 15.463904 16.650470
 [56,] 15.685388 1.660812  9.948648 15.762070 17.389646  9.560862
 [57,]  8.210463 2.237010  8.148242  8.210465 10.912193 12.692182
 [58,]  2.132702 1.757482  9.713695 11.521021 12.093888 17.404879
 [59,]  1.364558 1.364560 11.353892 10.971576 13.552259 11.616043
 [60,]  4.602331 1.510770  4.342641  4.201849 11.737655 14.231277
 [61,] 13.425139 5.390322 13.425141 14.534796 17.525626 14.752289
 [62,]  1.664242 1.664250 13.954173 12.426055 18.370524 15.708191
 [63,]  2.338005 1.919621  5.805931  6.469264 15.918031  9.493157
 [64,]  2.118294 2.082320  5.462086 10.813467  8.309270  9.822113
 [65,]  6.076928 2.279819 11.602594  9.303489 11.815826 13.111581
 [66,]  9.528836 1.807176  9.898973  9.860096 11.746915  8.719969
 [67,]  9.562389 2.066448 13.671251 12.301012 18.920091 15.882478
 [68,]  2.175533 1.982750  6.678982  8.466573 13.749601 11.193184
 [69,]  1.628173 1.521650 12.097367 13.709899 14.051513 11.327893
 [70,]  1.942986 1.942982  8.802173  6.374558  9.550990 21.828568
 [71,]  8.344351 2.651465  9.826032 13.203295 12.322208 18.463307
 [72,]  1.580481 1.580481  6.428113  5.995061 10.757129 15.460561
 [73,]  3.684738 3.945954 12.033921 13.996056 15.141161 22.114383
 [74,]  9.239921 1.659947  8.786893 14.358288  9.806400 12.976050
 [75,]  1.624956 1.624959 11.545584 15.054537 18.756607 12.622868
 [76,]  1.553041 1.553047  6.563060  7.067877 13.934677 18.072422
 [77,]  2.072513 2.090420  8.598359 13.112358 12.885335 14.814763
 [78,]  5.869358 1.825453  8.901953 10.251423 11.685527 14.062131
 [79,] 11.294967 1.826409 11.917663  7.190551 12.907740 16.183138
 [80,]  5.319093 1.941689 14.289415  9.188430 13.816688 10.757831
 [81,]  1.588492 1.588490  9.323439 12.671452 16.840051 10.092065
 [82,] 11.183099 1.651199 11.652538 10.864663 18.067719 13.129490
 [83,]  1.469230 1.385520  7.500317 14.713524 10.525542 14.710117
 [84,]  3.601001 1.755262  4.388154  8.452357 12.504145 13.288888
 [85,] 11.125750 2.220660 11.125751  8.467267 15.598626 13.810115
 [86,] 10.294651 1.835128 10.586837 16.062565 18.207309 14.448028
 [87,]  2.218019 1.949971 10.140767 14.108770 18.525956 11.364704
 [88,] 16.703099 1.626434  8.549110  9.646185 10.656519 17.219355
 [89,]  1.919985 1.678943  9.562183 13.779304 10.956887 11.949715
 [90,] 13.839364 1.684628  9.785914 14.999667 17.225501 12.813922
 [91,]  1.792242 1.456588 12.147532 11.608955 16.295517 10.211602
 [92,]  2.163310 2.163308 10.106333 12.681341 10.128611 13.133471
 [93,] 16.574631 2.607111 11.061101 14.965558 16.955776 15.883194
 [94,] 10.074092 1.603205  7.737959 10.759366 17.481099 11.226298
 [95,]  1.862795 1.862783  9.132319  6.923588  9.740874  9.402775
 [96,]  2.402406 2.402406 14.038374 12.990776 16.144322 18.402833
 [97,]  2.113803 2.113808 11.262406  9.945219 18.407544 19.846872
 [98,]  1.506943 1.506934  6.750046 11.372434 11.908347 18.122409
 [99,]  1.734365 1.734364 10.513890 10.813006 16.205583  8.591594
[100,]  5.202751 1.390053  5.370996 15.115387 13.094369 20.298702

$pred.rmsle
            EBMA   Model 1   Model 2   Model 3   Model 4   Model 5
  [1,] 0.6766190 0.6942275 1.1634171 1.6398014 1.2120926 1.8870042
  [2,] 1.3056178 1.2162083 1.3444997 1.5439908 1.3457243 1.8032935
  [3,] 0.6541131 0.6692200 1.2610744 0.7329083 0.9285012 1.5720321
  [4,] 0.7536002 0.7294837 0.5661165 0.8890389 1.1195888 1.0244617
  [5,] 0.4677223 0.4677224 1.0105092 1.0495056 2.3609432 1.2342010
  [6,] 1.0411965 0.9908360 1.0820989 1.0728668 1.7041023 4.0133855
  [7,] 0.7140571 0.7082027 1.2104223 1.3332894 1.4475199 1.9123529
  [8,] 0.7762458 0.7762456 0.9730646 1.3313928 1.5676634 1.4433196
  [9,] 0.6277270 0.6355760 1.1540604 1.3366407 1.4504814 1.3920757
 [10,] 0.6730550 0.6730548 0.9586186 1.4263178 1.3038185 1.0995350
 [11,] 0.4448930 0.4448932 0.6872663 1.5111769 1.9164566 1.3168559
 [12,] 0.1839172 0.2025084 0.6153529 0.2041330 0.2035466 0.8312853
 [13,] 0.7898039 0.7898040 1.1332115 1.1021249 1.5364349 1.4648961
 [14,] 1.2816291 0.5745747 0.6783917 1.2768390 1.3893583 1.3025652
 [15,] 0.7246309 0.6715979 1.0005601 0.8646440 1.4179736 1.1480679
 [16,] 0.8575994 0.6049467 0.8575994 1.1300047 1.3708695 1.2761114
 [17,] 0.9112004 0.9036789 0.9581095 1.2491566 1.2745452 1.3837803
 [18,] 1.4989806 0.9616928 1.2073317 1.6823948 1.4625926 1.6681241
 [19,] 1.1284906 0.7240392 1.0542149 1.1776804 0.8174959 1.9884871
 [20,] 0.9985962 0.6969147 1.0424902 1.3639560 1.2235695 1.5249128
 [21,] 0.7800747 0.7800748 1.2068206 1.5219982 0.8626381 1.4975011
 [22,] 1.0281100 0.5322319 0.7804896 0.9840110 1.0254971 1.8885789
 [23,] 1.0654895 0.7634920 1.0654889 1.5400745 1.5651873 1.5501414
 [24,] 0.7298419 0.7298419 1.1826976 1.3716831 1.8462501 1.5057526
 [25,] 1.9916012 1.6868661 1.9917550 1.3279456 1.9430641 2.0614749
 [26,] 1.7240533 1.1902929 1.2311249 1.3752100 1.5529698 2.3932200
 [27,] 0.7301606 0.7162713 0.8553588 1.1165330 1.0590582 1.3671109
 [28,] 1.2294819 0.3723700 0.8278114 1.1916291 0.6124776 0.9694783
 [29,] 0.7515307 0.7783614 1.2375708 1.2857758 1.7163105 1.3720772
 [30,] 1.2880488 0.7106253 1.2849938 1.5175660 1.1970822 1.4756496
 [31,] 0.7217577 0.7233432 1.2357582 1.2745523 0.9724397 1.5450182
 [32,] 0.7573357 0.8309254 0.7625894 0.8369644 1.4829249 0.5367098
 [33,] 1.2304168 1.0338844 2.3637401 1.1762668 2.7776333 1.5055925
 [34,] 0.7104899 0.7147259 1.2640289 1.4338669 1.3309099 0.7803766
 [35,] 1.1950124 0.7748384 1.1008980 0.8535302 0.8944169 1.5328560
 [36,] 0.7672213 0.7798172 1.1206788 1.1881030 1.3145475 1.1715641
 [37,] 1.2185430 1.2060085 1.1435453 2.5116473 1.1168719 2.2344494
 [38,] 0.8294284 0.8827628 1.2232203 1.2270302 2.5790270 1.8525807
 [39,] 0.6051239 0.6028430 1.1364797 1.1396570 1.3262718 1.3215087
 [40,] 0.8615703 0.9228808 0.7949809 0.8544274 1.5294121 1.2180194
 [41,] 1.1532799 0.8114372 0.9844842 1.1532807 1.4404813 1.6804552
 [42,] 0.5554217 0.5460009 1.1746626 1.1737217 1.2457216 1.1085640
 [43,] 1.2934235 0.7231913 1.2934239 1.3770682 1.4280678 1.2977280
 [44,] 0.9072369 0.6410762 0.8482801 1.3550931 1.4893028 1.0642827
 [45,] 1.1297990 0.7517227 1.1016776 1.1453945 1.4201754 1.5109619
 [46,] 1.7117341 0.8080226 1.3531762 1.4689894 1.6853063 1.3680460
 [47,] 0.4481994 0.4481993 0.5606798 0.6717561 0.9972508 0.9824131
 [48,] 0.6973601 0.6850505 1.0232942 1.3540873 1.0026549 1.2625389
 [49,] 1.1027289 1.1035413 1.6616411 1.5665140 1.6365106 3.6492194
 [50,] 1.0773757 1.0908798 1.6847362 1.5124934 1.9313530 1.7569999
 [51,] 1.0406804 1.0151907 1.4915142 1.2713647 1.2298537 1.8284885
 [52,] 0.6810752 0.6159941 0.9765008 1.2588447 1.2881277 1.2853489
 [53,] 0.7600203 0.7419639 1.0988942 0.8155006 1.5338243 1.2134908
 [54,] 0.9302715 0.7515538 1.0045497 1.5504468 1.1264018 1.5409151
 [55,] 0.6475138 0.6475133 1.0356019 1.1715840 1.2483596 1.3666869
 [56,] 1.4587471 0.9944539 1.4696284 1.4603731 1.5543560 1.7075205
 [57,] 1.0763266 0.7417365 1.3412887 1.0763262 1.3058701 1.5092202
 [58,] 0.8091000 0.8418248 1.0764145 1.3744721 1.3480461 1.5788016
 [59,] 0.7034551 0.7034546 1.0661136 1.0076658 1.2651381 1.3412843
 [60,] 1.1400723 1.0154693 1.2042214 1.1367315 2.3143779 2.8256204
 [61,] 1.1040678 1.0917608 1.1040680 1.5076284 1.4342407 3.2187383
 [62,] 0.7289159 0.7289158 1.0535998 1.1498625 1.5089597 1.4417593
 [63,] 0.7218899 0.7371271 1.2615675 0.8504263 1.5442061 1.2365266
 [64,] 0.7055762 0.7357944 0.9005911 1.0476206 0.7657263 1.0978424
 [65,] 0.9296862 0.8372507 1.6399395 1.5668861 1.2805908 1.4494832
 [66,] 0.6735015 0.6390080 0.6937332 1.1562276 1.1981450 0.7681054
 [67,] 1.4861787 0.8496821 1.1278026 1.3355551 1.3529034 1.2343806
 [68,] 1.0149473 0.9962195 1.3308975 1.6318442 2.1978777 1.6977534
 [69,] 0.7308063 0.7284473 1.3341811 1.2420524 1.2582515 2.2902033
 [70,] 0.5726416 0.5726411 0.7627595 0.7913871 2.1291843 1.5664762
 [71,] 2.2258677 0.8922021 1.2589655 1.5256680 3.6096949 1.5096251
 [72,] 0.7126278 0.7126278 1.0109577 0.9338562 1.3873608 2.1416554
 [73,] 0.8687809 0.8717180 1.0447103 0.9839843 1.1799932 1.5179553
 [74,] 1.2192664 0.6894719 0.9706400 1.1646016 1.2688476 1.4067440
 [75,] 0.7325751 0.7325751 0.9441752 1.2762334 1.7742904 1.7229082
 [76,] 0.9228277 0.9228277 1.0938568 2.0135392 1.5631070 1.7493657
 [77,] 0.7466451 0.7577946 0.9922573 1.2144947 1.1578796 1.3799268
 [78,] 0.9109018 0.6983740 1.1540761 1.2317748 1.2559837 1.3898336
 [79,] 1.2169625 0.8787030 1.2461040 0.6617525 1.1848128 0.8793878
 [80,] 0.8428586 0.6422026 1.5307896 1.1862294 1.1595916 1.2474892
 [81,] 0.5614304 0.5614303 0.9583278 0.8804025 1.5089235 1.1922738
 [82,] 1.2268998 0.6945569 1.2506684 1.4269030 1.6529884 1.4745605
 [83,] 0.2456912 0.2559322 0.6931978 0.9661395 0.8636799 0.5608622
 [84,] 0.9928318 0.8882656 1.0619484 1.4791385 1.9239514 1.8518145
 [85,] 0.7554864 0.6224457 0.7554867 1.2847104 1.5014654 1.1351310
 [86,] 1.1506220 0.8766625 1.1301055 1.4356433 1.3819826 0.9753261
 [87,] 0.9216746 0.9428193 1.3740498 1.4147484 1.6236574 1.2942759
 [88,] 1.5144475 0.6119672 0.9470290 1.0939299 1.0553771 1.5472220
 [89,] 0.7417088 0.7537377 1.0781860 1.3490588 1.6348720 1.3613225
 [90,] 1.4037816 0.8301314 0.9607849 1.4604665 1.7705452 0.7801947
 [91,] 0.5612037 0.5707655 1.1261117 1.3112500 1.6480377 1.1907195
 [92,] 0.8762194 0.8762193 1.0618026 1.1836218 1.6149430 1.3257240
 [93,] 1.3304666 0.6723313 1.2123840 1.2433095 1.3004019 1.3817147
 [94,] 1.2023178 1.0385660 1.4394391 1.2016847 1.4035004 1.5228765
 [95,] 0.6487918 0.6487919 0.9501355 1.1949697 1.2753590 1.3033686
 [96,] 1.0751447 1.0751444 1.4371347 1.4650613 1.8916403 1.7119611
 [97,] 0.8256859 0.8256858 1.1837057 1.4118672 1.3160615 1.6889708
 [98,] 0.7355545 0.7355543 1.1094823 1.2155151 1.4917041 1.7805104
 [99,] 0.7108439 0.7108438 0.9163782 1.1019824 1.6152426 0.6664202
[100,] 1.2958386 0.6397477 1.3009665 1.7672194 1.6211605 1.8988947

$pred.mape
             EBMA    Model 1    Model 2     Model 3    Model 4    Model 5
  [1,]  229.77749  239.20980  851.01244   722.61359   900.8245  1844.8117
  [2,]  118.39172  121.00560  626.20519   555.96727   323.5926   684.7530
  [3,]  158.61908  161.94109  174.24187   210.19334   228.4403   526.1491
  [4,]  174.00433  259.52921  242.03205   156.77147   206.0901   291.0105
  [5,]  120.85726  120.85722  253.20576   306.95488   112.1607   388.9363
  [6,]  369.24583  615.32898  380.39252   432.64588   197.2816   103.7276
  [7,]  459.43662  465.58104  209.59086   485.72964   555.1318   154.2351
  [8,]  458.70966  458.70982  246.66092   313.17141   712.2199   974.6534
  [9,]  242.27548  245.06663  436.60303   318.47909   386.2208   370.5931
 [10,]  288.36873  288.36864  213.82249   550.65697   421.9447   341.7313
 [11,]  274.96628  274.96621  145.95545  1013.88592  1343.8404   486.9607
 [12,]  138.15455  149.04978   73.13218   174.31215   173.2450   461.7787
 [13,]  356.62034  356.62015  397.59655   255.55218   510.0527   512.5447
 [14,]  228.80001  160.15203  170.07051   233.30304   352.3948   351.2492
 [15,]  179.78066  173.28655  447.53550   333.15849   814.9157   505.8201
 [16,]  589.30756  144.96725  589.30770   535.90069   875.3295   760.6917
 [17,]  429.46525  111.37550  453.49364   421.42233   920.3323  1076.3903
 [18,]  291.58336  336.86864  327.92509   146.10086   304.5029   190.2919
 [19,]  805.70907  192.98438 1457.85846   864.92964   464.7807  1801.2620
 [20,]  197.92837  185.27725  631.08166   307.72334   736.0267   298.6674
 [21,]  467.95774  467.95775  216.68052  1331.64509  1053.7039  2525.7276
 [22,]  288.20532  114.34230  351.29036   354.50210   289.8083   860.7394
 [23,]  715.06800  567.11984  715.06796   136.73082   182.8527   667.8177
 [24,]  166.93399  166.93397  376.90984   395.09663   139.5617   186.5045
 [25,] 1221.34632  119.66657 1221.45230   479.09718  1164.5393  1107.7058
 [26,]  157.60780  385.46239  287.23995   245.53462   510.7599   141.9482
 [27,]  233.89560  240.09385  339.13223   382.88367   410.4844   643.3549
 [28,]  124.44215  140.50470  326.08604   128.91518   143.9442   119.8225
 [29,]  385.10589  417.85648  423.01294   563.40378   529.0742   707.5431
 [30,]  184.64171  130.32493  345.84744   380.68045   309.5539   398.8789
 [31,]  458.34441  472.17549  231.30374   519.27509   396.3762   533.3518
 [32,]  241.73197  189.78799  246.85906   144.78292   436.8705   275.2586
 [33,]  195.66573  116.05294  913.06845   238.40230  1293.1672   460.1515
 [34,]  251.07335  260.24894  132.23903   417.69092   448.4460   229.2156
 [35,]  134.77176  256.29657  414.44532   202.72636   250.6247   185.8202
 [36,]  169.55982  171.00231  306.82356   310.75516   253.0873   195.0458
 [37,]  136.46726  167.12059  813.67103  2923.35532   949.2543  1413.3007
 [38,]  466.60814  491.71820  576.44448   565.70553   163.0630   232.5017
 [39,]  222.00177  236.46495  279.51553   528.56611   549.2784   423.5813
 [40,] 1805.91236 1949.54062  237.68125   870.90658  4489.8241  1150.5998
 [41,]  373.21395  253.06065  419.32152   373.21400   940.7471   290.8212
 [42,] 2839.35199 3349.67458 2563.00150 13823.91188 14237.2777  1635.4504
 [43,]  355.62073  167.53417  355.62071   340.47618   291.5374   266.0469
 [44,]  232.70602  209.98476  204.14318   695.70476   671.5408   343.1176
 [45,]  128.07566  121.40854  278.34346   246.25453   298.0424   379.5506
 [46,]  127.78833  259.31593  449.49620   239.10105   207.7345   253.5503
 [47,]  135.50559  135.50560  120.20820    90.98268   136.7702   236.6129
 [48,]  136.97507  137.18476  333.10554   506.93379   145.9745   258.3157
 [49,]  411.20983  428.70850  184.52071   565.06294   581.7167   110.3186
 [50,]  541.34888  550.54022  107.35065   304.62174   767.8041   650.5312
 [51,]  262.58926  165.32672 2066.12084   405.54277   641.6041   973.6207
 [52,]  269.92336  267.78146  211.43506   818.07347   378.9418   455.6802
 [53,]  493.61787  496.52413  277.32864   388.57316   280.9184   313.6650
 [54,]  358.10946  284.14859  380.55576   185.81171   310.5189   616.2425
 [55,]  127.33683  127.33681  308.49773   282.00133   311.4637   405.2636
 [56,]  461.50675  438.18396  187.98572   463.78086   528.0290   166.1529
 [57,]  204.31156  167.28838  479.00741   204.31156   606.2834   613.6071
 [58,]  229.55811  236.31867  253.60781   129.17325   181.8421   403.3101
 [59,]  343.08134  343.08124  486.20408   389.01754   591.8882   593.8408
 [60,] 1662.13868 3036.57447 1958.46793 15024.32283  3613.8084 15161.8913
 [61,]  464.32994  894.68883  464.33014   405.43363   416.5688   180.8320
 [62,]  191.46322  191.46317  359.24658   179.00206   376.3952   367.3997
 [63,]  254.51245  294.68771  113.89183   311.16441  1055.0761   795.0389
 [64,]  175.64774  182.92857  139.86377   288.29320   205.5221   308.1049
 [65,]  320.43033  589.60918 1570.09791   420.44195   633.8745   975.0602
 [66,]  369.32100  113.51153  379.07469   434.39983   443.6491   202.2784
 [67,]  243.36995  354.49555  382.21096   176.92092   438.9195   306.0179
 [68,]  148.88493  119.07606  863.55845  1012.33381  1556.3784   953.6187
 [69,]  334.37814  347.09586  658.68066   419.28710   734.6268   155.7018
 [70,]  391.01123  391.01123  494.80454   404.48983   138.0925   661.0477
 [71,]   97.98491  298.01244  363.05822   329.15530   110.5626   591.7259
 [72,]  199.48375  199.48372  628.41400   572.47577  1460.3265  1824.2393
 [73,]  588.75128  595.27588  437.20406   228.84248   364.0159   913.8727
 [74,]  518.86476  121.36162  405.81455   413.52499   549.1631  1597.1683
 [75,]  254.82595  254.82580  306.88967   390.05397   661.5695   223.6101
 [76,]  298.63750  298.63727  337.30633   327.99943   962.9310  1873.7811
 [77,]  439.68312  449.25250  193.06366   358.09949   301.8820   481.5949
 [78,]  198.91435  225.62729  495.00980   900.26413   702.4057   671.4249
 [79,]  454.25954  108.64994  467.97837   242.45947   311.5594   263.9777
 [80,]  149.98919  144.52483 2941.50388  1943.23775   543.5089  2236.4502
 [81,]  305.11655  305.11654  612.95133   305.99041   815.5156   414.2074
 [82,]  496.36230  218.90599  506.31811   135.27491   443.8824   233.4775
 [83,]   81.64579   82.77559  134.30371   243.71439   158.7859   170.5142
 [84,]  211.71450  104.84671  392.04352   570.67157   905.0924   871.2852
 [85,]  208.89605  161.44382  208.89604   162.56619   510.3555   326.0795
 [86,]  249.04581 1305.22710  244.46397   368.21380   427.2328   318.7943
 [87,]  338.47841  337.99958  258.88803   650.69221   433.6070   226.1180
 [88,]  603.71982  236.45614  251.88867   235.76938   281.8694   616.7170
 [89,]  346.88385  351.07894  317.68187   565.39603   193.1963   257.0375
 [90,] 1119.85510  247.13226  421.80612  1178.21608   801.6519   503.1319
 [91,]  135.12705  135.71772  386.07526   402.42572   446.3303   200.5143
 [92,]  330.05352  330.05351  348.13792   325.33855   139.2047   360.8622
 [93,] 7506.88725 3644.03454 2747.06305   224.62462  7803.6955  7922.1973
 [94,]  250.78191  520.47093  134.27289   257.92823   657.3964   552.1316
 [95,]  382.55223  382.55189  271.48328   273.69403   176.3487   238.1719
 [96,]  666.93347  666.93345  959.30325   321.91443   462.4359   515.4478
 [97,]  197.14956  197.14963  758.98567   376.58956   565.2597  1120.2925
 [98,]  262.60819  262.60815  166.84543   307.08770   258.4447   482.3793
 [99,]  192.62183  192.62183  350.72481   645.39914   922.9209   403.9721
[100,]  426.09513  124.87280  433.50341  1043.48925  1008.1931  1182.1235

$pred.meape
            EBMA  Model 1   Model 2   Model 3   Model 4   Model 5
  [1,]  41.19504 40.26918 121.48079 187.52558 145.17157 232.92772
  [2,]  76.15167 76.54771 124.57177 145.33620 105.56931 186.52944
  [3,]  25.33268 26.55353  94.26632 134.98912 116.13836 183.96404
  [4,]  48.66382 59.13742  66.34408 107.84256  89.29560 147.87184
  [5,]  26.22027 26.22028 106.12782 169.10341 106.11610 236.21485
  [6,]  88.12635 40.18563  90.85252 131.20050 107.50728  99.11752
  [7,]  26.96815 28.45832 113.56063  93.77391 133.95670 111.02677
  [8,]  55.52828 55.52829 104.82392 109.27442 163.94394 169.73965
  [9,]  30.00536 30.53523 100.72017 108.15343 135.02657 136.26561
 [10,]  32.02479 32.02473  84.96015 144.04074 143.07801 138.30587
 [11,]  39.19697 39.19682  75.95428 246.08401 342.33411 249.16393
 [12,]  13.37751 14.69713  41.53169  19.26984  18.43466 150.81557
 [13,]  40.06018 40.06073  89.95451 119.80847 144.47958 149.68671
 [14,] 123.01930 27.61919  71.69809 124.36531 169.23008 136.61920
 [15,]  65.97227 53.46836 108.38077 134.14801 152.71754 139.23702
 [16,]  97.45586 59.03947  97.45586 171.57239 215.70080 193.04860
 [17,]  89.08289 61.32626  95.82054 150.73054 176.52716 237.95189
 [18,] 106.18770 41.24516  93.79928  96.93242 106.78196 111.51559
 [19,] 164.23786 48.86421  91.67009 166.32167  75.82412 218.87881
 [20,]  52.51669 23.81517 102.43173 103.41090 141.15883 116.31977
 [21,]  42.04486 42.04484  81.18565 139.45900 166.28284 142.73753
 [22,] 132.44790 43.06786 158.99681 133.33202 132.43594 265.88678
 [23,]  79.05437 37.58195  79.05413  94.75746  86.64140 181.98850
 [24,]  25.99769 25.99769 119.67204 160.58462 104.58185 105.82530
 [25,] 230.32945 91.97686 230.41342 126.99058 268.37353 275.78621
 [26,]  87.82530 43.48237 112.92055 116.77888 151.95258 103.32618
 [27,]  43.34913 44.58536  94.86975  99.91563  92.52503 155.33011
 [28,] 104.20533 16.77328 120.04767 107.76124  58.57024  62.47530
 [29,]  33.63187 33.51464  97.76962 133.27231 107.52664 135.97300
 [30,]  96.72782 27.16240  99.19851 117.46981 138.01948 116.66082
 [31,]  41.68137 41.94799  91.41818 100.88491 158.55930 165.46729
 [32,] 106.51588 53.36038 106.18316  93.10733 159.76134 145.78755
 [33,]  95.81715 60.36621 403.85486 106.07093 424.18790 210.39284
 [34,]  24.31869 22.47319  75.01401 145.77624 149.51022  74.71970
 [35,]  81.74450 28.32490 107.72435  84.99891 134.10464 112.87709
 [36,]  41.90889 37.24174  98.33845 125.46053 121.64503  97.70603
 [37,]  82.23099 83.67076 111.54968 372.79530 224.90740 295.11030
 [38,]  32.62193 35.69137 118.06254 137.21339 104.96298 107.70801
 [39,]  43.73096 40.44434 106.17646 131.92368 168.05020 114.96568
 [40,]  58.83136 62.36219  91.38369 116.52910 164.21974 137.72800
 [41,] 112.12374 33.36649  78.80407 112.12372 154.19481 103.09567
 [42,]  34.17939 26.71061  95.26409 113.33583 111.06558  91.91943
 [43,]  91.85282 29.98092  91.85282 127.78659 121.78439 132.95211
 [44,]  91.57773 54.92419  96.34754 189.11629 219.21191 115.95586
 [45,]  68.96355 28.51966 130.29791  97.64870 146.89819 142.92682
 [46,]  86.59786 37.55778  94.42592 100.53420 109.97165 113.95255
 [47,]  32.58854 32.58856  64.37583  56.84763  87.97163 160.11645
 [48,]  48.35880 47.46605  79.93863 180.38046  83.60597 132.58132
 [49,]  58.78405 54.23276  92.53573 128.87694 145.15161 104.11019
 [50,]  28.63479 27.74287  90.04483 104.51346 197.70289 177.43454
 [51,]  98.54803 57.49996 122.67250 116.40741 129.20597 193.19261
 [52,]  40.00371 24.20621 113.16591 149.70928 144.21026 184.52778
 [53,]  27.16126 24.71325  95.89182  84.22704 116.77121 136.44579
 [54,]  87.30933 34.32917  97.99084 107.66911 113.91325 185.52549
 [55,]  25.32520 25.32520 102.44008 116.43261 121.45771 129.87496
 [56,] 126.78976 28.18024  99.09788 128.13906 161.79820 105.01659
 [57,] 115.32643 47.61310 166.45670 115.32645 158.61194 161.65097
 [58,]  32.04074 27.28467 108.81064  99.79635 106.64971 168.08794
 [59,]  17.87861 17.87857 105.81272 113.80054 135.37057 120.60899
 [60,] 146.62474 87.16173 165.62602 120.45991 383.36580 532.89518
 [61,] 103.31958 48.94058 103.31958 102.32985 118.03603  97.74329
 [62,]  26.22651 26.22643 132.08560  85.80874 129.96720 126.97062
 [63,]  34.90474 44.67117  78.48464  75.75633 187.75452 114.34890
 [64,]  41.41610 39.69758  74.85442 132.76988 105.94770 120.16109
 [65,]  77.45838 48.87299 140.24991 113.73496 132.73726 175.35036
 [66,] 167.57115 50.66716 170.23739 179.20541 158.85503 130.34724
 [67,]  85.18765 27.35633 115.32315 104.49431 149.47120 146.94614
 [68,]  87.32912 81.97329 172.66661 196.56147 276.46960 216.55344
 [69,]  24.78790 21.52356 139.69886 133.19950 127.24875  95.89733
 [70,]  38.63179 38.63186 121.73780  66.72492 102.39807 232.63359
 [71,]  85.50747 32.04289  84.34039 109.13690 102.80451 154.63090
 [72,]  67.56137 67.56137 131.85382 125.19936 194.97900 319.38945
 [73,]  42.97356 43.57502 109.62949  92.15589 123.45216 171.29241
 [74,]  98.82292 35.94275 109.32042 189.41689  99.34066 159.82743
 [75,]  28.28581 28.28580  90.22946 118.03418 148.07742 109.17964
 [76,]  33.68479 33.68477  88.02012  99.97795 161.42519 207.89945
 [77,]  37.78068 39.35345 102.86718 142.50317 132.91707 170.70747
 [78,]  79.41090 37.76868  89.83671 107.25609 149.51340 155.83074
 [79,] 153.21781 36.45077 164.96358  67.48601 147.41172 167.50564
 [80,]  74.65475 47.92885 159.33630 115.88136 157.08631 126.54226
 [81,]  29.14037 29.14037 105.58662 129.44573 199.44586 119.95163
 [82,] 125.09433 32.30143 132.14838  99.24782 152.12559 126.28709
 [83,]  17.91649 17.64985  92.95698 165.55961 123.01056 166.38843
 [84,]  81.27753 67.33810 111.58221 165.15607 238.75906 269.14330
 [85,] 132.93587 40.11178 132.93584  99.49443 193.70028 148.15252
 [86,]  89.17160 22.36258  89.53513 111.37157 124.00922 104.67739
 [87,]  43.19311 35.11975 100.85218 119.58741 143.71783  92.25257
 [88,] 180.20487 32.82375 112.94853 110.41727 132.78348 179.66223
 [89,]  33.58054 33.97797 100.75356 133.43367 106.89495 117.33379
 [90,] 172.10991 48.32684 109.70325 176.95416 160.08444 142.75153
 [91,]  35.61707 24.53609 123.15160 127.03568 165.04106 112.00924
 [92,]  43.61728 43.61724 104.91945 130.94926 110.01480 148.85111
 [93,] 124.05140 39.40986  76.55066 104.34619 125.47831 121.40901
 [94,] 117.18747 30.02764  94.15303 119.84346 168.97276 117.86638
 [95,]  42.37626 42.37628 112.24104  94.66289 118.50468 106.43374
 [96,]  47.49426 47.49426 122.41489 104.46251 120.64145 163.97831
 [97,]  43.10238 43.10235 109.97952  93.60815 145.84620 169.74465
 [98,]  20.45892 20.45893  85.06116 110.89680 111.65729 153.51916
 [99,]  41.12775 41.12796 136.23768 136.72096 195.54525 139.27237
[100,]  77.82591 37.76936  79.11957 176.71853 156.99163 221.27780

$pred.mrae
            EBMA   Model 1   Model 2   Model 3   Model 4   Model 5
  [1,] 0.3637718 0.3542023 1.1524196 1.7563738 1.3314665 2.4973312
  [2,] 0.7138224 0.7629799 1.3414830 1.6654220 1.0122510 1.8086475
  [3,] 0.3682038 0.3961684 1.1350538 1.4258415 1.3788182 2.1041470
  [4,] 0.7940801 0.9198842 0.9987551 1.4457566 1.2363561 1.8166837
  [5,] 0.3118099 0.3118105 1.1506037 1.6657911 1.0700473 2.3231502
  [6,] 1.1326293 0.5372663 1.1431392 1.5152822 1.2530183 1.1360209
  [7,] 0.3363188 0.3187637 1.5212713 1.1241507 1.5940434 1.3050308
  [8,] 0.6454099 0.6454097 1.2648459 1.2392455 1.7973671 1.8720281
  [9,] 0.3859298 0.3993419 1.2613044 1.4075592 1.5754664 1.5505396
 [10,] 0.5975681 0.5975689 1.0531509 1.9071013 1.9091412 1.5015736
 [11,] 0.5369879 0.5369828 0.7332978 2.5018129 3.2682803 2.7504707
 [12,] 0.5393458 0.5516926 1.1185004 0.6311881 0.6922515 4.4256333
 [13,] 0.4402908 0.4402908 1.2123838 1.4259837 1.6661955 1.8192383
 [14,] 1.3206749 0.2286278 0.9302861 1.3337849 1.6747841 1.3390336
 [15,] 0.6982290 0.6742837 1.2115143 1.3870146 1.8038315 1.3775760
 [16,] 1.0814705 0.4637520 1.0814705 1.7645290 2.2177960 1.9231672
 [17,] 1.1757439 0.5849187 1.1499076 1.5358571 1.7175885 2.5984243
 [18,] 1.1741860 0.5625291 1.0295410 1.1240224 1.1947734 1.2712881
 [19,] 1.6516833 0.4843322 0.9301534 1.7392426 0.9815085 2.2784571
 [20,] 0.6472935 0.3797608 1.1519092 1.2834387 1.6156317 1.4311169
 [21,] 0.4062007 0.4062007 0.9946663 1.6250074 1.7641345 1.7171834
 [22,] 1.3214547 0.3458421 1.3367101 1.3852439 1.2723172 2.5190764
 [23,] 0.9576566 0.5604411 0.9576566 1.2004353 1.1409810 2.1597742
 [24,] 0.3767131 0.3767136 1.5170148 1.9254519 1.1595479 1.1963609
 [25,] 1.2811466 0.5726721 1.2812239 0.8722010 1.6119306 1.6717115
 [26,] 0.9376832 0.6183089 1.2272666 1.2513286 1.6359227 1.0893171
 [27,] 0.6002751 0.6534589 1.4001391 1.2452578 1.1339921 2.0678789
 [28,] 1.3050171 0.3422294 1.8280028 1.3536728 0.7952006 0.9670976
 [29,] 0.4660782 0.4531107 1.1735916 1.6082837 1.3131125 1.6795327
 [30,] 1.0256349 0.2303086 1.0377956 1.2892057 1.4051005 1.4697786
 [31,] 0.4742523 0.4705903 1.1358023 1.1950313 1.9706522 2.0861992
 [32,] 1.1228593 0.5970121 1.1830233 1.1050120 1.9627723 1.7129307
 [33,] 0.6504331 0.4407352 2.4501944 0.7715391 2.8877530 1.3497002
 [34,] 0.3831782 0.3615558 0.9469484 1.9025090 1.8845505 1.0118577
 [35,] 0.8632371 0.4187337 1.1601693 1.0405709 1.3148828 1.2024108
 [36,] 0.4656036 0.4398182 1.2450583 1.4662954 1.3496887 1.2123506
 [37,] 0.4945193 0.4563252 0.9425997 2.8540613 1.3187542 2.2383759
 [38,] 0.6267392 0.5929028 1.4897314 1.4833975 1.2409862 1.2514641
 [39,] 0.6465072 0.5892055 1.4062067 1.5326972 2.0993363 1.4612031
 [40,] 0.7545088 0.9172313 0.9803058 1.1302563 1.8352612 1.5133751
 [41,] 1.2217168 0.3799077 0.8964348 1.2217168 1.7748676 1.1442259
 [42,] 0.3995056 0.4017276 1.3717918 1.6507929 1.5107849 1.2081283
 [43,] 1.2363155 0.3812064 1.2363198 1.5756816 1.4193784 1.3702923
 [44,] 0.9516253 0.6134597 0.9405113 1.8634431 2.0955651 1.2131551
 [45,] 0.9325882 0.5223368 1.7045912 1.2454368 1.7232982 1.8052334
 [46,] 1.0536193 0.3700293 1.3121115 1.2318502 1.2258527 1.3168300
 [47,] 0.7121843 0.7121859 1.0759375 0.9986068 1.2652735 2.0464938
 [48,] 0.6064028 0.6016809 1.0613929 2.3458022 1.0739925 1.5743203
 [49,] 0.8232954 0.8175369 1.0890237 1.5842895 1.8018992 1.2002942
 [50,] 0.3985069 0.3615307 0.9664914 1.2402452 2.0260721 2.0315321
 [51,] 0.9921356 0.6193591 1.4721913 1.2507167 1.2196910 1.8980012
 [52,] 0.6043060 0.4457086 1.2653427 1.9694106 1.5339658 2.0312887
 [53,] 0.5111499 0.4976426 1.4300249 1.2862281 1.5930137 1.8996966
 [54,] 1.1163852 0.3689555 1.1870611 1.1364094 1.1699552 2.1032005
 [55,] 0.4037851 0.4037830 1.4123721 1.5723956 1.4407347 1.6954700
 [56,] 1.4371000 0.2084575 1.0503043 1.4301859 1.6157661 0.9815548
 [57,] 1.1609525 0.6393938 1.6844756 1.1609522 1.6139534 1.6329695
 [58,] 0.4973749 0.5380520 1.3240293 1.2453159 1.2076018 1.9560812
 [59,] 0.3540609 0.3540612 1.3284486 1.4178678 1.6315899 1.5351768
 [60,] 0.9503601 0.4632058 0.9382163 0.8928051 2.1224139 2.9745840
 [61,] 1.3698999 0.6209507 1.3698999 1.2711932 1.3755458 1.1623745
 [62,] 0.3827509 0.3827528 1.4670011 1.1814539 1.6143008 1.5162612
 [63,] 0.5786946 0.6080900 0.9820463 1.1313723 2.5335551 1.5337430
 [64,] 0.6885610 0.7005771 1.1085389 1.8125242 1.3584957 1.5615811
 [65,] 0.8653329 0.6116816 1.5378504 1.2811263 1.3677848 1.7428644
 [66,] 1.6208094 0.6069067 1.6472648 1.5860684 1.7627447 1.3700111
 [67,] 0.9044643 0.5270275 1.3136963 1.1470206 1.6130445 1.6463905
 [68,] 0.7906203 0.7225576 1.3579387 1.7356980 2.4291247 1.9184455
 [69,] 0.3709563 0.3291716 1.7058614 1.4672557 1.5094971 1.1731564
 [70,] 0.5706994 0.5706994 1.3308014 1.0293265 1.1723932 2.7758839
 [71,] 0.9169429 0.4916242 1.0537420 1.4340834 1.2139500 1.7999503
 [72,] 0.4958604 0.4958610 1.0673583 1.2461885 1.7239260 2.7246244
 [73,] 0.5793799 0.5767246 1.3446865 1.1221519 1.2383842 1.9497114
 [74,] 1.0950163 0.4879170 1.2222093 1.9516984 1.1489166 1.7016276
 [75,] 0.3228848 0.3228886 1.2288705 1.3924064 1.8410759 1.2838880
 [76,] 0.3626830 0.3626840 1.1026549 1.1254290 1.7823576 2.2576077
 [77,] 0.5007097 0.5705317 1.2636352 1.7958146 1.4937042 1.8127502
 [78,] 0.8616413 0.4206524 1.0008779 1.1986223 1.6067141 1.6640195
 [79,] 1.8810193 0.3554017 1.9253593 0.9742909 1.6594407 1.5751719
 [80,] 0.8417895 0.6111826 1.8686489 1.2436226 1.6554299 1.4750915
 [81,] 0.2874740 0.2874734 1.1361009 1.3506711 2.1508341 1.2053875
 [82,] 1.4031782 0.3285359 1.4265719 1.0401856 1.7343557 1.3003380
 [83,] 0.3307394 0.3039743 1.0857975 2.2307774 1.3683475 1.9115382
 [84,] 0.8627961 0.6168861 1.1075473 1.6343890 2.6554366 2.5558920
 [85,] 1.3330146 0.4913769 1.3330149 1.0126687 1.8894227 1.5733406
 [86,] 1.0558214 0.3042315 1.0664136 1.5768667 1.5792710 1.1659378
 [87,] 0.4499460 0.3997142 1.2488133 1.5023980 1.7367623 1.2143181
 [88,] 1.6990964 0.3375246 0.9542887 0.9237964 1.1629633 1.7291201
 [89,] 0.5216271 0.5410294 1.2823429 1.6571443 1.2387340 1.3112387
 [90,] 1.5823469 0.3677635 1.1748377 1.6491418 1.7231667 1.2186084
 [91,] 0.3960928 0.3300029 1.6228793 1.5172453 2.0369848 1.2051033
 [92,] 0.5066169 0.5066104 1.3445665 1.5408050 1.1998734 1.6519097
 [93,] 1.3840352 0.4015101 0.9150386 1.1862360 1.4291399 1.3603149
 [94,] 1.1040194 0.2900727 0.9363031 1.1474654 1.7580781 1.1801231
 [95,] 0.6882520 0.6882511 1.5446177 1.1365007 1.5257527 1.3063286
 [96,] 0.4982970 0.4982970 1.5017482 1.1391015 1.4577889 1.7947198
 [97,] 0.4774971 0.4774954 1.3144087 1.0523382 1.4275483 1.7325480
 [98,] 0.2591849 0.2591849 1.1875984 1.3168178 1.5027443 1.9226296
 [99,] 0.5606147 0.5606158 1.5734986 1.6202358 2.2632871 1.2388491
[100,] 0.9243832 0.3890746 0.9552528 2.2046033 1.7535011 2.5034467

$pred.pw
       EBMA Model 1 Model 2 Model 3 Model 4 Model 5
  [1,] 28.8    29.6    54.4    68.4    62.0    73.2
  [2,] 39.2    40.4    54.8    64.0    51.6    72.0
  [3,] 40.4    41.2    56.0    62.0    66.8    80.8
  [4,] 36.4    48.4    50.0    64.0    60.4    73.6
  [5,] 30.0    30.0    52.8    65.6    55.6    79.2
  [6,] 55.2    42.8    54.0    63.2    63.6    63.2
  [7,] 40.8    40.4    62.8    55.6    68.4    65.2
  [8,] 37.6    37.6    56.0    58.4    77.6    70.4
  [9,] 36.4    36.8    55.2    60.0    65.6    68.0
 [10,] 41.2    41.2    51.2    66.8    72.8    68.0
 [11,] 33.6    33.6    40.0    74.0    84.4    79.6
 [12,] 26.8    31.6    52.4    33.6    35.2    87.2
 [13,] 40.0    40.0    55.6    64.4    71.6    74.0
 [14,] 64.4    35.6    46.4    66.4    68.4    64.0
 [15,] 41.2    40.0    55.2    62.8    72.8    65.2
 [16,] 54.4    36.0    54.4    64.8    74.0    75.2
 [17,] 54.0    39.2    54.0    62.0    70.4    79.2
 [18,] 60.4    42.8    50.4    58.4    62.0    63.2
 [19,] 70.0    36.8    46.8    70.4    49.6    73.2
 [20,] 36.4    38.8    54.0    61.6    68.8    62.4
 [21,] 40.8    40.8    49.6    64.4    74.8    70.8
 [22,] 58.4    34.4    60.4    59.6    56.4    78.4
 [23,] 49.2    41.6    49.2    60.0    60.8    80.8
 [24,] 36.4    36.4    58.4    68.8    58.8    60.8
 [25,] 58.4    36.4    58.4    46.4    71.6    68.4
 [26,] 43.6    42.0    56.4    60.0    69.6    58.8
 [27,] 38.4    41.2    58.4    61.2    57.6    74.4
 [28,] 64.4    36.0    63.6    67.6    44.0    48.8
 [29,] 43.2    41.6    56.4    66.0    63.2    68.8
 [30,] 53.2    34.4    51.2    62.0    68.0    62.8
 [31,] 40.4    40.8    56.4    58.8    76.8    76.4
 [32,] 53.6    43.6    52.8    57.2    71.2    62.8
 [33,] 37.6    31.2    70.0    37.2    74.4    64.8
 [34,] 40.0    40.0    48.0    70.4    70.8    50.8
 [35,] 41.2    40.4    55.6    51.6    67.6    63.6
 [36,] 38.0    38.0    54.4    60.4    66.8    61.6
 [37,] 31.6    34.8    47.2    74.0    64.4    74.4
 [38,] 43.2    42.4    58.4    67.2    64.4    62.0
 [39,] 38.8    40.8    64.4    66.0    74.0    64.0
 [40,] 44.4    46.8    48.8    54.0    74.4    70.0
 [41,] 59.2    36.4    48.8    59.2    70.0    55.6
 [42,] 37.2    38.4    58.0    64.8    69.6    64.8
 [43,] 59.6    37.2    59.6    62.4    68.4    62.0
 [44,] 45.2    41.2    45.2    70.4    76.0    55.6
 [45,] 46.4    37.2    62.4    63.2    73.2    72.0
 [46,] 54.4    37.2    58.4    58.0    64.4    65.6
 [47,] 46.0    46.0    53.6    50.0    60.4    74.4
 [48,] 39.6    38.8    51.2    76.0    54.0    65.6
 [49,] 46.0    47.6    53.6    64.0    74.4    60.8
 [50,] 38.8    38.8    49.2    60.8    72.4    71.2
 [51,] 48.8    37.2    58.0    61.6    65.6    75.2
 [52,] 32.8    32.0    58.4    68.8    71.2    72.0
 [53,] 40.0    41.2    60.0    60.8    72.0    73.6
 [54,] 53.2    38.8    60.0    56.0    60.4    74.0
 [55,] 33.6    33.6    58.4    66.4    66.0    72.4
 [56,] 64.0    36.0    52.0    64.0    67.6    49.2
 [57,] 56.8    41.6    59.2    56.8    68.8    68.4
 [58,] 40.0    40.8    59.2    60.4    60.4    74.0
 [59,] 38.4    38.4    61.2    66.0    69.2    69.6
 [60,] 47.2    31.6    46.8    46.0    77.6    84.4
 [61,] 57.6    44.4    57.6    58.8    68.0    59.2
 [62,] 38.8    38.8    58.0    59.6    68.8    67.2
 [63,] 42.0    41.6    49.2    54.4    78.4    69.6
 [64,] 43.6    43.6    53.6    65.6    66.8    66.0
 [65,] 44.4    39.2    63.6    61.6    64.0    72.4
 [66,] 66.8    40.4    67.6    63.2    70.0    60.8
 [67,] 44.4    41.6    60.0    56.8    72.0    69.2
 [68,] 36.0    36.4    54.4    64.4    77.2    72.0
 [69,] 36.4    34.8    62.0    65.2    67.2    59.2
 [70,] 34.8    34.8    58.0    50.4    62.8    82.0
 [71,] 44.4    43.2    51.6    64.0    64.8    73.6
 [72,] 33.2    33.2    51.6    54.8    70.0    82.4
 [73,] 39.2    39.6    55.6    55.2    64.8    73.2
 [74,] 54.8    37.6    55.6    69.2    55.6    68.8
 [75,] 36.8    36.8    56.4    62.0    74.0    63.6
 [76,] 40.4    40.4    53.2    56.8    72.4    78.8
 [77,] 39.6    39.6    57.6    68.4    66.0    70.8
 [78,] 39.6    39.2    50.0    58.8    69.2    74.0
 [79,] 63.6    37.2    63.6    49.2    63.6    67.6
 [80,] 40.8    38.4    66.0    58.0    69.6    62.8
 [81,] 36.8    36.8    53.6    67.6    76.8    58.0
 [82,] 58.0    39.2    57.6    53.2    71.2    61.2
 [83,] 28.4    28.8    52.8    71.6    65.6    76.8
 [84,] 46.0    38.0    54.0    66.8    75.2    76.4
 [85,] 62.4    38.0    62.4    50.8    67.2    68.4
 [86,] 53.2    38.0    53.6    61.2    67.2    63.6
 [87,] 39.6    40.0    60.4    63.6    73.6    60.0
 [88,] 76.4    37.2    48.0    48.0    57.6    76.4
 [89,] 40.0    40.4    56.4    64.8    64.8    62.4
 [90,] 66.4    36.4    52.8    65.2    67.6    60.0
 [91,] 33.2    34.4    60.4    62.4    76.0    59.6
 [92,] 40.0    40.0    57.2    62.0    57.6    68.0
 [93,] 64.8    41.2    48.4    56.0    66.0    66.0
 [94,] 58.8    39.2    46.0    61.2    78.0    59.2
 [95,] 42.0    42.0    60.8    54.8    64.8    63.6
 [96,] 40.4    40.4    61.2    58.4    67.2    75.2
 [97,] 40.4    40.4    56.8    52.4    64.8    76.0
 [98,] 41.6    41.6    55.2    63.6    65.6    76.4
 [99,] 37.2    37.2    58.8    61.6    75.6    60.8
[100,] 46.8    27.2    47.2    71.2    70.4    79.2

> output[[22]]$theseParams
[1]   3   5 100 250   0
> output[[23]]$theseParams
[1]   4   5 100 250   0
> plot.fn(pos1=5, value1=0, pos3=1)
[1] 22
[1] 23
[1] 24
[1] 25
[1] 26
[1] 27
[1] 28
[1] 29
[1] 30
[1] 31
[1] 32
[1] 33
[1] 34
[1] 35
[1] 36
[1] 37
[1] 38
[1] 39
[1] 40
[1] 41
[1] 42
> plot.fn(pos1=20, value1=0, pos3=1)
Error in if (output[[i]]$theseParams[pos1] == value1 & output[[i]]$theseParams[pos2] ==  : 
  missing value where TRUE/FALSE needed
> plot.fn(pos1=15, value1=0, pos3=1)
Error in if (output[[i]]$theseParams[pos1] == value1 & output[[i]]$theseParams[pos2] ==  : 
  missing value where TRUE/FALSE needed
> plot.fn(pos1=5, value1=0, pos2=2, pos2=100, pos3=2)
Error in plot.fn(pos1 = 5, value1 = 0, pos2 = 2, pos2 = 100, pos3 = 2) : 
  formal argument "pos2" matched by multiple actual arguments
> plot.fn(pos1=5, value1=0, pos2=2, pos2=15, pos3=2)
Error in plot.fn(pos1 = 5, value1 = 0, pos2 = 2, pos2 = 15, pos3 = 2) : 
  formal argument "pos2" matched by multiple actual arguments
> plot.fn(pos1=5, value1=0, pos2=2, value2=15, pos3=2)
[1] 127
[1] 128
[1] 129
[1] 130
[1] 131
[1] 132
[1] 133
[1] 134
[1] 135
[1] 136
[1] 137
[1] 138
[1] 139
[1] 140
[1] 141
[1] 142
[1] 143
[1] 144
[1] 145
[1] 146
[1] 147
> plot.fn(pos1=5, value1=0, pos2=2, value2=15, pos3=1)
[1] 127
[1] 128
[1] 129
[1] 130
[1] 131
[1] 132
[1] 133
[1] 134
[1] 135
[1] 136
[1] 137
[1] 138
[1] 139
[1] 140
[1] 141
[1] 142
[1] 143
[1] 144
[1] 145
[1] 146
[1] 147
> plot.fn(pos1=5, value1=0, pos2=2, value2=20, pos3=1)
[1] NA
Error in x.axis[count] <- output[[i]]$theseParams[pos3] : 
  replacement has length zero
> plot.fn(pos1=5, value1=0, pos2=2, value2=3, pos3=1)
[1] 1
[1] 2
[1] 3
[1] 4
[1] 5
[1] 6
[1] 7
[1] 8
[1] 9
[1] 10
[1] 11
[1] 12
[1] 13
[1] 14
[1] 15
[1] 16
[1] 17
[1] 18
[1] 19
[1] 20
[1] 21
> plot.fn(pos1=5, value1=0, pos2=2, value2=15, pos3=1)
[1] 127
[1] 128
[1] 129
[1] 130
[1] 131
[1] 132
[1] 133
[1] 134
[1] 135
[1] 136
[1] 137
[1] 138
[1] 139
[1] 140
[1] 141
[1] 142
[1] 143
[1] 144
[1] 145
[1] 146
[1] 147
> par(mfrow=c(3,3))
> plot.fn(pos1=5, value1=0, pos2=2, value2=3, pos3=1)
[1] 1
[1] 2
[1] 3
[1] 4
[1] 5
[1] 6
[1] 7
[1] 8
[1] 9
[1] 10
[1] 11
[1] 12
[1] 13
[1] 14
[1] 15
[1] 16
[1] 17
[1] 18
[1] 19
[1] 20
[1] 21
> plot.fn(pos1=5, value1=0, pos2=2, value2=15, pos3=1)
[1] 127
[1] 128
[1] 129
[1] 130
[1] 131
[1] 132
[1] 133
[1] 134
[1] 135
[1] 136
[1] 137
[1] 138
[1] 139
[1] 140
[1] 141
[1] 142
[1] 143
[1] 144
[1] 145
[1] 146
[1] 147
> par(mfrow=c(3,3))
> plot.fn(pos1=5, value1=0, pos2=2, value2=3, pos3=1)
[1] 1
[1] 2
[1] 3
[1] 4
[1] 5
[1] 6
[1] 7
[1] 8
[1] 9
[1] 10
[1] 11
[1] 12
[1] 13
[1] 14
[1] 15
[1] 16
[1] 17
[1] 18
[1] 19
[1] 20
[1] 21
> plot.fn(pos1=5, value1=0, pos2=2, value2=9, pos3=1)
[1] 64
[1] 65
[1] 66
[1] 67
[1] 68
[1] 69
[1] 70
[1] 71
[1] 72
[1] 73
[1] 74
[1] 75
[1] 76
[1] 77
[1] 78
[1] 79
[1] 80
[1] 81
[1] 82
[1] 83
[1] 84
> plot.fn(pos1=5, value1=0, pos2=2, value2=15, pos3=1)
[1] 127
[1] 128
[1] 129
[1] 130
[1] 131
[1] 132
[1] 133
[1] 134
[1] 135
[1] 136
[1] 137
[1] 138
[1] 139
[1] 140
[1] 141
[1] 142
[1] 143
[1] 144
[1] 145
[1] 146
[1] 147
> plot.fn(pos1=5, value1=.05, pos2=2, value2=3, pos3=1)
[1] 883
[1] 884
[1] 885
[1] 886
[1] 887
[1] 888
[1] 889
[1] 890
[1] 891
[1] 892
[1] 893
[1] 894
[1] 895
[1] 896
[1] 897
[1] 898
[1] 899
[1] 900
[1] 901
[1] 902
[1] 903
> plot.fn(pos1=5, value1=.05, pos2=2, value2=9, pos3=1)
[1] 946
[1] 947
[1] 948
[1] 949
[1] 950
[1] 951
[1] 952
[1] 953
[1] 954
[1] 955
[1] 956
[1] 957
[1] 958
[1] 959
[1] 960
[1] 961
[1] 962
[1] 963
[1] 964
[1] 965
[1] 966
> plot.fn(pos1=5, value1=.05, pos2=2, value2=15, pos3=1)
[1] 1009
[1] 1010
[1] 1011
[1] 1012
[1] 1013
[1] 1014
[1] 1015
[1] 1016
[1] 1017
[1] 1018
[1] 1019
[1] 1020
[1] 1021
[1] 1022
[1] 1023
[1] 1024
[1] 1025
[1] 1026
[1] 1027
[1] 1028
[1] 1029
> plot.fn(pos1=5, value1=.1, pos2=2, value2=3, pos3=1)
[1] 1177
[1] 1178
[1] 1179
[1] 1180
[1] 1181
[1] 1182
[1] 1183
[1] 1184
[1] 1185
[1] 1186
[1] 1187
[1] 1188
[1] 1189
[1] 1190
[1] 1191
[1] 1192
[1] 1193
[1] 1194
[1] 1195
[1] 1196
[1] 1197
> plot.fn(pos1=5, value1=.1, pos2=2, value2=9, pos3=1)
[1] 1240
[1] 1241
[1] 1242
[1] 1243
[1] 1244
[1] 1245
[1] 1246
[1] 1247
[1] 1248
[1] 1249
[1] 1250
[1] 1251
[1] 1252
[1] 1253
[1] 1254
[1] 1255
[1] 1256
[1] 1257
[1] 1258
[1] 1259
[1] 1260
> plot.fn(pos1=5, value1=.1, pos2=2, value2=15, pos3=1)
[1] 1303
[1] 1304
[1] 1305
[1] 1306
[1] 1307
[1] 1308
[1] 1309
[1] 1310
[1] 1311
[1] 1312
[1] 1313
[1] 1314
[1] 1315
[1] 1316
[1] 1317
[1] 1318
[1] 1319
[1] 1320
[1] 1321
[1] 1322
[1] 1323
> rm(list=ls(all=TRUE))
> 
> #setwd("~/Documents/GitHub/EBMAforecast/APSA_2012/Simulations")
> setwd("~/Github/EBMAforecast/APSA_2012/Simulations")
> 
> load("SecondRound")
> objects()
[1] "output"
> 
> summary(output)
     Length Class  Mode
1    11     -none- list
2    11     -none- list
3    11     -none- list
4    11     -none- list
5    11     -none- list
6    11     -none- list
7    11     -none- list
8    11     -none- list
9    11     -none- list
10   11     -none- list
11   11     -none- list
12   11     -none- list
13   11     -none- list
14   11     -none- list
15   11     -none- list
16   11     -none- list
17   11     -none- list
18   11     -none- list
19   11     -none- list
20   11     -none- list
21   11     -none- list
22   11     -none- list
23   11     -none- list
24   11     -none- list
25   11     -none- list
26   11     -none- list
27   11     -none- list
28   11     -none- list
29   11     -none- list
30   11     -none- list
31   11     -none- list
32   11     -none- list
33   11     -none- list
34   11     -none- list
35   11     -none- list
36   11     -none- list
37   11     -none- list
38   11     -none- list
39   11     -none- list
40   11     -none- list
41   11     -none- list
42   11     -none- list
43   11     -none- list
44   11     -none- list
45   11     -none- list
46   11     -none- list
47   11     -none- list
48   11     -none- list
49   11     -none- list
50   11     -none- list
51   11     -none- list
52   11     -none- list
53   11     -none- list
54   11     -none- list
55   11     -none- list
56   11     -none- list
57   11     -none- list
58   11     -none- list
59   11     -none- list
60   11     -none- list
61   11     -none- list
62   11     -none- list
63   11     -none- list
64   11     -none- list
65   11     -none- list
66   11     -none- list
67   11     -none- list
68   11     -none- list
69   11     -none- list
70   11     -none- list
71   11     -none- list
72   11     -none- list
73   11     -none- list
74   11     -none- list
75   11     -none- list
76   11     -none- list
77   11     -none- list
78   11     -none- list
79   11     -none- list
80   11     -none- list
81   11     -none- list
82   11     -none- list
83   11     -none- list
84   11     -none- list
85   11     -none- list
86   11     -none- list
87   11     -none- list
88   11     -none- list
89   11     -none- list
90   11     -none- list
91   11     -none- list
92   11     -none- list
93   11     -none- list
94   11     -none- list
95   11     -none- list
96   11     -none- list
97   11     -none- list
98   11     -none- list
99   11     -none- list
100  11     -none- list
101  11     -none- list
102  11     -none- list
103  11     -none- list
104  11     -none- list
105  11     -none- list
106  11     -none- list
107  11     -none- list
108  11     -none- list
109  11     -none- list
110  11     -none- list
111  11     -none- list
112  11     -none- list
113  11     -none- list
114  11     -none- list
115  11     -none- list
116  11     -none- list
117  11     -none- list
118  11     -none- list
119  11     -none- list
120  11     -none- list
121  11     -none- list
122  11     -none- list
123  11     -none- list
124  11     -none- list
125  11     -none- list
126  11     -none- list
127  11     -none- list
128  11     -none- list
129  11     -none- list
130  11     -none- list
131  11     -none- list
132  11     -none- list
133  11     -none- list
134  11     -none- list
135  11     -none- list
136  11     -none- list
137  11     -none- list
138  11     -none- list
139  11     -none- list
140  11     -none- list
141  11     -none- list
142  11     -none- list
143  11     -none- list
144  11     -none- list
145  11     -none- list
146  11     -none- list
147  11     -none- list
148  11     -none- list
149  11     -none- list
150  11     -none- list
151  11     -none- list
152  11     -none- list
153  11     -none- list
154  11     -none- list
155  11     -none- list
156  11     -none- list
157  11     -none- list
158  11     -none- list
159  11     -none- list
160  11     -none- list
161  11     -none- list
162  11     -none- list
163  11     -none- list
164  11     -none- list
165  11     -none- list
166  11     -none- list
167  11     -none- list
168  11     -none- list
169  11     -none- list
170  11     -none- list
171  11     -none- list
172  11     -none- list
173  11     -none- list
174  11     -none- list
175  11     -none- list
176  11     -none- list
177  11     -none- list
178  11     -none- list
179  11     -none- list
180  11     -none- list
181  11     -none- list
182  11     -none- list
183  11     -none- list
184  11     -none- list
185  11     -none- list
186  11     -none- list
187  11     -none- list
188  11     -none- list
189  11     -none- list
190  11     -none- list
191  11     -none- list
192  11     -none- list
193  11     -none- list
194  11     -none- list
195  11     -none- list
196  11     -none- list
197  11     -none- list
198  11     -none- list
199  11     -none- list
200  11     -none- list
201  11     -none- list
202  11     -none- list
203  11     -none- list
204  11     -none- list
205  11     -none- list
206  11     -none- list
207  11     -none- list
208  11     -none- list
209  11     -none- list
210  11     -none- list
211  11     -none- list
212  11     -none- list
213  11     -none- list
214  11     -none- list
215  11     -none- list
216  11     -none- list
217  11     -none- list
218  11     -none- list
219  11     -none- list
220  11     -none- list
221  11     -none- list
222  11     -none- list
223  11     -none- list
224  11     -none- list
225  11     -none- list
226  11     -none- list
227  11     -none- list
228  11     -none- list
229  11     -none- list
230  11     -none- list
231  11     -none- list
232  11     -none- list
233  11     -none- list
234  11     -none- list
235  11     -none- list
236  11     -none- list
237  11     -none- list
238  11     -none- list
239  11     -none- list
240  11     -none- list
241  11     -none- list
242  11     -none- list
243  11     -none- list
244  11     -none- list
245  11     -none- list
246  11     -none- list
247  11     -none- list
248  11     -none- list
249  11     -none- list
250  11     -none- list
251  11     -none- list
252  11     -none- list
253  11     -none- list
254  11     -none- list
255  11     -none- list
256  11     -none- list
257  11     -none- list
258  11     -none- list
259  11     -none- list
260  11     -none- list
261  11     -none- list
262  11     -none- list
263  11     -none- list
264  11     -none- list
265  11     -none- list
266  11     -none- list
267  11     -none- list
268  11     -none- list
269  11     -none- list
270  11     -none- list
271  11     -none- list
272  11     -none- list
273  11     -none- list
274  11     -none- list
275  11     -none- list
276  11     -none- list
277  11     -none- list
278  11     -none- list
279  11     -none- list
280  11     -none- list
281  11     -none- list
282  11     -none- list
283  11     -none- list
284  11     -none- list
285  11     -none- list
286  11     -none- list
287  11     -none- list
288  11     -none- list
289  11     -none- list
290  11     -none- list
291  11     -none- list
292  11     -none- list
293  11     -none- list
294  11     -none- list
295  11     -none- list
296  11     -none- list
297  11     -none- list
298  11     -none- list
299  11     -none- list
300  11     -none- list
301  11     -none- list
302  11     -none- list
303  11     -none- list
304  11     -none- list
305  11     -none- list
306  11     -none- list
307  11     -none- list
308  11     -none- list
309  11     -none- list
310  11     -none- list
311  11     -none- list
312  11     -none- list
313  11     -none- list
314  11     -none- list
315  11     -none- list
316  11     -none- list
317  11     -none- list
318  11     -none- list
319  11     -none- list
320  11     -none- list
321  11     -none- list
322  11     -none- list
323  11     -none- list
324  11     -none- list
325  11     -none- list
326  11     -none- list
327  11     -none- list
328  11     -none- list
329  11     -none- list
330  11     -none- list
331  11     -none- list
332  11     -none- list
333  11     -none- list
334  11     -none- list
335  11     -none- list
336  11     -none- list
337  11     -none- list
338  11     -none- list
339  11     -none- list
340  11     -none- list
341  11     -none- list
342  11     -none- list
343  11     -none- list
344  11     -none- list
345  11     -none- list
346  11     -none- list
347  11     -none- list
348  11     -none- list
349  11     -none- list
350  11     -none- list
351  11     -none- list
352  11     -none- list
353  11     -none- list
354  11     -none- list
355  11     -none- list
356  11     -none- list
357  11     -none- list
358  11     -none- list
359  11     -none- list
360  11     -none- list
361  11     -none- list
362  11     -none- list
363  11     -none- list
364  11     -none- list
365  11     -none- list
366  11     -none- list
367  11     -none- list
368  11     -none- list
369  11     -none- list
370  11     -none- list
371  11     -none- list
372  11     -none- list
373  11     -none- list
374  11     -none- list
375  11     -none- list
376  11     -none- list
377  11     -none- list
378  11     -none- list
379  11     -none- list
380  11     -none- list
381  11     -none- list
382  11     -none- list
383  11     -none- list
384  11     -none- list
385  11     -none- list
386  11     -none- list
387  11     -none- list
388  11     -none- list
389  11     -none- list
390  11     -none- list
391  11     -none- list
392  11     -none- list
393  11     -none- list
394  11     -none- list
395  11     -none- list
396  11     -none- list
397  11     -none- list
398  11     -none- list
399  11     -none- list
400  11     -none- list
401  11     -none- list
402  11     -none- list
403  11     -none- list
404  11     -none- list
405  11     -none- list
406  11     -none- list
407  11     -none- list
408  11     -none- list
409  11     -none- list
410  11     -none- list
411  11     -none- list
412  11     -none- list
413  11     -none- list
414  11     -none- list
415  11     -none- list
416  11     -none- list
417  11     -none- list
418  11     -none- list
419  11     -none- list
420  11     -none- list
421  11     -none- list
422  11     -none- list
423  11     -none- list
424  11     -none- list
425  11     -none- list
426  11     -none- list
427  11     -none- list
428  11     -none- list
429  11     -none- list
430  11     -none- list
431  11     -none- list
432  11     -none- list
433  11     -none- list
434  11     -none- list
435  11     -none- list
436  11     -none- list
437  11     -none- list
438  11     -none- list
439  11     -none- list
440  11     -none- list
441  11     -none- list
442  11     -none- list
443  11     -none- list
444  11     -none- list
445  11     -none- list
446  11     -none- list
447  11     -none- list
448  11     -none- list
449  11     -none- list
450  11     -none- list
451  11     -none- list
452  11     -none- list
453  11     -none- list
454  11     -none- list
455  11     -none- list
456  11     -none- list
457  11     -none- list
458  11     -none- list
459  11     -none- list
460  11     -none- list
461  11     -none- list
462  11     -none- list
463  11     -none- list
464  11     -none- list
465  11     -none- list
466  11     -none- list
467  11     -none- list
468  11     -none- list
469  11     -none- list
470  11     -none- list
471  11     -none- list
472  11     -none- list
473  11     -none- list
474  11     -none- list
475  11     -none- list
476  11     -none- list
477  11     -none- list
478  11     -none- list
479  11     -none- list
480  11     -none- list
481  11     -none- list
482  11     -none- list
483  11     -none- list
484  11     -none- list
485  11     -none- list
486  11     -none- list
487  11     -none- list
488  11     -none- list
489  11     -none- list
490  11     -none- list
491  11     -none- list
492  11     -none- list
493  11     -none- list
494  11     -none- list
495  11     -none- list
496  11     -none- list
497  11     -none- list
498  11     -none- list
499  11     -none- list
500  11     -none- list
501  11     -none- list
502  11     -none- list
503  11     -none- list
504  11     -none- list
505  11     -none- list
506  11     -none- list
507  11     -none- list
508  11     -none- list
509  11     -none- list
510  11     -none- list
511  11     -none- list
512  11     -none- list
513  11     -none- list
514  11     -none- list
515  11     -none- list
516  11     -none- list
517  11     -none- list
518  11     -none- list
519  11     -none- list
520  11     -none- list
521  11     -none- list
522  11     -none- list
523  11     -none- list
524  11     -none- list
525  11     -none- list
526  11     -none- list
527  11     -none- list
528  11     -none- list
529  11     -none- list
530  11     -none- list
531  11     -none- list
532  11     -none- list
533  11     -none- list
534  11     -none- list
535  11     -none- list
536  11     -none- list
537  11     -none- list
538  11     -none- list
539  11     -none- list
540  11     -none- list
541  11     -none- list
542  11     -none- list
543  11     -none- list
544  11     -none- list
545  11     -none- list
546  11     -none- list
547  11     -none- list
548  11     -none- list
549  11     -none- list
550  11     -none- list
551  11     -none- list
552  11     -none- list
553  11     -none- list
554  11     -none- list
555  11     -none- list
556  11     -none- list
557  11     -none- list
558  11     -none- list
559  11     -none- list
560  11     -none- list
561  11     -none- list
562  11     -none- list
563  11     -none- list
564  11     -none- list
565  11     -none- list
566  11     -none- list
567  11     -none- list
568  11     -none- list
569  11     -none- list
570  11     -none- list
571  11     -none- list
572  11     -none- list
573  11     -none- list
574  11     -none- list
575  11     -none- list
576  11     -none- list
577  11     -none- list
578  11     -none- list
579  11     -none- list
580  11     -none- list
581  11     -none- list
582  11     -none- list
583  11     -none- list
584  11     -none- list
585  11     -none- list
586  11     -none- list
587  11     -none- list
588  11     -none- list
589  11     -none- list
590  11     -none- list
591  11     -none- list
592  11     -none- list
593  11     -none- list
594  11     -none- list
595  11     -none- list
596  11     -none- list
597  11     -none- list
598  11     -none- list
599  11     -none- list
600  11     -none- list
601  11     -none- list
602  11     -none- list
603  11     -none- list
604  11     -none- list
605  11     -none- list
606  11     -none- list
607  11     -none- list
608  11     -none- list
609  11     -none- list
610  11     -none- list
611  11     -none- list
612  11     -none- list
613  11     -none- list
614  11     -none- list
615  11     -none- list
616  11     -none- list
617  11     -none- list
618  11     -none- list
619  11     -none- list
620  11     -none- list
621  11     -none- list
622  11     -none- list
623  11     -none- list
624  11     -none- list
625  11     -none- list
626  11     -none- list
627  11     -none- list
628  11     -none- list
629  11     -none- list
630  11     -none- list
631  11     -none- list
632  11     -none- list
633  11     -none- list
634  11     -none- list
635  11     -none- list
636  11     -none- list
637  11     -none- list
638  11     -none- list
639  11     -none- list
640  11     -none- list
641  11     -none- list
642  11     -none- list
643  11     -none- list
644  11     -none- list
645  11     -none- list
646  11     -none- list
647  11     -none- list
648  11     -none- list
649  11     -none- list
650  11     -none- list
651  11     -none- list
652  11     -none- list
653  11     -none- list
654  11     -none- list
655  11     -none- list
656  11     -none- list
657  11     -none- list
658  11     -none- list
659  11     -none- list
660  11     -none- list
661  11     -none- list
662  11     -none- list
663  11     -none- list
664  11     -none- list
665  11     -none- list
666  11     -none- list
667  11     -none- list
668  11     -none- list
669  11     -none- list
670  11     -none- list
671  11     -none- list
672  11     -none- list
673  11     -none- list
674  11     -none- list
675  11     -none- list
676  11     -none- list
677  11     -none- list
678  11     -none- list
679  11     -none- list
680  11     -none- list
681  11     -none- list
682  11     -none- list
683  11     -none- list
684  11     -none- list
685  11     -none- list
686  11     -none- list
687  11     -none- list
688  11     -none- list
689  11     -none- list
690  11     -none- list
691  11     -none- list
692  11     -none- list
693  11     -none- list
694  11     -none- list
695  11     -none- list
696  11     -none- list
697  11     -none- list
698  11     -none- list
699  11     -none- list
700  11     -none- list
701  11     -none- list
702  11     -none- list
703  11     -none- list
704  11     -none- list
705  11     -none- list
706  11     -none- list
707  11     -none- list
708  11     -none- list
709  11     -none- list
710  11     -none- list
711  11     -none- list
712  11     -none- list
713  11     -none- list
714  11     -none- list
715  11     -none- list
716  11     -none- list
717  11     -none- list
718  11     -none- list
719  11     -none- list
720  11     -none- list
721  11     -none- list
722  11     -none- list
723  11     -none- list
724  11     -none- list
725  11     -none- list
726  11     -none- list
727  11     -none- list
728  11     -none- list
729  11     -none- list
730  11     -none- list
731  11     -none- list
732  11     -none- list
733  11     -none- list
734  11     -none- list
735  11     -none- list
736  11     -none- list
737  11     -none- list
738  11     -none- list
739  11     -none- list
740  11     -none- list
741  11     -none- list
742  11     -none- list
743  11     -none- list
744  11     -none- list
745  11     -none- list
746  11     -none- list
747  11     -none- list
748  11     -none- list
749  11     -none- list
750  11     -none- list
751  11     -none- list
752  11     -none- list
753  11     -none- list
754  11     -none- list
755  11     -none- list
756  11     -none- list
757  11     -none- list
758  11     -none- list
759  11     -none- list
760  11     -none- list
761  11     -none- list
762  11     -none- list
763  11     -none- list
764  11     -none- list
765  11     -none- list
766  11     -none- list
767  11     -none- list
768  11     -none- list
769  11     -none- list
770  11     -none- list
771  11     -none- list
772  11     -none- list
773  11     -none- list
774  11     -none- list
775  11     -none- list
776  11     -none- list
777  11     -none- list
778  11     -none- list
779  11     -none- list
780  11     -none- list
781  11     -none- list
782  11     -none- list
783  11     -none- list
784  11     -none- list
785  11     -none- list
786  11     -none- list
787  11     -none- list
788  11     -none- list
789  11     -none- list
790  11     -none- list
791  11     -none- list
792  11     -none- list
793  11     -none- list
794  11     -none- list
795  11     -none- list
796  11     -none- list
797  11     -none- list
798  11     -none- list
799  11     -none- list
800  11     -none- list
801  11     -none- list
802  11     -none- list
803  11     -none- list
804  11     -none- list
805  11     -none- list
806  11     -none- list
807  11     -none- list
808  11     -none- list
809  11     -none- list
810  11     -none- list
811  11     -none- list
812  11     -none- list
813  11     -none- list
814  11     -none- list
815  11     -none- list
816  11     -none- list
817  11     -none- list
818  11     -none- list
819  11     -none- list
820  11     -none- list
821  11     -none- list
822  11     -none- list
823  11     -none- list
824  11     -none- list
825  11     -none- list
826  11     -none- list
827  11     -none- list
828  11     -none- list
829  11     -none- list
830  11     -none- list
831  11     -none- list
832  11     -none- list
833  11     -none- list
834  11     -none- list
835  11     -none- list
836  11     -none- list
837  11     -none- list
838  11     -none- list
839  11     -none- list
840  11     -none- list
841  11     -none- list
842  11     -none- list
843  11     -none- list
844  11     -none- list
845  11     -none- list
846  11     -none- list
847  11     -none- list
848  11     -none- list
849  11     -none- list
850  11     -none- list
851  11     -none- list
852  11     -none- list
853  11     -none- list
854  11     -none- list
855  11     -none- list
856  11     -none- list
857  11     -none- list
858  11     -none- list
859  11     -none- list
860  11     -none- list
861  11     -none- list
862  11     -none- list
863  11     -none- list
864  11     -none- list
865  11     -none- list
866  11     -none- list
867  11     -none- list
868  11     -none- list
869  11     -none- list
870  11     -none- list
871  11     -none- list
872  11     -none- list
873  11     -none- list
874  11     -none- list
875  11     -none- list
876  11     -none- list
877  11     -none- list
878  11     -none- list
879  11     -none- list
880  11     -none- list
881  11     -none- list
882  11     -none- list
883  11     -none- list
884  11     -none- list
885  11     -none- list
886  11     -none- list
887  11     -none- list
888  11     -none- list
889  11     -none- list
890  11     -none- list
891  11     -none- list
892  11     -none- list
893  11     -none- list
894  11     -none- list
895  11     -none- list
896  11     -none- list
897  11     -none- list
898  11     -none- list
899  11     -none- list
900  11     -none- list
901  11     -none- list
902  11     -none- list
903  11     -none- list
904  11     -none- list
905  11     -none- list
906  11     -none- list
907  11     -none- list
908  11     -none- list
909  11     -none- list
910  11     -none- list
911  11     -none- list
912  11     -none- list
913  11     -none- list
914  11     -none- list
915  11     -none- list
916  11     -none- list
917  11     -none- list
918  11     -none- list
919  11     -none- list
920  11     -none- list
921  11     -none- list
922  11     -none- list
923  11     -none- list
924  11     -none- list
925  11     -none- list
926  11     -none- list
927  11     -none- list
928  11     -none- list
929  11     -none- list
930  11     -none- list
931  11     -none- list
932  11     -none- list
933  11     -none- list
934  11     -none- list
935  11     -none- list
936  11     -none- list
937  11     -none- list
938  11     -none- list
939  11     -none- list
940  11     -none- list
941  11     -none- list
942  11     -none- list
943  11     -none- list
944  11     -none- list
945  11     -none- list
946  11     -none- list
947  11     -none- list
948  11     -none- list
949  11     -none- list
950  11     -none- list
951  11     -none- list
952  11     -none- list
953  11     -none- list
954  11     -none- list
955  11     -none- list
956  11     -none- list
957  11     -none- list
958  11     -none- list
959  11     -none- list
960  11     -none- list
961  11     -none- list
962  11     -none- list
963  11     -none- list
964  11     -none- list
965  11     -none- list
966  11     -none- list
967  11     -none- list
968  11     -none- list
969  11     -none- list
970  11     -none- list
971  11     -none- list
972  11     -none- list
973  11     -none- list
974  11     -none- list
975  11     -none- list
976  11     -none- list
977  11     -none- list
978  11     -none- list
979  11     -none- list
980  11     -none- list
981  11     -none- list
982  11     -none- list
983  11     -none- list
984  11     -none- list
985  11     -none- list
986  11     -none- list
987  11     -none- list
988  11     -none- list
989  11     -none- list
990  11     -none- list
991  11     -none- list
992  11     -none- list
993  11     -none- list
994  11     -none- list
995  11     -none- list
996  11     -none- list
997  11     -none- list
998  11     -none- list
999  11     -none- list
1000 11     -none- list
1001 11     -none- list
1002 11     -none- list
1003 11     -none- list
1004 11     -none- list
1005 11     -none- list
1006 11     -none- list
1007 11     -none- list
1008 11     -none- list
1009 11     -none- list
1010 11     -none- list
1011 11     -none- list
1012 11     -none- list
1013 11     -none- list
1014 11     -none- list
1015 11     -none- list
1016 11     -none- list
1017 11     -none- list
1018 11     -none- list
1019 11     -none- list
1020 11     -none- list
1021 11     -none- list
1022 11     -none- list
1023 11     -none- list
1024 11     -none- list
1025 11     -none- list
1026 11     -none- list
1027 11     -none- list
1028 11     -none- list
1029 11     -none- list
1030 11     -none- list
1031 11     -none- list
1032 11     -none- list
1033 11     -none- list
1034 11     -none- list
1035 11     -none- list
1036 11     -none- list
1037 11     -none- list
1038 11     -none- list
1039 11     -none- list
1040 11     -none- list
1041 11     -none- list
1042 11     -none- list
1043 11     -none- list
1044 11     -none- list
1045 11     -none- list
1046 11     -none- list
1047 11     -none- list
1048 11     -none- list
1049 11     -none- list
1050 11     -none- list
1051 11     -none- list
1052 11     -none- list
1053 11     -none- list
1054 11     -none- list
1055 11     -none- list
1056 11     -none- list
1057 11     -none- list
1058 11     -none- list
1059 11     -none- list
1060 11     -none- list
1061 11     -none- list
1062 11     -none- list
1063 11     -none- list
1064 11     -none- list
1065 11     -none- list
1066 11     -none- list
1067 11     -none- list
1068 11     -none- list
1069 11     -none- list
1070 11     -none- list
1071 11     -none- list
1072 11     -none- list
1073 11     -none- list
1074 11     -none- list
1075 11     -none- list
1076 11     -none- list
1077 11     -none- list
1078 11     -none- list
1079 11     -none- list
1080 11     -none- list
1081 11     -none- list
1082 11     -none- list
1083 11     -none- list
1084 11     -none- list
1085 11     -none- list
1086 11     -none- list
1087 11     -none- list
1088 11     -none- list
1089 11     -none- list
1090 11     -none- list
1091 11     -none- list
1092 11     -none- list
1093 11     -none- list
1094 11     -none- list
1095 11     -none- list
1096 11     -none- list
1097 11     -none- list
1098 11     -none- list
1099 11     -none- list
1100 11     -none- list
1101 11     -none- list
1102 11     -none- list
1103 11     -none- list
1104 11     -none- list
1105 11     -none- list
1106 11     -none- list
1107 11     -none- list
1108 11     -none- list
1109 11     -none- list
1110 11     -none- list
1111 11     -none- list
1112 11     -none- list
1113 11     -none- list
1114 11     -none- list
1115 11     -none- list
1116 11     -none- list
1117 11     -none- list
1118 11     -none- list
1119 11     -none- list
1120 11     -none- list
1121 11     -none- list
1122 11     -none- list
1123 11     -none- list
1124 11     -none- list
1125 11     -none- list
1126 11     -none- list
1127 11     -none- list
1128 11     -none- list
1129 11     -none- list
1130 11     -none- list
1131 11     -none- list
1132 11     -none- list
1133 11     -none- list
1134 11     -none- list
1135 11     -none- list
1136 11     -none- list
1137 11     -none- list
1138 11     -none- list
1139 11     -none- list
1140 11     -none- list
1141 11     -none- list
1142 11     -none- list
1143 11     -none- list
1144 11     -none- list
1145 11     -none- list
1146 11     -none- list
1147 11     -none- list
1148 11     -none- list
1149 11     -none- list
1150 11     -none- list
1151 11     -none- list
1152 11     -none- list
1153 11     -none- list
1154 11     -none- list
1155 11     -none- list
1156 11     -none- list
1157 11     -none- list
1158 11     -none- list
1159 11     -none- list
1160 11     -none- list
1161 11     -none- list
1162 11     -none- list
1163 11     -none- list
1164 11     -none- list
1165 11     -none- list
1166 11     -none- list
1167 11     -none- list
1168 11     -none- list
1169 11     -none- list
1170 11     -none- list
1171 11     -none- list
1172 11     -none- list
1173 11     -none- list
1174 11     -none- list
1175 11     -none- list
1176 11     -none- list
1177 11     -none- list
1178 11     -none- list
1179 11     -none- list
1180 11     -none- list
1181 11     -none- list
1182 11     -none- list
1183 11     -none- list
1184 11     -none- list
1185 11     -none- list
1186 11     -none- list
1187 11     -none- list
1188 11     -none- list
1189 11     -none- list
1190 11     -none- list
1191 11     -none- list
1192 11     -none- list
1193 11     -none- list
1194 11     -none- list
1195 11     -none- list
1196 11     -none- list
1197 11     -none- list
1198 11     -none- list
1199 11     -none- list
1200 11     -none- list
1201 11     -none- list
1202 11     -none- list
1203 11     -none- list
1204 11     -none- list
1205 11     -none- list
1206 11     -none- list
1207 11     -none- list
1208 11     -none- list
1209 11     -none- list
1210 11     -none- list
1211 11     -none- list
1212 11     -none- list
1213 11     -none- list
1214 11     -none- list
1215 11     -none- list
1216 11     -none- list
1217 11     -none- list
1218 11     -none- list
1219 11     -none- list
1220 11     -none- list
1221 11     -none- list
1222 11     -none- list
1223 11     -none- list
1224 11     -none- list
1225 11     -none- list
1226 11     -none- list
1227 11     -none- list
1228 11     -none- list
1229 11     -none- list
1230 11     -none- list
1231 11     -none- list
1232 11     -none- list
1233 11     -none- list
1234 11     -none- list
1235 11     -none- list
1236 11     -none- list
1237 11     -none- list
1238 11     -none- list
1239 11     -none- list
1240 11     -none- list
1241 11     -none- list
1242 11     -none- list
1243 11     -none- list
1244 11     -none- list
1245 11     -none- list
1246 11     -none- list
1247 11     -none- list
1248 11     -none- list
1249 11     -none- list
1250 11     -none- list
1251 11     -none- list
1252 11     -none- list
1253 11     -none- list
1254 11     -none- list
1255 11     -none- list
1256 11     -none- list
1257 11     -none- list
1258 11     -none- list
1259 11     -none- list
1260 11     -none- list
1261 11     -none- list
1262 11     -none- list
1263 11     -none- list
1264 11     -none- list
1265 11     -none- list
1266 11     -none- list
1267 11     -none- list
1268 11     -none- list
1269 11     -none- list
1270 11     -none- list
1271 11     -none- list
1272 11     -none- list
1273 11     -none- list
1274 11     -none- list
1275 11     -none- list
1276 11     -none- list
1277 11     -none- list
1278 11     -none- list
1279 11     -none- list
1280 11     -none- list
1281 11     -none- list
1282 11     -none- list
1283 11     -none- list
1284 11     -none- list
1285 11     -none- list
1286 11     -none- list
1287 11     -none- list
1288 11     -none- list
1289 11     -none- list
1290 11     -none- list
1291 11     -none- list
1292 11     -none- list
1293 11     -none- list
1294 11     -none- list
1295 11     -none- list
1296 11     -none- list
1297 11     -none- list
1298 11     -none- list
1299 11     -none- list
1300 11     -none- list
1301 11     -none- list
1302 11     -none- list
1303 11     -none- list
1304 11     -none- list
1305 11     -none- list
1306 11     -none- list
1307 11     -none- list
1308 11     -none- list
1309 11     -none- list
1310 11     -none- list
1311 11     -none- list
1312 11     -none- list
1313 11     -none- list
1314 11     -none- list
1315 11     -none- list
1316 11     -none- list
1317 11     -none- list
1318 11     -none- list
1319 11     -none- list
1320 11     -none- list
1321 11     -none- list
1322 11     -none- list
1323 11     -none- list
1324 11     -none- list
1325 11     -none- list
1326 11     -none- list
1327 11     -none- list
1328 11     -none- list
1329 11     -none- list
1330 11     -none- list
1331 11     -none- list
1332 11     -none- list
1333 11     -none- list
1334 11     -none- list
1335 11     -none- list
1336 11     -none- list
1337 11     -none- list
1338 11     -none- list
1339 11     -none- list
1340 11     -none- list
1341 11     -none- list
1342 11     -none- list
1343 11     -none- list
1344 11     -none- list
1345 11     -none- list
1346 11     -none- list
1347 11     -none- list
1348 11     -none- list
1349 11     -none- list
1350 11     -none- list
1351 11     -none- list
1352 11     -none- list
1353 11     -none- list
1354 11     -none- list
1355 11     -none- list
1356 11     -none- list
1357 11     -none- list
1358 11     -none- list
1359 11     -none- list
1360 11     -none- list
1361 11     -none- list
1362 11     -none- list
1363 11     -none- list
1364 11     -none- list
1365 11     -none- list
1366 11     -none- list
1367 11     -none- list
1368 11     -none- list
1369 11     -none- list
1370 11     -none- list
1371 11     -none- list
1372 11     -none- list
1373 11     -none- list
1374 11     -none- list
1375 11     -none- list
1376 11     -none- list
1377 11     -none- list
1378 11     -none- list
1379 11     -none- list
1380 11     -none- list
1381 11     -none- list
1382 11     -none- list
1383 11     -none- list
1384 11     -none- list
1385 11     -none- list
1386 11     -none- list
1387 11     -none- list
1388 11     -none- list
1389 11     -none- list
1390 11     -none- list
1391 11     -none- list
1392 11     -none- list
1393 11     -none- list
1394 11     -none- list
1395 11     -none- list
1396 11     -none- list
1397 11     -none- list
1398 11     -none- list
1399 11     -none- list
1400 11     -none- list
1401 11     -none- list
1402 11     -none- list
1403 11     -none- list
1404 11     -none- list
1405 11     -none- list
1406 11     -none- list
1407 11     -none- list
1408 11     -none- list
1409 11     -none- list
1410 11     -none- list
1411 11     -none- list
1412 11     -none- list
1413 11     -none- list
1414 11     -none- list
1415 11     -none- list
1416 11     -none- list
1417 11     -none- list
1418 11     -none- list
1419 11     -none- list
1420 11     -none- list
1421 11     -none- list
1422 11     -none- list
1423 11     -none- list
1424 11     -none- list
1425 11     -none- list
1426 11     -none- list
1427 11     -none- list
1428 11     -none- list
1429 11     -none- list
1430 11     -none- list
1431 11     -none- list
1432 11     -none- list
1433 11     -none- list
1434 11     -none- list
1435 11     -none- list
1436 11     -none- list
1437 11     -none- list
1438 11     -none- list
1439 11     -none- list
1440 11     -none- list
1441 11     -none- list
1442 11     -none- list
1443 11     -none- list
1444 11     -none- list
1445 11     -none- list
1446 11     -none- list
1447 11     -none- list
1448 11     -none- list
1449 11     -none- list
1450 11     -none- list
1451 11     -none- list
1452 11     -none- list
1453 11     -none- list
1454 11     -none- list
1455 11     -none- list
1456 11     -none- list
1457 11     -none- list
1458 11     -none- list
1459 11     -none- list
1460 11     -none- list
1461 11     -none- list
1462 11     -none- list
1463 11     -none- list
1464 11     -none- list
1465 11     -none- list
1466 11     -none- list
1467 11     -none- list
1468 11     -none- list
1469 11     -none- list
1470 11     -none- list
1471 11     -none- list
1472 11     -none- list
1473 11     -none- list
1474 11     -none- list
1475 11     -none- list
1476 11     -none- list
1477 11     -none- list
1478 11     -none- list
1479 11     -none- list
1480 11     -none- list
1481 11     -none- list
1482 11     -none- list
1483 11     -none- list
1484 11     -none- list
1485 11     -none- list
1486 11     -none- list
1487 11     -none- list
1488 11     -none- list
1489 11     -none- list
1490 11     -none- list
1491 11     -none- list
1492 11     -none- list
1493 11     -none- list
1494 11     -none- list
1495 11     -none- list
1496 11     -none- list
1497 11     -none- list
1498 11     -none- list
1499 11     -none- list
1500 11     -none- list
1501 11     -none- list
1502 11     -none- list
1503 11     -none- list
1504 11     -none- list
1505 11     -none- list
1506 11     -none- list
1507 11     -none- list
1508 11     -none- list
1509 11     -none- list
1510 11     -none- list
1511 11     -none- list
1512 11     -none- list
1513 11     -none- list
1514 11     -none- list
1515 11     -none- list
1516 11     -none- list
1517 11     -none- list
1518 11     -none- list
1519 11     -none- list
1520 11     -none- list
1521 11     -none- list
1522 11     -none- list
1523 11     -none- list
1524 11     -none- list
1525 11     -none- list
1526 11     -none- list
1527 11     -none- list
1528 11     -none- list
1529 11     -none- list
1530 11     -none- list
1531 11     -none- list
1532 11     -none- list
1533 11     -none- list
1534 11     -none- list
1535 11     -none- list
1536 11     -none- list
1537 11     -none- list
1538 11     -none- list
1539 11     -none- list
1540 11     -none- list
1541 11     -none- list
1542 11     -none- list
1543 11     -none- list
1544 11     -none- list
1545 11     -none- list
1546 11     -none- list
1547 11     -none- list
1548 11     -none- list
1549 11     -none- list
1550 11     -none- list
1551 11     -none- list
1552 11     -none- list
1553 11     -none- list
1554 11     -none- list
1555 11     -none- list
1556 11     -none- list
1557 11     -none- list
1558 11     -none- list
1559 11     -none- list
1560 11     -none- list
1561 11     -none- list
1562 11     -none- list
1563 11     -none- list
1564 11     -none- list
1565 11     -none- list
1566 11     -none- list
1567 11     -none- list
1568 11     -none- list
1569 11     -none- list
1570 11     -none- list
1571 11     -none- list
1572 11     -none- list
1573 11     -none- list
1574 11     -none- list
1575 11     -none- list
1576 11     -none- list
1577 11     -none- list
1578 11     -none- list
1579 11     -none- list
1580 11     -none- list
1581 11     -none- list
1582 11     -none- list
1583 11     -none- list
1584 11     -none- list
1585 11     -none- list
1586 11     -none- list
1587 11     -none- list
1588 11     -none- list
1589 11     -none- list
1590 11     -none- list
1591 11     -none- list
1592 11     -none- list
1593 11     -none- list
1594 11     -none- list
1595 11     -none- list
1596 11     -none- list
1597 11     -none- list
1598 11     -none- list
1599 11     -none- list
1600 11     -none- list
1601 11     -none- list
1602 11     -none- list
1603 11     -none- list
1604 11     -none- list
1605 11     -none- list
1606 11     -none- list
1607 11     -none- list
1608 11     -none- list
1609 11     -none- list
1610 11     -none- list
1611 11     -none- list
1612 11     -none- list
1613 11     -none- list
1614 11     -none- list
1615 11     -none- list
1616 11     -none- list
1617 11     -none- list
1618 11     -none- list
1619 11     -none- list
1620 11     -none- list
1621 11     -none- list
1622 11     -none- list
1623 11     -none- list
1624 11     -none- list
1625 11     -none- list
1626 11     -none- list
1627 11     -none- list
1628 11     -none- list
1629 11     -none- list
1630 11     -none- list
1631 11     -none- list
1632 11     -none- list
1633 11     -none- list
1634 11     -none- list
1635 11     -none- list
1636 11     -none- list
1637 11     -none- list
1638 11     -none- list
1639 11     -none- list
1640 11     -none- list
1641 11     -none- list
1642 11     -none- list
1643 11     -none- list
1644 11     -none- list
1645 11     -none- list
1646 11     -none- list
1647 11     -none- list
1648 11     -none- list
1649 11     -none- list
1650 11     -none- list
1651 11     -none- list
1652 11     -none- list
1653 11     -none- list
1654 11     -none- list
1655 11     -none- list
1656 11     -none- list
1657 11     -none- list
1658 11     -none- list
1659 11     -none- list
1660 11     -none- list
1661 11     -none- list
1662 11     -none- list
1663 11     -none- list
1664 11     -none- list
1665 11     -none- list
1666 11     -none- list
1667 11     -none- list
1668 11     -none- list
1669 11     -none- list
1670 11     -none- list
1671 11     -none- list
1672 11     -none- list
1673 11     -none- list
1674 11     -none- list
1675 11     -none- list
1676 11     -none- list
1677 11     -none- list
1678 11     -none- list
1679 11     -none- list
1680 11     -none- list
1681 11     -none- list
1682 11     -none- list
1683 11     -none- list
1684 11     -none- list
1685 11     -none- list
1686 11     -none- list
1687 11     -none- list
1688 11     -none- list
1689 11     -none- list
1690 11     -none- list
1691 11     -none- list
1692 11     -none- list
1693 11     -none- list
1694 11     -none- list
1695 11     -none- list
1696 11     -none- list
1697 11     -none- list
1698 11     -none- list
1699 11     -none- list
1700 11     -none- list
1701 11     -none- list
1702 11     -none- list
1703 11     -none- list
1704 11     -none- list
1705 11     -none- list
1706 11     -none- list
1707 11     -none- list
1708 11     -none- list
1709 11     -none- list
1710 11     -none- list
1711 11     -none- list
1712 11     -none- list
1713 11     -none- list
1714 11     -none- list
1715 11     -none- list
1716 11     -none- list
1717 11     -none- list
1718 11     -none- list
1719 11     -none- list
1720 11     -none- list
1721 11     -none- list
1722 11     -none- list
1723 11     -none- list
1724 11     -none- list
1725 11     -none- list
1726 11     -none- list
1727 11     -none- list
1728 11     -none- list
1729 11     -none- list
1730 11     -none- list
1731 11     -none- list
1732 11     -none- list
1733 11     -none- list
1734 11     -none- list
1735 11     -none- list
1736 11     -none- list
1737 11     -none- list
1738 11     -none- list
1739 11     -none- list
1740 11     -none- list
1741 11     -none- list
1742 11     -none- list
1743 11     -none- list
1744 11     -none- list
1745 11     -none- list
1746 11     -none- list
1747 11     -none- list
1748 11     -none- list
1749 11     -none- list
1750 11     -none- list
1751 11     -none- list
1752 11     -none- list
1753 11     -none- list
1754 11     -none- list
1755 11     -none- list
1756 11     -none- list
1757 11     -none- list
1758 11     -none- list
1759 11     -none- list
1760 11     -none- list
1761 11     -none- list
1762 11     -none- list
1763 11     -none- list
1764 11     -none- list
1765 11     -none- list
1766 11     -none- list
1767 11     -none- list
1768 11     -none- list
1769 11     -none- list
1770 11     -none- list
1771 11     -none- list
1772 11     -none- list
1773 11     -none- list
1774 11     -none- list
1775 11     -none- list
1776 11     -none- list
1777 11     -none- list
1778 11     -none- list
1779 11     -none- list
1780 11     -none- list
1781 11     -none- list
1782 11     -none- list
1783 11     -none- list
1784 11     -none- list
1785 11     -none- list
1786 11     -none- list
1787 11     -none- list
1788 11     -none- list
1789 11     -none- list
1790 11     -none- list
1791 11     -none- list
1792 11     -none- list
1793 11     -none- list
1794 11     -none- list
1795 11     -none- list
1796 11     -none- list
1797 11     -none- list
1798 11     -none- list
1799 11     -none- list
1800 11     -none- list
1801 11     -none- list
1802 11     -none- list
1803 11     -none- list
1804 11     -none- list
1805 11     -none- list
1806 11     -none- list
1807 11     -none- list
1808 11     -none- list
1809 11     -none- list
1810 11     -none- list
1811 11     -none- list
1812 11     -none- list
1813 11     -none- list
1814 11     -none- list
1815 11     -none- list
1816 11     -none- list
1817 11     -none- list
1818 11     -none- list
1819 11     -none- list
1820 11     -none- list
1821 11     -none- list
1822 11     -none- list
1823 11     -none- list
1824 11     -none- list
1825 11     -none- list
1826 11     -none- list
1827 11     -none- list
1828 11     -none- list
1829 11     -none- list
1830 11     -none- list
1831 11     -none- list
1832 11     -none- list
1833 11     -none- list
1834 11     -none- list
1835 11     -none- list
1836 11     -none- list
1837 11     -none- list
1838 11     -none- list
1839 11     -none- list
1840 11     -none- list
1841 11     -none- list
1842 11     -none- list
1843 11     -none- list
1844 11     -none- list
1845 11     -none- list
1846 11     -none- list
1847 11     -none- list
1848 11     -none- list
1849 11     -none- list
1850 11     -none- list
1851 11     -none- list
1852 11     -none- list
1853 11     -none- list
1854 11     -none- list
1855 11     -none- list
1856 11     -none- list
1857 11     -none- list
1858 11     -none- list
1859 11     -none- list
1860 11     -none- list
1861 11     -none- list
1862 11     -none- list
1863 11     -none- list
1864 11     -none- list
1865 11     -none- list
1866 11     -none- list
1867 11     -none- list
1868 11     -none- list
1869 11     -none- list
1870 11     -none- list
1871 11     -none- list
1872 11     -none- list
1873 11     -none- list
1874 11     -none- list
1875 11     -none- list
1876 11     -none- list
1877 11     -none- list
1878 11     -none- list
1879 11     -none- list
1880 11     -none- list
1881 11     -none- list
1882 11     -none- list
1883 11     -none- list
1884 11     -none- list
1885 11     -none- list
1886 11     -none- list
1887 11     -none- list
1888 11     -none- list
1889 11     -none- list
1890 11     -none- list
1891 11     -none- list
1892 11     -none- list
1893 11     -none- list
1894 11     -none- list
1895 11     -none- list
1896 11     -none- list
1897 11     -none- list
1898 11     -none- list
1899 11     -none- list
1900 11     -none- list
1901 11     -none- list
1902 11     -none- list
1903 11     -none- list
1904 11     -none- list
1905 11     -none- list
1906 11     -none- list
1907 11     -none- list
1908 11     -none- list
1909 11     -none- list
1910 11     -none- list
1911 11     -none- list
> 
> 
> ##### here is the function that plots seven points with a lowes line for each statistic
> plot.fn<-function(pos1=1, value1=5, pos2=2,value2=5,pos3=5,func="med"){
+ 
+ 
+ #pos1=5; value1=0; pos2=2; value2=5; pos3=2
+ 
+ # alpha<-c(10,5,3)
+ #  if (models>3){alpha<-c(alpha, rep(1, models-3))}
+ # a.mean <- alpha/sum(alpha) # ?
+   
+ 
+ slots<-NA
+ count<-0
+ for(i in 1:1911){
+  if(output[[i]]$theseParams[pos1]==value1 & output[[i]]$theseParams[pos2]==value2){
+  count<-count+1
+  slots[count]<-i} 
+  }
+ error.mat<-mae.mat<-rmse.mat<-mad.mat<-rmsle.mat <- mape.mat <- meape.mat <- mrae.mat <- pw.mat <- crps.mat <- matrix(NA,nrow=length(slots),ncol=100)
+ 
+ x.axis <- rep(NA, length(slots))
+ count <- 1
+ for(i in slots){
+   print(i)
+   x.axis[count] <- output[[i]]$theseParams[pos3]
+   count <- count+1
+ }
+ 
+ for(i in slots){
+  count<-which(slots==i)
+         errror.all.mat<-abs(output[[i]]$error)#%*%a.mean
+  #error.all.mat<-rowSums(abs(output[[i]]$error))
+  error.mat[count,]<-output[[i]]$error[,1]
+  rmse.mat[count,]<-output[[i]]$pred.rmse[,"EBMA"]
+  mae.mat[count,]<-output[[i]]$pred.mae[,"EBMA"]
+         mad.mat[count,]<-output[[i]]$pred.mad[,"EBMA"]
+         rmsle.mat[count,] <- output[[i]]$pred.rmsle[,"EBMA"]
+         mape.mat[count,] <- output[[i]]$pred.mape[,"EBMA"]
+         meape.mat[count,] <- output[[i]]$pred.meape[,"EBMA"]
+         mrae.mat[count,] <- output[[i]]$pred.mrae[,"EBMA"]
+         pw.mat[count,] <- output[[i]]$pred.pw[,"EBMA"]
+         crps.mat[count,] <- output[[i]]$model.crps
+ }
+ 
+ if(func=="med"){
+  error.all<-apply(abs(error.mat),1,FUN=median,na.rm=TRUE)
+  error<-(apply(error.mat,1,FUN=median, na.rm=TRUE))
+  rmse<-abs(apply(rmse.mat,1,FUN=median, na.rm=TRUE))
+  mae<-abs(apply(mae.mat,1,FUN=median, na.rm=TRUE))
+        mad<-abs(apply(mad.mat,1,FUN=median, na.rm=TRUE))
+         rmsle<-abs(apply(rmsle.mat,1,FUN=median, na.rm=TRUE))
+         mape<-abs(apply(mape.mat,1,FUN=median, na.rm=TRUE))
+         meape<-abs(apply(meape.mat,1,FUN=median, na.rm=TRUE))
+         mrae<-abs(apply(mrae.mat,1,FUN=median, na.rm=TRUE))
+         pw<-abs(apply(pw.mat,1,FUN=median, na.rm=TRUE))
+         crps<-abs(apply(crps.mat,1,FUN=median, na.rm=TRUE))
+       }
+ 
+ if(func=="mea"){
+  error.all<-apply(abs(error.mat),1,FUN=mean,na.rm=TRUE)
+  error<-(apply(error.mat,1,FUN=mean, na.rm=TRUE))
+  rmse<-abs(apply(rmse.mat,1,FUN=mean, na.rm=TRUE))
+  mae<-abs(apply(mae.mat,1,FUN=mean, na.rm=TRUE))
+        mad<-abs(apply(mad.mat,1,FUN=mean, na.rm=TRUE))
+         rmsle<-abs(apply(rmsle.mat,1,FUN=mean, na.rm=TRUE))
+         mape<-abs(apply(mape.mat,1,FUN=mean, na.rm=TRUE))
+         meape<-abs(apply(meape.mat,1,FUN=mean, na.rm=TRUE))
+         mrae<-abs(apply(mrae.mat,1,FUN=mean, na.rm=TRUE))
+         pw<-abs(apply(pw.mat,1,FUN=mean, na.rm=TRUE))
+         crps<-abs(apply(crps.mat,1,FUN=mean, na.rm=TRUE))
+       }
+ 
+ 
+ 
+ 
+ plot(x.axis, crps)
+  
+ 
+ #par(mfrow=c(3,3))
+ #plot(c,error.all,pch=15,main="Weighted Weight Error (all)")
+ #lines(loess(error.all~c))
+ #plot(c,error,pch=15,main="Weight Error (largest weight model)")
+ #abline(h=0)
+ #lines(loess(error~c))
+ #plot(c,crps,pch=15,main="CRPS")
+ #lines(loess(crps~c))
+ #plot(c,mae,pch=15,main="MAE")
+ #lines(loess(mae~c))
+ #plot(c,rmse,pch=15,main="RMSE")
+ #lines(loess(rmse~c))
+ #plot(c,mape,pch=15,main="MAPE")
+ #lines(loess(mape~c))
+ #plot(c,meape,pch=15,main="MEAPE")
+ #lines(loess(meape~c))
+ #plot(c,mrae,pch=15,main="MRAE")
+ #lines(loess(mrae~c))
+ #plot(c,pw,pch=15,main="PW")
+ #lines(loess(pw~c))
+ 
+ 
+ 
+ }
> 
> 
> 
> par(mfrow=c(3,3))
> plot.fn(pos1=5, value1=0, pos2=2, value2=3, pos3=1)
[1] 1
[1] 2
[1] 3
[1] 4
[1] 5
[1] 6
[1] 7
[1] 8
[1] 9
[1] 10
[1] 11
[1] 12
[1] 13
[1] 14
[1] 15
[1] 16
[1] 17
[1] 18
[1] 19
[1] 20
[1] 21
> plot.fn(pos1=5, value1=0, pos2=2, value2=9, pos3=1)
[1] 64
[1] 65
[1] 66
[1] 67
[1] 68
[1] 69
[1] 70
[1] 71
[1] 72
[1] 73
[1] 74
[1] 75
[1] 76
[1] 77
[1] 78
[1] 79
[1] 80
[1] 81
[1] 82
[1] 83
[1] 84
> plot.fn(pos1=5, value1=0, pos2=2, value2=15, pos3=1)
[1] 127
[1] 128
[1] 129
[1] 130
[1] 131
[1] 132
[1] 133
[1] 134
[1] 135
[1] 136
[1] 137
[1] 138
[1] 139
[1] 140
[1] 141
[1] 142
[1] 143
[1] 144
[1] 145
[1] 146
[1] 147
> 
> 
> #nTrain<-c(3:15,20,25,35,45,55,65,85,100)
> #nmod<-seq(3,15, by=2)
> #constant<-c(0,.01, 0.02,.025, 0.03, 0.04, .05, 0.075, 0.1, 0.15, 0.2, 0.3, .5)
> #iter<-100
> #outSample<-250
> rm(list=ls())
> rm(list=ls())
> rm(list=ls(all=TRUE))
> 
> #setwd("~/Documents/GitHub/EBMAforecast/APSA_2012/Simulations")
> setwd("~/Github/EBMAforecast/APSA_2012/Simulations")
> 
> load("SecondRound")
> objects()
[1] "output"
> 
> summary(output)
     Length Class  Mode
1    11     -none- list
2    11     -none- list
3    11     -none- list
4    11     -none- list
5    11     -none- list
6    11     -none- list
7    11     -none- list
8    11     -none- list
9    11     -none- list
10   11     -none- list
11   11     -none- list
12   11     -none- list
13   11     -none- list
14   11     -none- list
15   11     -none- list
16   11     -none- list
17   11     -none- list
18   11     -none- list
19   11     -none- list
20   11     -none- list
21   11     -none- list
22   11     -none- list
23   11     -none- list
24   11     -none- list
25   11     -none- list
26   11     -none- list
27   11     -none- list
28   11     -none- list
29   11     -none- list
30   11     -none- list
31   11     -none- list
32   11     -none- list
33   11     -none- list
34   11     -none- list
35   11     -none- list
36   11     -none- list
37   11     -none- list
38   11     -none- list
39   11     -none- list
40   11     -none- list
41   11     -none- list
42   11     -none- list
43   11     -none- list
44   11     -none- list
45   11     -none- list
46   11     -none- list
47   11     -none- list
48   11     -none- list
49   11     -none- list
50   11     -none- list
51   11     -none- list
52   11     -none- list
53   11     -none- list
54   11     -none- list
55   11     -none- list
56   11     -none- list
57   11     -none- list
58   11     -none- list
59   11     -none- list
60   11     -none- list
61   11     -none- list
62   11     -none- list
63   11     -none- list
64   11     -none- list
65   11     -none- list
66   11     -none- list
67   11     -none- list
68   11     -none- list
69   11     -none- list
70   11     -none- list
71   11     -none- list
72   11     -none- list
73   11     -none- list
74   11     -none- list
75   11     -none- list
76   11     -none- list
77   11     -none- list
78   11     -none- list
79   11     -none- list
80   11     -none- list
81   11     -none- list
82   11     -none- list
83   11     -none- list
84   11     -none- list
85   11     -none- list
86   11     -none- list
87   11     -none- list
88   11     -none- list
89   11     -none- list
90   11     -none- list
91   11     -none- list
92   11     -none- list
93   11     -none- list
94   11     -none- list
95   11     -none- list
96   11     -none- list
97   11     -none- list
98   11     -none- list
99   11     -none- list
100  11     -none- list
101  11     -none- list
102  11     -none- list
103  11     -none- list
104  11     -none- list
105  11     -none- list
106  11     -none- list
107  11     -none- list
108  11     -none- list
109  11     -none- list
110  11     -none- list
111  11     -none- list
112  11     -none- list
113  11     -none- list
114  11     -none- list
115  11     -none- list
116  11     -none- list
117  11     -none- list
118  11     -none- list
119  11     -none- list
120  11     -none- list
121  11     -none- list
122  11     -none- list
123  11     -none- list
124  11     -none- list
125  11     -none- list
126  11     -none- list
127  11     -none- list
128  11     -none- list
129  11     -none- list
130  11     -none- list
131  11     -none- list
132  11     -none- list
133  11     -none- list
134  11     -none- list
135  11     -none- list
136  11     -none- list
137  11     -none- list
138  11     -none- list
139  11     -none- list
140  11     -none- list
141  11     -none- list
142  11     -none- list
143  11     -none- list
144  11     -none- list
145  11     -none- list
146  11     -none- list
147  11     -none- list
148  11     -none- list
149  11     -none- list
150  11     -none- list
151  11     -none- list
152  11     -none- list
153  11     -none- list
154  11     -none- list
155  11     -none- list
156  11     -none- list
157  11     -none- list
158  11     -none- list
159  11     -none- list
160  11     -none- list
161  11     -none- list
162  11     -none- list
163  11     -none- list
164  11     -none- list
165  11     -none- list
166  11     -none- list
167  11     -none- list
168  11     -none- list
169  11     -none- list
170  11     -none- list
171  11     -none- list
172  11     -none- list
173  11     -none- list
174  11     -none- list
175  11     -none- list
176  11     -none- list
177  11     -none- list
178  11     -none- list
179  11     -none- list
180  11     -none- list
181  11     -none- list
182  11     -none- list
183  11     -none- list
184  11     -none- list
185  11     -none- list
186  11     -none- list
187  11     -none- list
188  11     -none- list
189  11     -none- list
190  11     -none- list
191  11     -none- list
192  11     -none- list
193  11     -none- list
194  11     -none- list
195  11     -none- list
196  11     -none- list
197  11     -none- list
198  11     -none- list
199  11     -none- list
200  11     -none- list
201  11     -none- list
202  11     -none- list
203  11     -none- list
204  11     -none- list
205  11     -none- list
206  11     -none- list
207  11     -none- list
208  11     -none- list
209  11     -none- list
210  11     -none- list
211  11     -none- list
212  11     -none- list
213  11     -none- list
214  11     -none- list
215  11     -none- list
216  11     -none- list
217  11     -none- list
218  11     -none- list
219  11     -none- list
220  11     -none- list
221  11     -none- list
222  11     -none- list
223  11     -none- list
224  11     -none- list
225  11     -none- list
226  11     -none- list
227  11     -none- list
228  11     -none- list
229  11     -none- list
230  11     -none- list
231  11     -none- list
232  11     -none- list
233  11     -none- list
234  11     -none- list
235  11     -none- list
236  11     -none- list
237  11     -none- list
238  11     -none- list
239  11     -none- list
240  11     -none- list
241  11     -none- list
242  11     -none- list
243  11     -none- list
244  11     -none- list
245  11     -none- list
246  11     -none- list
247  11     -none- list
248  11     -none- list
249  11     -none- list
250  11     -none- list
251  11     -none- list
252  11     -none- list
253  11     -none- list
254  11     -none- list
255  11     -none- list
256  11     -none- list
257  11     -none- list
258  11     -none- list
259  11     -none- list
260  11     -none- list
261  11     -none- list
262  11     -none- list
263  11     -none- list
264  11     -none- list
265  11     -none- list
266  11     -none- list
267  11     -none- list
268  11     -none- list
269  11     -none- list
270  11     -none- list
271  11     -none- list
272  11     -none- list
273  11     -none- list
274  11     -none- list
275  11     -none- list
276  11     -none- list
277  11     -none- list
278  11     -none- list
279  11     -none- list
280  11     -none- list
281  11     -none- list
282  11     -none- list
283  11     -none- list
284  11     -none- list
285  11     -none- list
286  11     -none- list
287  11     -none- list
288  11     -none- list
289  11     -none- list
290  11     -none- list
291  11     -none- list
292  11     -none- list
293  11     -none- list
294  11     -none- list
295  11     -none- list
296  11     -none- list
297  11     -none- list
298  11     -none- list
299  11     -none- list
300  11     -none- list
301  11     -none- list
302  11     -none- list
303  11     -none- list
304  11     -none- list
305  11     -none- list
306  11     -none- list
307  11     -none- list
308  11     -none- list
309  11     -none- list
310  11     -none- list
311  11     -none- list
312  11     -none- list
313  11     -none- list
314  11     -none- list
315  11     -none- list
316  11     -none- list
317  11     -none- list
318  11     -none- list
319  11     -none- list
320  11     -none- list
321  11     -none- list
322  11     -none- list
323  11     -none- list
324  11     -none- list
325  11     -none- list
326  11     -none- list
327  11     -none- list
328  11     -none- list
329  11     -none- list
330  11     -none- list
331  11     -none- list
332  11     -none- list
333  11     -none- list
334  11     -none- list
335  11     -none- list
336  11     -none- list
337  11     -none- list
338  11     -none- list
339  11     -none- list
340  11     -none- list
341  11     -none- list
342  11     -none- list
343  11     -none- list
344  11     -none- list
345  11     -none- list
346  11     -none- list
347  11     -none- list
348  11     -none- list
349  11     -none- list
350  11     -none- list
351  11     -none- list
352  11     -none- list
353  11     -none- list
354  11     -none- list
355  11     -none- list
356  11     -none- list
357  11     -none- list
358  11     -none- list
359  11     -none- list
360  11     -none- list
361  11     -none- list
362  11     -none- list
363  11     -none- list
364  11     -none- list
365  11     -none- list
366  11     -none- list
367  11     -none- list
368  11     -none- list
369  11     -none- list
370  11     -none- list
371  11     -none- list
372  11     -none- list
373  11     -none- list
374  11     -none- list
375  11     -none- list
376  11     -none- list
377  11     -none- list
378  11     -none- list
379  11     -none- list
380  11     -none- list
381  11     -none- list
382  11     -none- list
383  11     -none- list
384  11     -none- list
385  11     -none- list
386  11     -none- list
387  11     -none- list
388  11     -none- list
389  11     -none- list
390  11     -none- list
391  11     -none- list
392  11     -none- list
393  11     -none- list
394  11     -none- list
395  11     -none- list
396  11     -none- list
397  11     -none- list
398  11     -none- list
399  11     -none- list
400  11     -none- list
401  11     -none- list
402  11     -none- list
403  11     -none- list
404  11     -none- list
405  11     -none- list
406  11     -none- list
407  11     -none- list
408  11     -none- list
409  11     -none- list
410  11     -none- list
411  11     -none- list
412  11     -none- list
413  11     -none- list
414  11     -none- list
415  11     -none- list
416  11     -none- list
417  11     -none- list
418  11     -none- list
419  11     -none- list
420  11     -none- list
421  11     -none- list
422  11     -none- list
423  11     -none- list
424  11     -none- list
425  11     -none- list
426  11     -none- list
427  11     -none- list
428  11     -none- list
429  11     -none- list
430  11     -none- list
431  11     -none- list
432  11     -none- list
433  11     -none- list
434  11     -none- list
435  11     -none- list
436  11     -none- list
437  11     -none- list
438  11     -none- list
439  11     -none- list
440  11     -none- list
441  11     -none- list
442  11     -none- list
443  11     -none- list
444  11     -none- list
445  11     -none- list
446  11     -none- list
447  11     -none- list
448  11     -none- list
449  11     -none- list
450  11     -none- list
451  11     -none- list
452  11     -none- list
453  11     -none- list
454  11     -none- list
455  11     -none- list
456  11     -none- list
457  11     -none- list
458  11     -none- list
459  11     -none- list
460  11     -none- list
461  11     -none- list
462  11     -none- list
463  11     -none- list
464  11     -none- list
465  11     -none- list
466  11     -none- list
467  11     -none- list
468  11     -none- list
469  11     -none- list
470  11     -none- list
471  11     -none- list
472  11     -none- list
473  11     -none- list
474  11     -none- list
475  11     -none- list
476  11     -none- list
477  11     -none- list
478  11     -none- list
479  11     -none- list
480  11     -none- list
481  11     -none- list
482  11     -none- list
483  11     -none- list
484  11     -none- list
485  11     -none- list
486  11     -none- list
487  11     -none- list
488  11     -none- list
489  11     -none- list
490  11     -none- list
491  11     -none- list
492  11     -none- list
493  11     -none- list
494  11     -none- list
495  11     -none- list
496  11     -none- list
497  11     -none- list
498  11     -none- list
499  11     -none- list
500  11     -none- list
501  11     -none- list
502  11     -none- list
503  11     -none- list
504  11     -none- list
505  11     -none- list
506  11     -none- list
507  11     -none- list
508  11     -none- list
509  11     -none- list
510  11     -none- list
511  11     -none- list
512  11     -none- list
513  11     -none- list
514  11     -none- list
515  11     -none- list
516  11     -none- list
517  11     -none- list
518  11     -none- list
519  11     -none- list
520  11     -none- list
521  11     -none- list
522  11     -none- list
523  11     -none- list
524  11     -none- list
525  11     -none- list
526  11     -none- list
527  11     -none- list
528  11     -none- list
529  11     -none- list
530  11     -none- list
531  11     -none- list
532  11     -none- list
533  11     -none- list
534  11     -none- list
535  11     -none- list
536  11     -none- list
537  11     -none- list
538  11     -none- list
539  11     -none- list
540  11     -none- list
541  11     -none- list
542  11     -none- list
543  11     -none- list
544  11     -none- list
545  11     -none- list
546  11     -none- list
547  11     -none- list
548  11     -none- list
549  11     -none- list
550  11     -none- list
551  11     -none- list
552  11     -none- list
553  11     -none- list
554  11     -none- list
555  11     -none- list
556  11     -none- list
557  11     -none- list
558  11     -none- list
559  11     -none- list
560  11     -none- list
561  11     -none- list
562  11     -none- list
563  11     -none- list
564  11     -none- list
565  11     -none- list
566  11     -none- list
567  11     -none- list
568  11     -none- list
569  11     -none- list
570  11     -none- list
571  11     -none- list
572  11     -none- list
573  11     -none- list
574  11     -none- list
575  11     -none- list
576  11     -none- list
577  11     -none- list
578  11     -none- list
579  11     -none- list
580  11     -none- list
581  11     -none- list
582  11     -none- list
583  11     -none- list
584  11     -none- list
585  11     -none- list
586  11     -none- list
587  11     -none- list
588  11     -none- list
589  11     -none- list
590  11     -none- list
591  11     -none- list
592  11     -none- list
593  11     -none- list
594  11     -none- list
595  11     -none- list
596  11     -none- list
597  11     -none- list
598  11     -none- list
599  11     -none- list
600  11     -none- list
601  11     -none- list
602  11     -none- list
603  11     -none- list
604  11     -none- list
605  11     -none- list
606  11     -none- list
607  11     -none- list
608  11     -none- list
609  11     -none- list
610  11     -none- list
611  11     -none- list
612  11     -none- list
613  11     -none- list
614  11     -none- list
615  11     -none- list
616  11     -none- list
617  11     -none- list
618  11     -none- list
619  11     -none- list
620  11     -none- list
621  11     -none- list
622  11     -none- list
623  11     -none- list
624  11     -none- list
625  11     -none- list
626  11     -none- list
627  11     -none- list
628  11     -none- list
629  11     -none- list
630  11     -none- list
631  11     -none- list
632  11     -none- list
633  11     -none- list
634  11     -none- list
635  11     -none- list
636  11     -none- list
637  11     -none- list
638  11     -none- list
639  11     -none- list
640  11     -none- list
641  11     -none- list
642  11     -none- list
643  11     -none- list
644  11     -none- list
645  11     -none- list
646  11     -none- list
647  11     -none- list
648  11     -none- list
649  11     -none- list
650  11     -none- list
651  11     -none- list
652  11     -none- list
653  11     -none- list
654  11     -none- list
655  11     -none- list
656  11     -none- list
657  11     -none- list
658  11     -none- list
659  11     -none- list
660  11     -none- list
661  11     -none- list
662  11     -none- list
663  11     -none- list
664  11     -none- list
665  11     -none- list
666  11     -none- list
667  11     -none- list
668  11     -none- list
669  11     -none- list
670  11     -none- list
671  11     -none- list
672  11     -none- list
673  11     -none- list
674  11     -none- list
675  11     -none- list
676  11     -none- list
677  11     -none- list
678  11     -none- list
679  11     -none- list
680  11     -none- list
681  11     -none- list
682  11     -none- list
683  11     -none- list
684  11     -none- list
685  11     -none- list
686  11     -none- list
687  11     -none- list
688  11     -none- list
689  11     -none- list
690  11     -none- list
691  11     -none- list
692  11     -none- list
693  11     -none- list
694  11     -none- list
695  11     -none- list
696  11     -none- list
697  11     -none- list
698  11     -none- list
699  11     -none- list
700  11     -none- list
701  11     -none- list
702  11     -none- list
703  11     -none- list
704  11     -none- list
705  11     -none- list
706  11     -none- list
707  11     -none- list
708  11     -none- list
709  11     -none- list
710  11     -none- list
711  11     -none- list
712  11     -none- list
713  11     -none- list
714  11     -none- list
715  11     -none- list
716  11     -none- list
717  11     -none- list
718  11     -none- list
719  11     -none- list
720  11     -none- list
721  11     -none- list
722  11     -none- list
723  11     -none- list
724  11     -none- list
725  11     -none- list
726  11     -none- list
727  11     -none- list
728  11     -none- list
729  11     -none- list
730  11     -none- list
731  11     -none- list
732  11     -none- list
733  11     -none- list
734  11     -none- list
735  11     -none- list
736  11     -none- list
737  11     -none- list
738  11     -none- list
739  11     -none- list
740  11     -none- list
741  11     -none- list
742  11     -none- list
743  11     -none- list
744  11     -none- list
745  11     -none- list
746  11     -none- list
747  11     -none- list
748  11     -none- list
749  11     -none- list
750  11     -none- list
751  11     -none- list
752  11     -none- list
753  11     -none- list
754  11     -none- list
755  11     -none- list
756  11     -none- list
757  11     -none- list
758  11     -none- list
759  11     -none- list
760  11     -none- list
761  11     -none- list
762  11     -none- list
763  11     -none- list
764  11     -none- list
765  11     -none- list
766  11     -none- list
767  11     -none- list
768  11     -none- list
769  11     -none- list
770  11     -none- list
771  11     -none- list
772  11     -none- list
773  11     -none- list
774  11     -none- list
775  11     -none- list
776  11     -none- list
777  11     -none- list
778  11     -none- list
779  11     -none- list
780  11     -none- list
781  11     -none- list
782  11     -none- list
783  11     -none- list
784  11     -none- list
785  11     -none- list
786  11     -none- list
787  11     -none- list
788  11     -none- list
789  11     -none- list
790  11     -none- list
791  11     -none- list
792  11     -none- list
793  11     -none- list
794  11     -none- list
795  11     -none- list
796  11     -none- list
797  11     -none- list
798  11     -none- list
799  11     -none- list
800  11     -none- list
801  11     -none- list
802  11     -none- list
803  11     -none- list
804  11     -none- list
805  11     -none- list
806  11     -none- list
807  11     -none- list
808  11     -none- list
809  11     -none- list
810  11     -none- list
811  11     -none- list
812  11     -none- list
813  11     -none- list
814  11     -none- list
815  11     -none- list
816  11     -none- list
817  11     -none- list
818  11     -none- list
819  11     -none- list
820  11     -none- list
821  11     -none- list
822  11     -none- list
823  11     -none- list
824  11     -none- list
825  11     -none- list
826  11     -none- list
827  11     -none- list
828  11     -none- list
829  11     -none- list
830  11     -none- list
831  11     -none- list
832  11     -none- list
833  11     -none- list
834  11     -none- list
835  11     -none- list
836  11     -none- list
837  11     -none- list
838  11     -none- list
839  11     -none- list
840  11     -none- list
841  11     -none- list
842  11     -none- list
843  11     -none- list
844  11     -none- list
845  11     -none- list
846  11     -none- list
847  11     -none- list
848  11     -none- list
849  11     -none- list
850  11     -none- list
851  11     -none- list
852  11     -none- list
853  11     -none- list
854  11     -none- list
855  11     -none- list
856  11     -none- list
857  11     -none- list
858  11     -none- list
859  11     -none- list
860  11     -none- list
861  11     -none- list
862  11     -none- list
863  11     -none- list
864  11     -none- list
865  11     -none- list
866  11     -none- list
867  11     -none- list
868  11     -none- list
869  11     -none- list
870  11     -none- list
871  11     -none- list
872  11     -none- list
873  11     -none- list
874  11     -none- list
875  11     -none- list
876  11     -none- list
877  11     -none- list
878  11     -none- list
879  11     -none- list
880  11     -none- list
881  11     -none- list
882  11     -none- list
883  11     -none- list
884  11     -none- list
885  11     -none- list
886  11     -none- list
887  11     -none- list
888  11     -none- list
889  11     -none- list
890  11     -none- list
891  11     -none- list
892  11     -none- list
893  11     -none- list
894  11     -none- list
895  11     -none- list
896  11     -none- list
897  11     -none- list
898  11     -none- list
899  11     -none- list
900  11     -none- list
901  11     -none- list
902  11     -none- list
903  11     -none- list
904  11     -none- list
905  11     -none- list
906  11     -none- list
907  11     -none- list
908  11     -none- list
909  11     -none- list
910  11     -none- list
911  11     -none- list
912  11     -none- list
913  11     -none- list
914  11     -none- list
915  11     -none- list
916  11     -none- list
917  11     -none- list
918  11     -none- list
919  11     -none- list
920  11     -none- list
921  11     -none- list
922  11     -none- list
923  11     -none- list
924  11     -none- list
925  11     -none- list
926  11     -none- list
927  11     -none- list
928  11     -none- list
929  11     -none- list
930  11     -none- list
931  11     -none- list
932  11     -none- list
933  11     -none- list
934  11     -none- list
935  11     -none- list
936  11     -none- list
937  11     -none- list
938  11     -none- list
939  11     -none- list
940  11     -none- list
941  11     -none- list
942  11     -none- list
943  11     -none- list
944  11     -none- list
945  11     -none- list
946  11     -none- list
947  11     -none- list
948  11     -none- list
949  11     -none- list
950  11     -none- list
951  11     -none- list
952  11     -none- list
953  11     -none- list
954  11     -none- list
955  11     -none- list
956  11     -none- list
957  11     -none- list
958  11     -none- list
959  11     -none- list
960  11     -none- list
961  11     -none- list
962  11     -none- list
963  11     -none- list
964  11     -none- list
965  11     -none- list
966  11     -none- list
967  11     -none- list
968  11     -none- list
969  11     -none- list
970  11     -none- list
971  11     -none- list
972  11     -none- list
973  11     -none- list
974  11     -none- list
975  11     -none- list
976  11     -none- list
977  11     -none- list
978  11     -none- list
979  11     -none- list
980  11     -none- list
981  11     -none- list
982  11     -none- list
983  11     -none- list
984  11     -none- list
985  11     -none- list
986  11     -none- list
987  11     -none- list
988  11     -none- list
989  11     -none- list
990  11     -none- list
991  11     -none- list
992  11     -none- list
993  11     -none- list
994  11     -none- list
995  11     -none- list
996  11     -none- list
997  11     -none- list
998  11     -none- list
999  11     -none- list
1000 11     -none- list
1001 11     -none- list
1002 11     -none- list
1003 11     -none- list
1004 11     -none- list
1005 11     -none- list
1006 11     -none- list
1007 11     -none- list
1008 11     -none- list
1009 11     -none- list
1010 11     -none- list
1011 11     -none- list
1012 11     -none- list
1013 11     -none- list
1014 11     -none- list
1015 11     -none- list
1016 11     -none- list
1017 11     -none- list
1018 11     -none- list
1019 11     -none- list
1020 11     -none- list
1021 11     -none- list
1022 11     -none- list
1023 11     -none- list
1024 11     -none- list
1025 11     -none- list
1026 11     -none- list
1027 11     -none- list
1028 11     -none- list
1029 11     -none- list
1030 11     -none- list
1031 11     -none- list
1032 11     -none- list
1033 11     -none- list
1034 11     -none- list
1035 11     -none- list
1036 11     -none- list
1037 11     -none- list
1038 11     -none- list
1039 11     -none- list
1040 11     -none- list
1041 11     -none- list
1042 11     -none- list
1043 11     -none- list
1044 11     -none- list
1045 11     -none- list
1046 11     -none- list
1047 11     -none- list
1048 11     -none- list
1049 11     -none- list
1050 11     -none- list
1051 11     -none- list
1052 11     -none- list
1053 11     -none- list
1054 11     -none- list
1055 11     -none- list
1056 11     -none- list
1057 11     -none- list
1058 11     -none- list
1059 11     -none- list
1060 11     -none- list
1061 11     -none- list
1062 11     -none- list
1063 11     -none- list
1064 11     -none- list
1065 11     -none- list
1066 11     -none- list
1067 11     -none- list
1068 11     -none- list
1069 11     -none- list
1070 11     -none- list
1071 11     -none- list
1072 11     -none- list
1073 11     -none- list
1074 11     -none- list
1075 11     -none- list
1076 11     -none- list
1077 11     -none- list
1078 11     -none- list
1079 11     -none- list
1080 11     -none- list
1081 11     -none- list
1082 11     -none- list
1083 11     -none- list
1084 11     -none- list
1085 11     -none- list
1086 11     -none- list
1087 11     -none- list
1088 11     -none- list
1089 11     -none- list
1090 11     -none- list
1091 11     -none- list
1092 11     -none- list
1093 11     -none- list
1094 11     -none- list
1095 11     -none- list
1096 11     -none- list
1097 11     -none- list
1098 11     -none- list
1099 11     -none- list
1100 11     -none- list
1101 11     -none- list
1102 11     -none- list
1103 11     -none- list
1104 11     -none- list
1105 11     -none- list
1106 11     -none- list
1107 11     -none- list
1108 11     -none- list
1109 11     -none- list
1110 11     -none- list
1111 11     -none- list
1112 11     -none- list
1113 11     -none- list
1114 11     -none- list
1115 11     -none- list
1116 11     -none- list
1117 11     -none- list
1118 11     -none- list
1119 11     -none- list
1120 11     -none- list
1121 11     -none- list
1122 11     -none- list
1123 11     -none- list
1124 11     -none- list
1125 11     -none- list
1126 11     -none- list
1127 11     -none- list
1128 11     -none- list
1129 11     -none- list
1130 11     -none- list
1131 11     -none- list
1132 11     -none- list
1133 11     -none- list
1134 11     -none- list
1135 11     -none- list
1136 11     -none- list
1137 11     -none- list
1138 11     -none- list
1139 11     -none- list
1140 11     -none- list
1141 11     -none- list
1142 11     -none- list
1143 11     -none- list
1144 11     -none- list
1145 11     -none- list
1146 11     -none- list
1147 11     -none- list
1148 11     -none- list
1149 11     -none- list
1150 11     -none- list
1151 11     -none- list
1152 11     -none- list
1153 11     -none- list
1154 11     -none- list
1155 11     -none- list
1156 11     -none- list
1157 11     -none- list
1158 11     -none- list
1159 11     -none- list
1160 11     -none- list
1161 11     -none- list
1162 11     -none- list
1163 11     -none- list
1164 11     -none- list
1165 11     -none- list
1166 11     -none- list
1167 11     -none- list
1168 11     -none- list
1169 11     -none- list
1170 11     -none- list
1171 11     -none- list
1172 11     -none- list
1173 11     -none- list
1174 11     -none- list
1175 11     -none- list
1176 11     -none- list
1177 11     -none- list
1178 11     -none- list
1179 11     -none- list
1180 11     -none- list
1181 11     -none- list
1182 11     -none- list
1183 11     -none- list
1184 11     -none- list
1185 11     -none- list
1186 11     -none- list
1187 11     -none- list
1188 11     -none- list
1189 11     -none- list
1190 11     -none- list
1191 11     -none- list
1192 11     -none- list
1193 11     -none- list
1194 11     -none- list
1195 11     -none- list
1196 11     -none- list
1197 11     -none- list
1198 11     -none- list
1199 11     -none- list
1200 11     -none- list
1201 11     -none- list
1202 11     -none- list
1203 11     -none- list
1204 11     -none- list
1205 11     -none- list
1206 11     -none- list
1207 11     -none- list
1208 11     -none- list
1209 11     -none- list
1210 11     -none- list
1211 11     -none- list
1212 11     -none- list
1213 11     -none- list
1214 11     -none- list
1215 11     -none- list
1216 11     -none- list
1217 11     -none- list
1218 11     -none- list
1219 11     -none- list
1220 11     -none- list
1221 11     -none- list
1222 11     -none- list
1223 11     -none- list
1224 11     -none- list
1225 11     -none- list
1226 11     -none- list
1227 11     -none- list
1228 11     -none- list
1229 11     -none- list
1230 11     -none- list
1231 11     -none- list
1232 11     -none- list
1233 11     -none- list
1234 11     -none- list
1235 11     -none- list
1236 11     -none- list
1237 11     -none- list
1238 11     -none- list
1239 11     -none- list
1240 11     -none- list
1241 11     -none- list
1242 11     -none- list
1243 11     -none- list
1244 11     -none- list
1245 11     -none- list
1246 11     -none- list
1247 11     -none- list
1248 11     -none- list
1249 11     -none- list
1250 11     -none- list
1251 11     -none- list
1252 11     -none- list
1253 11     -none- list
1254 11     -none- list
1255 11     -none- list
1256 11     -none- list
1257 11     -none- list
1258 11     -none- list
1259 11     -none- list
1260 11     -none- list
1261 11     -none- list
1262 11     -none- list
1263 11     -none- list
1264 11     -none- list
1265 11     -none- list
1266 11     -none- list
1267 11     -none- list
1268 11     -none- list
1269 11     -none- list
1270 11     -none- list
1271 11     -none- list
1272 11     -none- list
1273 11     -none- list
1274 11     -none- list
1275 11     -none- list
1276 11     -none- list
1277 11     -none- list
1278 11     -none- list
1279 11     -none- list
1280 11     -none- list
1281 11     -none- list
1282 11     -none- list
1283 11     -none- list
1284 11     -none- list
1285 11     -none- list
1286 11     -none- list
1287 11     -none- list
1288 11     -none- list
1289 11     -none- list
1290 11     -none- list
1291 11     -none- list
1292 11     -none- list
1293 11     -none- list
1294 11     -none- list
1295 11     -none- list
1296 11     -none- list
1297 11     -none- list
1298 11     -none- list
1299 11     -none- list
1300 11     -none- list
1301 11     -none- list
1302 11     -none- list
1303 11     -none- list
1304 11     -none- list
1305 11     -none- list
1306 11     -none- list
1307 11     -none- list
1308 11     -none- list
1309 11     -none- list
1310 11     -none- list
1311 11     -none- list
1312 11     -none- list
1313 11     -none- list
1314 11     -none- list
1315 11     -none- list
1316 11     -none- list
1317 11     -none- list
1318 11     -none- list
1319 11     -none- list
1320 11     -none- list
1321 11     -none- list
1322 11     -none- list
1323 11     -none- list
1324 11     -none- list
1325 11     -none- list
1326 11     -none- list
1327 11     -none- list
1328 11     -none- list
1329 11     -none- list
1330 11     -none- list
1331 11     -none- list
1332 11     -none- list
1333 11     -none- list
1334 11     -none- list
1335 11     -none- list
1336 11     -none- list
1337 11     -none- list
1338 11     -none- list
1339 11     -none- list
1340 11     -none- list
1341 11     -none- list
1342 11     -none- list
1343 11     -none- list
1344 11     -none- list
1345 11     -none- list
1346 11     -none- list
1347 11     -none- list
1348 11     -none- list
1349 11     -none- list
1350 11     -none- list
1351 11     -none- list
1352 11     -none- list
1353 11     -none- list
1354 11     -none- list
1355 11     -none- list
1356 11     -none- list
1357 11     -none- list
1358 11     -none- list
1359 11     -none- list
1360 11     -none- list
1361 11     -none- list
1362 11     -none- list
1363 11     -none- list
1364 11     -none- list
1365 11     -none- list
1366 11     -none- list
1367 11     -none- list
1368 11     -none- list
1369 11     -none- list
1370 11     -none- list
1371 11     -none- list
1372 11     -none- list
1373 11     -none- list
1374 11     -none- list
1375 11     -none- list
1376 11     -none- list
1377 11     -none- list
1378 11     -none- list
1379 11     -none- list
1380 11     -none- list
1381 11     -none- list
1382 11     -none- list
1383 11     -none- list
1384 11     -none- list
1385 11     -none- list
1386 11     -none- list
1387 11     -none- list
1388 11     -none- list
1389 11     -none- list
1390 11     -none- list
1391 11     -none- list
1392 11     -none- list
1393 11     -none- list
1394 11     -none- list
1395 11     -none- list
1396 11     -none- list
1397 11     -none- list
1398 11     -none- list
1399 11     -none- list
1400 11     -none- list
1401 11     -none- list
1402 11     -none- list
1403 11     -none- list
1404 11     -none- list
1405 11     -none- list
1406 11     -none- list
1407 11     -none- list
1408 11     -none- list
1409 11     -none- list
1410 11     -none- list
1411 11     -none- list
1412 11     -none- list
1413 11     -none- list
1414 11     -none- list
1415 11     -none- list
1416 11     -none- list
1417 11     -none- list
1418 11     -none- list
1419 11     -none- list
1420 11     -none- list
1421 11     -none- list
1422 11     -none- list
1423 11     -none- list
1424 11     -none- list
1425 11     -none- list
1426 11     -none- list
1427 11     -none- list
1428 11     -none- list
1429 11     -none- list
1430 11     -none- list
1431 11     -none- list
1432 11     -none- list
1433 11     -none- list
1434 11     -none- list
1435 11     -none- list
1436 11     -none- list
1437 11     -none- list
1438 11     -none- list
1439 11     -none- list
1440 11     -none- list
1441 11     -none- list
1442 11     -none- list
1443 11     -none- list
1444 11     -none- list
1445 11     -none- list
1446 11     -none- list
1447 11     -none- list
1448 11     -none- list
1449 11     -none- list
1450 11     -none- list
1451 11     -none- list
1452 11     -none- list
1453 11     -none- list
1454 11     -none- list
1455 11     -none- list
1456 11     -none- list
1457 11     -none- list
1458 11     -none- list
1459 11     -none- list
1460 11     -none- list
1461 11     -none- list
1462 11     -none- list
1463 11     -none- list
1464 11     -none- list
1465 11     -none- list
1466 11     -none- list
1467 11     -none- list
1468 11     -none- list
1469 11     -none- list
1470 11     -none- list
1471 11     -none- list
1472 11     -none- list
1473 11     -none- list
1474 11     -none- list
1475 11     -none- list
1476 11     -none- list
1477 11     -none- list
1478 11     -none- list
1479 11     -none- list
1480 11     -none- list
1481 11     -none- list
1482 11     -none- list
1483 11     -none- list
1484 11     -none- list
1485 11     -none- list
1486 11     -none- list
1487 11     -none- list
1488 11     -none- list
1489 11     -none- list
1490 11     -none- list
1491 11     -none- list
1492 11     -none- list
1493 11     -none- list
1494 11     -none- list
1495 11     -none- list
1496 11     -none- list
1497 11     -none- list
1498 11     -none- list
1499 11     -none- list
1500 11     -none- list
1501 11     -none- list
1502 11     -none- list
1503 11     -none- list
1504 11     -none- list
1505 11     -none- list
1506 11     -none- list
1507 11     -none- list
1508 11     -none- list
1509 11     -none- list
1510 11     -none- list
1511 11     -none- list
1512 11     -none- list
1513 11     -none- list
1514 11     -none- list
1515 11     -none- list
1516 11     -none- list
1517 11     -none- list
1518 11     -none- list
1519 11     -none- list
1520 11     -none- list
1521 11     -none- list
1522 11     -none- list
1523 11     -none- list
1524 11     -none- list
1525 11     -none- list
1526 11     -none- list
1527 11     -none- list
1528 11     -none- list
1529 11     -none- list
1530 11     -none- list
1531 11     -none- list
1532 11     -none- list
1533 11     -none- list
1534 11     -none- list
1535 11     -none- list
1536 11     -none- list
1537 11     -none- list
1538 11     -none- list
1539 11     -none- list
1540 11     -none- list
1541 11     -none- list
1542 11     -none- list
1543 11     -none- list
1544 11     -none- list
1545 11     -none- list
1546 11     -none- list
1547 11     -none- list
1548 11     -none- list
1549 11     -none- list
1550 11     -none- list
1551 11     -none- list
1552 11     -none- list
1553 11     -none- list
1554 11     -none- list
1555 11     -none- list
1556 11     -none- list
1557 11     -none- list
1558 11     -none- list
1559 11     -none- list
1560 11     -none- list
1561 11     -none- list
1562 11     -none- list
1563 11     -none- list
1564 11     -none- list
1565 11     -none- list
1566 11     -none- list
1567 11     -none- list
1568 11     -none- list
1569 11     -none- list
1570 11     -none- list
1571 11     -none- list
1572 11     -none- list
1573 11     -none- list
1574 11     -none- list
1575 11     -none- list
1576 11     -none- list
1577 11     -none- list
1578 11     -none- list
1579 11     -none- list
1580 11     -none- list
1581 11     -none- list
1582 11     -none- list
1583 11     -none- list
1584 11     -none- list
1585 11     -none- list
1586 11     -none- list
1587 11     -none- list
1588 11     -none- list
1589 11     -none- list
1590 11     -none- list
1591 11     -none- list
1592 11     -none- list
1593 11     -none- list
1594 11     -none- list
1595 11     -none- list
1596 11     -none- list
1597 11     -none- list
1598 11     -none- list
1599 11     -none- list
1600 11     -none- list
1601 11     -none- list
1602 11     -none- list
1603 11     -none- list
1604 11     -none- list
1605 11     -none- list
1606 11     -none- list
1607 11     -none- list
1608 11     -none- list
1609 11     -none- list
1610 11     -none- list
1611 11     -none- list
1612 11     -none- list
1613 11     -none- list
1614 11     -none- list
1615 11     -none- list
1616 11     -none- list
1617 11     -none- list
1618 11     -none- list
1619 11     -none- list
1620 11     -none- list
1621 11     -none- list
1622 11     -none- list
1623 11     -none- list
1624 11     -none- list
1625 11     -none- list
1626 11     -none- list
1627 11     -none- list
1628 11     -none- list
1629 11     -none- list
1630 11     -none- list
1631 11     -none- list
1632 11     -none- list
1633 11     -none- list
1634 11     -none- list
1635 11     -none- list
1636 11     -none- list
1637 11     -none- list
1638 11     -none- list
1639 11     -none- list
1640 11     -none- list
1641 11     -none- list
1642 11     -none- list
1643 11     -none- list
1644 11     -none- list
1645 11     -none- list
1646 11     -none- list
1647 11     -none- list
1648 11     -none- list
1649 11     -none- list
1650 11     -none- list
1651 11     -none- list
1652 11     -none- list
1653 11     -none- list
1654 11     -none- list
1655 11     -none- list
1656 11     -none- list
1657 11     -none- list
1658 11     -none- list
1659 11     -none- list
1660 11     -none- list
1661 11     -none- list
1662 11     -none- list
1663 11     -none- list
1664 11     -none- list
1665 11     -none- list
1666 11     -none- list
1667 11     -none- list
1668 11     -none- list
1669 11     -none- list
1670 11     -none- list
1671 11     -none- list
1672 11     -none- list
1673 11     -none- list
1674 11     -none- list
1675 11     -none- list
1676 11     -none- list
1677 11     -none- list
1678 11     -none- list
1679 11     -none- list
1680 11     -none- list
1681 11     -none- list
1682 11     -none- list
1683 11     -none- list
1684 11     -none- list
1685 11     -none- list
1686 11     -none- list
1687 11     -none- list
1688 11     -none- list
1689 11     -none- list
1690 11     -none- list
1691 11     -none- list
1692 11     -none- list
1693 11     -none- list
1694 11     -none- list
1695 11     -none- list
1696 11     -none- list
1697 11     -none- list
1698 11     -none- list
1699 11     -none- list
1700 11     -none- list
1701 11     -none- list
1702 11     -none- list
1703 11     -none- list
1704 11     -none- list
1705 11     -none- list
1706 11     -none- list
1707 11     -none- list
1708 11     -none- list
1709 11     -none- list
1710 11     -none- list
1711 11     -none- list
1712 11     -none- list
1713 11     -none- list
1714 11     -none- list
1715 11     -none- list
1716 11     -none- list
1717 11     -none- list
1718 11     -none- list
1719 11     -none- list
1720 11     -none- list
1721 11     -none- list
1722 11     -none- list
1723 11     -none- list
1724 11     -none- list
1725 11     -none- list
1726 11     -none- list
1727 11     -none- list
1728 11     -none- list
1729 11     -none- list
1730 11     -none- list
1731 11     -none- list
1732 11     -none- list
1733 11     -none- list
1734 11     -none- list
1735 11     -none- list
1736 11     -none- list
1737 11     -none- list
1738 11     -none- list
1739 11     -none- list
1740 11     -none- list
1741 11     -none- list
1742 11     -none- list
1743 11     -none- list
1744 11     -none- list
1745 11     -none- list
1746 11     -none- list
1747 11     -none- list
1748 11     -none- list
1749 11     -none- list
1750 11     -none- list
1751 11     -none- list
1752 11     -none- list
1753 11     -none- list
1754 11     -none- list
1755 11     -none- list
1756 11     -none- list
1757 11     -none- list
1758 11     -none- list
1759 11     -none- list
1760 11     -none- list
1761 11     -none- list
1762 11     -none- list
1763 11     -none- list
1764 11     -none- list
1765 11     -none- list
1766 11     -none- list
1767 11     -none- list
1768 11     -none- list
1769 11     -none- list
1770 11     -none- list
1771 11     -none- list
1772 11     -none- list
1773 11     -none- list
1774 11     -none- list
1775 11     -none- list
1776 11     -none- list
1777 11     -none- list
1778 11     -none- list
1779 11     -none- list
1780 11     -none- list
1781 11     -none- list
1782 11     -none- list
1783 11     -none- list
1784 11     -none- list
1785 11     -none- list
1786 11     -none- list
1787 11     -none- list
1788 11     -none- list
1789 11     -none- list
1790 11     -none- list
1791 11     -none- list
1792 11     -none- list
1793 11     -none- list
1794 11     -none- list
1795 11     -none- list
1796 11     -none- list
1797 11     -none- list
1798 11     -none- list
1799 11     -none- list
1800 11     -none- list
1801 11     -none- list
1802 11     -none- list
1803 11     -none- list
1804 11     -none- list
1805 11     -none- list
1806 11     -none- list
1807 11     -none- list
1808 11     -none- list
1809 11     -none- list
1810 11     -none- list
1811 11     -none- list
1812 11     -none- list
1813 11     -none- list
1814 11     -none- list
1815 11     -none- list
1816 11     -none- list
1817 11     -none- list
1818 11     -none- list
1819 11     -none- list
1820 11     -none- list
1821 11     -none- list
1822 11     -none- list
1823 11     -none- list
1824 11     -none- list
1825 11     -none- list
1826 11     -none- list
1827 11     -none- list
1828 11     -none- list
1829 11     -none- list
1830 11     -none- list
1831 11     -none- list
1832 11     -none- list
1833 11     -none- list
1834 11     -none- list
1835 11     -none- list
1836 11     -none- list
1837 11     -none- list
1838 11     -none- list
1839 11     -none- list
1840 11     -none- list
1841 11     -none- list
1842 11     -none- list
1843 11     -none- list
1844 11     -none- list
1845 11     -none- list
1846 11     -none- list
1847 11     -none- list
1848 11     -none- list
1849 11     -none- list
1850 11     -none- list
1851 11     -none- list
1852 11     -none- list
1853 11     -none- list
1854 11     -none- list
1855 11     -none- list
1856 11     -none- list
1857 11     -none- list
1858 11     -none- list
1859 11     -none- list
1860 11     -none- list
1861 11     -none- list
1862 11     -none- list
1863 11     -none- list
1864 11     -none- list
1865 11     -none- list
1866 11     -none- list
1867 11     -none- list
1868 11     -none- list
1869 11     -none- list
1870 11     -none- list
1871 11     -none- list
1872 11     -none- list
1873 11     -none- list
1874 11     -none- list
1875 11     -none- list
1876 11     -none- list
1877 11     -none- list
1878 11     -none- list
1879 11     -none- list
1880 11     -none- list
1881 11     -none- list
1882 11     -none- list
1883 11     -none- list
1884 11     -none- list
1885 11     -none- list
1886 11     -none- list
1887 11     -none- list
1888 11     -none- list
1889 11     -none- list
1890 11     -none- list
1891 11     -none- list
1892 11     -none- list
1893 11     -none- list
1894 11     -none- list
1895 11     -none- list
1896 11     -none- list
1897 11     -none- list
1898 11     -none- list
1899 11     -none- list
1900 11     -none- list
1901 11     -none- list
1902 11     -none- list
1903 11     -none- list
1904 11     -none- list
1905 11     -none- list
1906 11     -none- list
1907 11     -none- list
1908 11     -none- list
1909 11     -none- list
1910 11     -none- list
1911 11     -none- list
> 
> 
> ##### here is the function that plots seven points with a lowes line for each statistic
> plot.fn<-function(pos1=1, value1=5, pos2=2,value2=5,pos3=5,func="med"){
+ 
+ 
+ #pos1=5; value1=0; pos2=2; value2=5; pos3=2
+ 
+ # alpha<-c(10,5,3)
+ #  if (models>3){alpha<-c(alpha, rep(1, models-3))}
+ # a.mean <- alpha/sum(alpha) # ?
+   
+ 
+ slots<-NA
+ count<-0
+ for(i in 1:1911){
+  if(output[[i]]$theseParams[pos1]==value1 & output[[i]]$theseParams[pos2]==value2){
+  count<-count+1
+  slots[count]<-i} 
+  }
+ error.mat<-mae.mat<-rmse.mat<-mad.mat<-rmsle.mat <- mape.mat <- meape.mat <- mrae.mat <- pw.mat <- crps.mat <- matrix(NA,nrow=length(slots),ncol=100)
+ 
+ x.axis <- rep(NA, length(slots))
+ count <- 1
+ for(i in slots){
+   print(i)
+   x.axis[count] <- output[[i]]$theseParams[pos3]
+   count <- count+1
+ }
+ 
+ for(i in slots){
+  count<-which(slots==i)
+         errror.all.mat<-abs(output[[i]]$error)#%*%a.mean
+  #error.all.mat<-rowSums(abs(output[[i]]$error))
+  error.mat[count,]<-output[[i]]$error[,1]
+  rmse.mat[count,]<-output[[i]]$pred.rmse[,"EBMA"]
+  mae.mat[count,]<-output[[i]]$pred.mae[,"EBMA"]
+         mad.mat[count,]<-output[[i]]$pred.mad[,"EBMA"]
+         rmsle.mat[count,] <- output[[i]]$pred.rmsle[,"EBMA"]
+         mape.mat[count,] <- output[[i]]$pred.mape[,"EBMA"]
+         meape.mat[count,] <- output[[i]]$pred.meape[,"EBMA"]
+         mrae.mat[count,] <- output[[i]]$pred.mrae[,"EBMA"]
+         pw.mat[count,] <- output[[i]]$pred.pw[,"EBMA"]
+         crps.mat[count,] <- output[[i]]$model.crps
+ }
+ 
+ if(func=="med"){
+  error.all<-apply(abs(error.mat),1,FUN=median,na.rm=TRUE)
+  error<-(apply(error.mat,1,FUN=median, na.rm=TRUE))
+  rmse<-abs(apply(rmse.mat,1,FUN=median, na.rm=TRUE))
+  mae<-abs(apply(mae.mat,1,FUN=median, na.rm=TRUE))
+        mad<-abs(apply(mad.mat,1,FUN=median, na.rm=TRUE))
+         rmsle<-abs(apply(rmsle.mat,1,FUN=median, na.rm=TRUE))
+         mape<-abs(apply(mape.mat,1,FUN=median, na.rm=TRUE))
+         meape<-abs(apply(meape.mat,1,FUN=median, na.rm=TRUE))
+         mrae<-abs(apply(mrae.mat,1,FUN=median, na.rm=TRUE))
+         pw<-abs(apply(pw.mat,1,FUN=median, na.rm=TRUE))
+         crps<-abs(apply(crps.mat,1,FUN=median, na.rm=TRUE))
+       }
+ 
+ if(func=="mea"){
+  error.all<-apply(abs(error.mat),1,FUN=mean,na.rm=TRUE)
+  error<-(apply(error.mat,1,FUN=mean, na.rm=TRUE))
+  rmse<-abs(apply(rmse.mat,1,FUN=mean, na.rm=TRUE))
+  mae<-abs(apply(mae.mat,1,FUN=mean, na.rm=TRUE))
+        mad<-abs(apply(mad.mat,1,FUN=mean, na.rm=TRUE))
+         rmsle<-abs(apply(rmsle.mat,1,FUN=mean, na.rm=TRUE))
+         mape<-abs(apply(mape.mat,1,FUN=mean, na.rm=TRUE))
+         meape<-abs(apply(meape.mat,1,FUN=mean, na.rm=TRUE))
+         mrae<-abs(apply(mrae.mat,1,FUN=mean, na.rm=TRUE))
+         pw<-abs(apply(pw.mat,1,FUN=mean, na.rm=TRUE))
+         crps<-abs(apply(crps.mat,1,FUN=mean, na.rm=TRUE))
+       }
+ 
+ 
+ 
+ 
+ plot(x.axis, crps)
+  
+ 
+ #par(mfrow=c(3,3))
+ #plot(c,error.all,pch=15,main="Weighted Weight Error (all)")
+ #lines(loess(error.all~c))
+ #plot(c,error,pch=15,main="Weight Error (largest weight model)")
+ #abline(h=0)
+ #lines(loess(error~c))
+ #plot(c,crps,pch=15,main="CRPS")
+ #lines(loess(crps~c))
+ #plot(c,mae,pch=15,main="MAE")
+ #lines(loess(mae~c))
+ #plot(c,rmse,pch=15,main="RMSE")
+ #lines(loess(rmse~c))
+ #plot(c,mape,pch=15,main="MAPE")
+ #lines(loess(mape~c))
+ #plot(c,meape,pch=15,main="MEAPE")
+ #lines(loess(meape~c))
+ #plot(c,mrae,pch=15,main="MRAE")
+ #lines(loess(mrae~c))
+ #plot(c,pw,pch=15,main="PW")
+ #lines(loess(pw~c))
+ 
+ 
+ 
+ }
> 
> 
> 
> par(mfrow=c(3,3))
> plot.fn(pos1=5, value1=0, pos2=2, value2=3, pos3=1)
[1] 1
[1] 2
[1] 3
[1] 4
[1] 5
[1] 6
[1] 7
[1] 8
[1] 9
[1] 10
[1] 11
[1] 12
[1] 13
[1] 14
[1] 15
[1] 16
[1] 17
[1] 18
[1] 19
[1] 20
[1] 21
> plot.fn(pos1=5, value1=0, pos2=2, value2=9, pos3=1)
[1] 64
[1] 65
[1] 66
[1] 67
[1] 68
[1] 69
[1] 70
[1] 71
[1] 72
[1] 73
[1] 74
[1] 75
[1] 76
[1] 77
[1] 78
[1] 79
[1] 80
[1] 81
[1] 82
[1] 83
[1] 84
> plot.fn(pos1=5, value1=0, pos2=2, value2=15, pos3=1)
[1] 127
[1] 128
[1] 129
[1] 130
[1] 131
[1] 132
[1] 133
[1] 134
[1] 135
[1] 136
[1] 137
[1] 138
[1] 139
[1] 140
[1] 141
[1] 142
[1] 143
[1] 144
[1] 145
[1] 146
[1] 147
> 
> 
> #nTrain<-c(3:15,20,25,35,45,55,65,85,100)
> #nmod<-seq(3,15, by=2)
> #constant<-c(0,.01, 0.02,.025, 0.03, 0.04, .05, 0.075, 0.1, 0.15, 0.2, 0.3, .5)
> #iter<-100
> #outSample<-250
> 
> rm(list=ls(all=TRUE))
> 
> #setwd("~/Documents/GitHub/EBMAforecast/APSA_2012/Simulations")
> setwd("~/Github/EBMAforecast/APSA_2012/Simulations")
> 
> load("SecondRound")
> objects()
[1] "output"
> 
> summary(output)
     Length Class  Mode
1    11     -none- list
2    11     -none- list
3    11     -none- list
4    11     -none- list
5    11     -none- list
6    11     -none- list
7    11     -none- list
8    11     -none- list
9    11     -none- list
10   11     -none- list
11   11     -none- list
12   11     -none- list
13   11     -none- list
14   11     -none- list
15   11     -none- list
16   11     -none- list
17   11     -none- list
18   11     -none- list
19   11     -none- list
20   11     -none- list
21   11     -none- list
22   11     -none- list
23   11     -none- list
24   11     -none- list
25   11     -none- list
26   11     -none- list
27   11     -none- list
28   11     -none- list
29   11     -none- list
30   11     -none- list
31   11     -none- list
32   11     -none- list
33   11     -none- list
34   11     -none- list
35   11     -none- list
36   11     -none- list
37   11     -none- list
38   11     -none- list
39   11     -none- list
40   11     -none- list
41   11     -none- list
42   11     -none- list
43   11     -none- list
44   11     -none- list
45   11     -none- list
46   11     -none- list
47   11     -none- list
48   11     -none- list
49   11     -none- list
50   11     -none- list
51   11     -none- list
52   11     -none- list
53   11     -none- list
54   11     -none- list
55   11     -none- list
56   11     -none- list
57   11     -none- list
58   11     -none- list
59   11     -none- list
60   11     -none- list
61   11     -none- list
62   11     -none- list
63   11     -none- list
64   11     -none- list
65   11     -none- list
66   11     -none- list
67   11     -none- list
68   11     -none- list
69   11     -none- list
70   11     -none- list
71   11     -none- list
72   11     -none- list
73   11     -none- list
74   11     -none- list
75   11     -none- list
76   11     -none- list
77   11     -none- list
78   11     -none- list
79   11     -none- list
80   11     -none- list
81   11     -none- list
82   11     -none- list
83   11     -none- list
84   11     -none- list
85   11     -none- list
86   11     -none- list
87   11     -none- list
88   11     -none- list
89   11     -none- list
90   11     -none- list
91   11     -none- list
92   11     -none- list
93   11     -none- list
94   11     -none- list
95   11     -none- list
96   11     -none- list
97   11     -none- list
98   11     -none- list
99   11     -none- list
100  11     -none- list
101  11     -none- list
102  11     -none- list
103  11     -none- list
104  11     -none- list
105  11     -none- list
106  11     -none- list
107  11     -none- list
108  11     -none- list
109  11     -none- list
110  11     -none- list
111  11     -none- list
112  11     -none- list
113  11     -none- list
114  11     -none- list
115  11     -none- list
116  11     -none- list
117  11     -none- list
118  11     -none- list
119  11     -none- list
120  11     -none- list
121  11     -none- list
122  11     -none- list
123  11     -none- list
124  11     -none- list
125  11     -none- list
126  11     -none- list
127  11     -none- list
128  11     -none- list
129  11     -none- list
130  11     -none- list
131  11     -none- list
132  11     -none- list
133  11     -none- list
134  11     -none- list
135  11     -none- list
136  11     -none- list
137  11     -none- list
138  11     -none- list
139  11     -none- list
140  11     -none- list
141  11     -none- list
142  11     -none- list
143  11     -none- list
144  11     -none- list
145  11     -none- list
146  11     -none- list
147  11     -none- list
148  11     -none- list
149  11     -none- list
150  11     -none- list
151  11     -none- list
152  11     -none- list
153  11     -none- list
154  11     -none- list
155  11     -none- list
156  11     -none- list
157  11     -none- list
158  11     -none- list
159  11     -none- list
160  11     -none- list
161  11     -none- list
162  11     -none- list
163  11     -none- list
164  11     -none- list
165  11     -none- list
166  11     -none- list
167  11     -none- list
168  11     -none- list
169  11     -none- list
170  11     -none- list
171  11     -none- list
172  11     -none- list
173  11     -none- list
174  11     -none- list
175  11     -none- list
176  11     -none- list
177  11     -none- list
178  11     -none- list
179  11     -none- list
180  11     -none- list
181  11     -none- list
182  11     -none- list
183  11     -none- list
184  11     -none- list
185  11     -none- list
186  11     -none- list
187  11     -none- list
188  11     -none- list
189  11     -none- list
190  11     -none- list
191  11     -none- list
192  11     -none- list
193  11     -none- list
194  11     -none- list
195  11     -none- list
196  11     -none- list
197  11     -none- list
198  11     -none- list
199  11     -none- list
200  11     -none- list
201  11     -none- list
202  11     -none- list
203  11     -none- list
204  11     -none- list
205  11     -none- list
206  11     -none- list
207  11     -none- list
208  11     -none- list
209  11     -none- list
210  11     -none- list
211  11     -none- list
212  11     -none- list
213  11     -none- list
214  11     -none- list
215  11     -none- list
216  11     -none- list
217  11     -none- list
218  11     -none- list
219  11     -none- list
220  11     -none- list
221  11     -none- list
222  11     -none- list
223  11     -none- list
224  11     -none- list
225  11     -none- list
226  11     -none- list
227  11     -none- list
228  11     -none- list
229  11     -none- list
230  11     -none- list
231  11     -none- list
232  11     -none- list
233  11     -none- list
234  11     -none- list
235  11     -none- list
236  11     -none- list
237  11     -none- list
238  11     -none- list
239  11     -none- list
240  11     -none- list
241  11     -none- list
242  11     -none- list
243  11     -none- list
244  11     -none- list
245  11     -none- list
246  11     -none- list
247  11     -none- list
248  11     -none- list
249  11     -none- list
250  11     -none- list
251  11     -none- list
252  11     -none- list
253  11     -none- list
254  11     -none- list
255  11     -none- list
256  11     -none- list
257  11     -none- list
258  11     -none- list
259  11     -none- list
260  11     -none- list
261  11     -none- list
262  11     -none- list
263  11     -none- list
264  11     -none- list
265  11     -none- list
266  11     -none- list
267  11     -none- list
268  11     -none- list
269  11     -none- list
270  11     -none- list
271  11     -none- list
272  11     -none- list
273  11     -none- list
274  11     -none- list
275  11     -none- list
276  11     -none- list
277  11     -none- list
278  11     -none- list
279  11     -none- list
280  11     -none- list
281  11     -none- list
282  11     -none- list
283  11     -none- list
284  11     -none- list
285  11     -none- list
286  11     -none- list
287  11     -none- list
288  11     -none- list
289  11     -none- list
290  11     -none- list
291  11     -none- list
292  11     -none- list
293  11     -none- list
294  11     -none- list
295  11     -none- list
296  11     -none- list
297  11     -none- list
298  11     -none- list
299  11     -none- list
300  11     -none- list
301  11     -none- list
302  11     -none- list
303  11     -none- list
304  11     -none- list
305  11     -none- list
306  11     -none- list
307  11     -none- list
308  11     -none- list
309  11     -none- list
310  11     -none- list
311  11     -none- list
312  11     -none- list
313  11     -none- list
314  11     -none- list
315  11     -none- list
316  11     -none- list
317  11     -none- list
318  11     -none- list
319  11     -none- list
320  11     -none- list
321  11     -none- list
322  11     -none- list
323  11     -none- list
324  11     -none- list
325  11     -none- list
326  11     -none- list
327  11     -none- list
328  11     -none- list
329  11     -none- list
330  11     -none- list
331  11     -none- list
332  11     -none- list
333  11     -none- list
334  11     -none- list
335  11     -none- list
336  11     -none- list
337  11     -none- list
338  11     -none- list
339  11     -none- list
340  11     -none- list
341  11     -none- list
342  11     -none- list
343  11     -none- list
344  11     -none- list
345  11     -none- list
346  11     -none- list
347  11     -none- list
348  11     -none- list
349  11     -none- list
350  11     -none- list
351  11     -none- list
352  11     -none- list
353  11     -none- list
354  11     -none- list
355  11     -none- list
356  11     -none- list
357  11     -none- list
358  11     -none- list
359  11     -none- list
360  11     -none- list
361  11     -none- list
362  11     -none- list
363  11     -none- list
364  11     -none- list
365  11     -none- list
366  11     -none- list
367  11     -none- list
368  11     -none- list
369  11     -none- list
370  11     -none- list
371  11     -none- list
372  11     -none- list
373  11     -none- list
374  11     -none- list
375  11     -none- list
376  11     -none- list
377  11     -none- list
378  11     -none- list
379  11     -none- list
380  11     -none- list
381  11     -none- list
382  11     -none- list
383  11     -none- list
384  11     -none- list
385  11     -none- list
386  11     -none- list
387  11     -none- list
388  11     -none- list
389  11     -none- list
390  11     -none- list
391  11     -none- list
392  11     -none- list
393  11     -none- list
394  11     -none- list
395  11     -none- list
396  11     -none- list
397  11     -none- list
398  11     -none- list
399  11     -none- list
400  11     -none- list
401  11     -none- list
402  11     -none- list
403  11     -none- list
404  11     -none- list
405  11     -none- list
406  11     -none- list
407  11     -none- list
408  11     -none- list
409  11     -none- list
410  11     -none- list
411  11     -none- list
412  11     -none- list
413  11     -none- list
414  11     -none- list
415  11     -none- list
416  11     -none- list
417  11     -none- list
418  11     -none- list
419  11     -none- list
420  11     -none- list
421  11     -none- list
422  11     -none- list
423  11     -none- list
424  11     -none- list
425  11     -none- list
426  11     -none- list
427  11     -none- list
428  11     -none- list
429  11     -none- list
430  11     -none- list
431  11     -none- list
432  11     -none- list
433  11     -none- list
434  11     -none- list
435  11     -none- list
436  11     -none- list
437  11     -none- list
438  11     -none- list
439  11     -none- list
440  11     -none- list
441  11     -none- list
442  11     -none- list
443  11     -none- list
444  11     -none- list
445  11     -none- list
446  11     -none- list
447  11     -none- list
448  11     -none- list
449  11     -none- list
450  11     -none- list
451  11     -none- list
452  11     -none- list
453  11     -none- list
454  11     -none- list
455  11     -none- list
456  11     -none- list
457  11     -none- list
458  11     -none- list
459  11     -none- list
460  11     -none- list
461  11     -none- list
462  11     -none- list
463  11     -none- list
464  11     -none- list
465  11     -none- list
466  11     -none- list
467  11     -none- list
468  11     -none- list
469  11     -none- list
470  11     -none- list
471  11     -none- list
472  11     -none- list
473  11     -none- list
474  11     -none- list
475  11     -none- list
476  11     -none- list
477  11     -none- list
478  11     -none- list
479  11     -none- list
480  11     -none- list
481  11     -none- list
482  11     -none- list
483  11     -none- list
484  11     -none- list
485  11     -none- list
486  11     -none- list
487  11     -none- list
488  11     -none- list
489  11     -none- list
490  11     -none- list
491  11     -none- list
492  11     -none- list
493  11     -none- list
494  11     -none- list
495  11     -none- list
496  11     -none- list
497  11     -none- list
498  11     -none- list
499  11     -none- list
500  11     -none- list
501  11     -none- list
502  11     -none- list
503  11     -none- list
504  11     -none- list
505  11     -none- list
506  11     -none- list
507  11     -none- list
508  11     -none- list
509  11     -none- list
510  11     -none- list
511  11     -none- list
512  11     -none- list
513  11     -none- list
514  11     -none- list
515  11     -none- list
516  11     -none- list
517  11     -none- list
518  11     -none- list
519  11     -none- list
520  11     -none- list
521  11     -none- list
522  11     -none- list
523  11     -none- list
524  11     -none- list
525  11     -none- list
526  11     -none- list
527  11     -none- list
528  11     -none- list
529  11     -none- list
530  11     -none- list
531  11     -none- list
532  11     -none- list
533  11     -none- list
534  11     -none- list
535  11     -none- list
536  11     -none- list
537  11     -none- list
538  11     -none- list
539  11     -none- list
540  11     -none- list
541  11     -none- list
542  11     -none- list
543  11     -none- list
544  11     -none- list
545  11     -none- list
546  11     -none- list
547  11     -none- list
548  11     -none- list
549  11     -none- list
550  11     -none- list
551  11     -none- list
552  11     -none- list
553  11     -none- list
554  11     -none- list
555  11     -none- list
556  11     -none- list
557  11     -none- list
558  11     -none- list
559  11     -none- list
560  11     -none- list
561  11     -none- list
562  11     -none- list
563  11     -none- list
564  11     -none- list
565  11     -none- list
566  11     -none- list
567  11     -none- list
568  11     -none- list
569  11     -none- list
570  11     -none- list
571  11     -none- list
572  11     -none- list
573  11     -none- list
574  11     -none- list
575  11     -none- list
576  11     -none- list
577  11     -none- list
578  11     -none- list
579  11     -none- list
580  11     -none- list
581  11     -none- list
582  11     -none- list
583  11     -none- list
584  11     -none- list
585  11     -none- list
586  11     -none- list
587  11     -none- list
588  11     -none- list
589  11     -none- list
590  11     -none- list
591  11     -none- list
592  11     -none- list
593  11     -none- list
594  11     -none- list
595  11     -none- list
596  11     -none- list
597  11     -none- list
598  11     -none- list
599  11     -none- list
600  11     -none- list
601  11     -none- list
602  11     -none- list
603  11     -none- list
604  11     -none- list
605  11     -none- list
606  11     -none- list
607  11     -none- list
608  11     -none- list
609  11     -none- list
610  11     -none- list
611  11     -none- list
612  11     -none- list
613  11     -none- list
614  11     -none- list
615  11     -none- list
616  11     -none- list
617  11     -none- list
618  11     -none- list
619  11     -none- list
620  11     -none- list
621  11     -none- list
622  11     -none- list
623  11     -none- list
624  11     -none- list
625  11     -none- list
626  11     -none- list
627  11     -none- list
628  11     -none- list
629  11     -none- list
630  11     -none- list
631  11     -none- list
632  11     -none- list
633  11     -none- list
634  11     -none- list
635  11     -none- list
636  11     -none- list
637  11     -none- list
638  11     -none- list
639  11     -none- list
640  11     -none- list
641  11     -none- list
642  11     -none- list
643  11     -none- list
644  11     -none- list
645  11     -none- list
646  11     -none- list
647  11     -none- list
648  11     -none- list
649  11     -none- list
650  11     -none- list
651  11     -none- list
652  11     -none- list
653  11     -none- list
654  11     -none- list
655  11     -none- list
656  11     -none- list
657  11     -none- list
658  11     -none- list
659  11     -none- list
660  11     -none- list
661  11     -none- list
662  11     -none- list
663  11     -none- list
664  11     -none- list
665  11     -none- list
666  11     -none- list
667  11     -none- list
668  11     -none- list
669  11     -none- list
670  11     -none- list
671  11     -none- list
672  11     -none- list
673  11     -none- list
674  11     -none- list
675  11     -none- list
676  11     -none- list
677  11     -none- list
678  11     -none- list
679  11     -none- list
680  11     -none- list
681  11     -none- list
682  11     -none- list
683  11     -none- list
684  11     -none- list
685  11     -none- list
686  11     -none- list
687  11     -none- list
688  11     -none- list
689  11     -none- list
690  11     -none- list
691  11     -none- list
692  11     -none- list
693  11     -none- list
694  11     -none- list
695  11     -none- list
696  11     -none- list
697  11     -none- list
698  11     -none- list
699  11     -none- list
700  11     -none- list
701  11     -none- list
702  11     -none- list
703  11     -none- list
704  11     -none- list
705  11     -none- list
706  11     -none- list
707  11     -none- list
708  11     -none- list
709  11     -none- list
710  11     -none- list
711  11     -none- list
712  11     -none- list
713  11     -none- list
714  11     -none- list
715  11     -none- list
716  11     -none- list
717  11     -none- list
718  11     -none- list
719  11     -none- list
720  11     -none- list
721  11     -none- list
722  11     -none- list
723  11     -none- list
724  11     -none- list
725  11     -none- list
726  11     -none- list
727  11     -none- list
728  11     -none- list
729  11     -none- list
730  11     -none- list
731  11     -none- list
732  11     -none- list
733  11     -none- list
734  11     -none- list
735  11     -none- list
736  11     -none- list
737  11     -none- list
738  11     -none- list
739  11     -none- list
740  11     -none- list
741  11     -none- list
742  11     -none- list
743  11     -none- list
744  11     -none- list
745  11     -none- list
746  11     -none- list
747  11     -none- list
748  11     -none- list
749  11     -none- list
750  11     -none- list
751  11     -none- list
752  11     -none- list
753  11     -none- list
754  11     -none- list
755  11     -none- list
756  11     -none- list
757  11     -none- list
758  11     -none- list
759  11     -none- list
760  11     -none- list
761  11     -none- list
762  11     -none- list
763  11     -none- list
764  11     -none- list
765  11     -none- list
766  11     -none- list
767  11     -none- list
768  11     -none- list
769  11     -none- list
770  11     -none- list
771  11     -none- list
772  11     -none- list
773  11     -none- list
774  11     -none- list
775  11     -none- list
776  11     -none- list
777  11     -none- list
778  11     -none- list
779  11     -none- list
780  11     -none- list
781  11     -none- list
782  11     -none- list
783  11     -none- list
784  11     -none- list
785  11     -none- list
786  11     -none- list
787  11     -none- list
788  11     -none- list
789  11     -none- list
790  11     -none- list
791  11     -none- list
792  11     -none- list
793  11     -none- list
794  11     -none- list
795  11     -none- list
796  11     -none- list
797  11     -none- list
798  11     -none- list
799  11     -none- list
800  11     -none- list
801  11     -none- list
802  11     -none- list
803  11     -none- list
804  11     -none- list
805  11     -none- list
806  11     -none- list
807  11     -none- list
808  11     -none- list
809  11     -none- list
810  11     -none- list
811  11     -none- list
812  11     -none- list
813  11     -none- list
814  11     -none- list
815  11     -none- list
816  11     -none- list
817  11     -none- list
818  11     -none- list
819  11     -none- list
820  11     -none- list
821  11     -none- list
822  11     -none- list
823  11     -none- list
824  11     -none- list
825  11     -none- list
826  11     -none- list
827  11     -none- list
828  11     -none- list
829  11     -none- list
830  11     -none- list
831  11     -none- list
832  11     -none- list
833  11     -none- list
834  11     -none- list
835  11     -none- list
836  11     -none- list
837  11     -none- list
838  11     -none- list
839  11     -none- list
840  11     -none- list
841  11     -none- list
842  11     -none- list
843  11     -none- list
844  11     -none- list
845  11     -none- list
846  11     -none- list
847  11     -none- list
848  11     -none- list
849  11     -none- list
850  11     -none- list
851  11     -none- list
852  11     -none- list
853  11     -none- list
854  11     -none- list
855  11     -none- list
856  11     -none- list
857  11     -none- list
858  11     -none- list
859  11     -none- list
860  11     -none- list
861  11     -none- list
862  11     -none- list
863  11     -none- list
864  11     -none- list
865  11     -none- list
866  11     -none- list
867  11     -none- list
868  11     -none- list
869  11     -none- list
870  11     -none- list
871  11     -none- list
872  11     -none- list
873  11     -none- list
874  11     -none- list
875  11     -none- list
876  11     -none- list
877  11     -none- list
878  11     -none- list
879  11     -none- list
880  11     -none- list
881  11     -none- list
882  11     -none- list
883  11     -none- list
884  11     -none- list
885  11     -none- list
886  11     -none- list
887  11     -none- list
888  11     -none- list
889  11     -none- list
890  11     -none- list
891  11     -none- list
892  11     -none- list
893  11     -none- list
894  11     -none- list
895  11     -none- list
896  11     -none- list
897  11     -none- list
898  11     -none- list
899  11     -none- list
900  11     -none- list
901  11     -none- list
902  11     -none- list
903  11     -none- list
904  11     -none- list
905  11     -none- list
906  11     -none- list
907  11     -none- list
908  11     -none- list
909  11     -none- list
910  11     -none- list
911  11     -none- list
912  11     -none- list
913  11     -none- list
914  11     -none- list
915  11     -none- list
916  11     -none- list
917  11     -none- list
918  11     -none- list
919  11     -none- list
920  11     -none- list
921  11     -none- list
922  11     -none- list
923  11     -none- list
924  11     -none- list
925  11     -none- list
926  11     -none- list
927  11     -none- list
928  11     -none- list
929  11     -none- list
930  11     -none- list
931  11     -none- list
932  11     -none- list
933  11     -none- list
934  11     -none- list
935  11     -none- list
936  11     -none- list
937  11     -none- list
938  11     -none- list
939  11     -none- list
940  11     -none- list
941  11     -none- list
942  11     -none- list
943  11     -none- list
944  11     -none- list
945  11     -none- list
946  11     -none- list
947  11     -none- list
948  11     -none- list
949  11     -none- list
950  11     -none- list
951  11     -none- list
952  11     -none- list
953  11     -none- list
954  11     -none- list
955  11     -none- list
956  11     -none- list
957  11     -none- list
958  11     -none- list
959  11     -none- list
960  11     -none- list
961  11     -none- list
962  11     -none- list
963  11     -none- list
964  11     -none- list
965  11     -none- list
966  11     -none- list
967  11     -none- list
968  11     -none- list
969  11     -none- list
970  11     -none- list
971  11     -none- list
972  11     -none- list
973  11     -none- list
974  11     -none- list
975  11     -none- list
976  11     -none- list
977  11     -none- list
978  11     -none- list
979  11     -none- list
980  11     -none- list
981  11     -none- list
982  11     -none- list
983  11     -none- list
984  11     -none- list
985  11     -none- list
986  11     -none- list
987  11     -none- list
988  11     -none- list
989  11     -none- list
990  11     -none- list
991  11     -none- list
992  11     -none- list
993  11     -none- list
994  11     -none- list
995  11     -none- list
996  11     -none- list
997  11     -none- list
998  11     -none- list
999  11     -none- list
1000 11     -none- list
1001 11     -none- list
1002 11     -none- list
1003 11     -none- list
1004 11     -none- list
1005 11     -none- list
1006 11     -none- list
1007 11     -none- list
1008 11     -none- list
1009 11     -none- list
1010 11     -none- list
1011 11     -none- list
1012 11     -none- list
1013 11     -none- list
1014 11     -none- list
1015 11     -none- list
1016 11     -none- list
1017 11     -none- list
1018 11     -none- list
1019 11     -none- list
1020 11     -none- list
1021 11     -none- list
1022 11     -none- list
1023 11     -none- list
1024 11     -none- list
1025 11     -none- list
1026 11     -none- list
1027 11     -none- list
1028 11     -none- list
1029 11     -none- list
1030 11     -none- list
1031 11     -none- list
1032 11     -none- list
1033 11     -none- list
1034 11     -none- list
1035 11     -none- list
1036 11     -none- list
1037 11     -none- list
1038 11     -none- list
1039 11     -none- list
1040 11     -none- list
1041 11     -none- list
1042 11     -none- list
1043 11     -none- list
1044 11     -none- list
1045 11     -none- list
1046 11     -none- list
1047 11     -none- list
1048 11     -none- list
1049 11     -none- list
1050 11     -none- list
1051 11     -none- list
1052 11     -none- list
1053 11     -none- list
1054 11     -none- list
1055 11     -none- list
1056 11     -none- list
1057 11     -none- list
1058 11     -none- list
1059 11     -none- list
1060 11     -none- list
1061 11     -none- list
1062 11     -none- list
1063 11     -none- list
1064 11     -none- list
1065 11     -none- list
1066 11     -none- list
1067 11     -none- list
1068 11     -none- list
1069 11     -none- list
1070 11     -none- list
1071 11     -none- list
1072 11     -none- list
1073 11     -none- list
1074 11     -none- list
1075 11     -none- list
1076 11     -none- list
1077 11     -none- list
1078 11     -none- list
1079 11     -none- list
1080 11     -none- list
1081 11     -none- list
1082 11     -none- list
1083 11     -none- list
1084 11     -none- list
1085 11     -none- list
1086 11     -none- list
1087 11     -none- list
1088 11     -none- list
1089 11     -none- list
1090 11     -none- list
1091 11     -none- list
1092 11     -none- list
1093 11     -none- list
1094 11     -none- list
1095 11     -none- list
1096 11     -none- list
1097 11     -none- list
1098 11     -none- list
1099 11     -none- list
1100 11     -none- list
1101 11     -none- list
1102 11     -none- list
1103 11     -none- list
1104 11     -none- list
1105 11     -none- list
1106 11     -none- list
1107 11     -none- list
1108 11     -none- list
1109 11     -none- list
1110 11     -none- list
1111 11     -none- list
1112 11     -none- list
1113 11     -none- list
1114 11     -none- list
1115 11     -none- list
1116 11     -none- list
1117 11     -none- list
1118 11     -none- list
1119 11     -none- list
1120 11     -none- list
1121 11     -none- list
1122 11     -none- list
1123 11     -none- list
1124 11     -none- list
1125 11     -none- list
1126 11     -none- list
1127 11     -none- list
1128 11     -none- list
1129 11     -none- list
1130 11     -none- list
1131 11     -none- list
1132 11     -none- list
1133 11     -none- list
1134 11     -none- list
1135 11     -none- list
1136 11     -none- list
1137 11     -none- list
1138 11     -none- list
1139 11     -none- list
1140 11     -none- list
1141 11     -none- list
1142 11     -none- list
1143 11     -none- list
1144 11     -none- list
1145 11     -none- list
1146 11     -none- list
1147 11     -none- list
1148 11     -none- list
1149 11     -none- list
1150 11     -none- list
1151 11     -none- list
1152 11     -none- list
1153 11     -none- list
1154 11     -none- list
1155 11     -none- list
1156 11     -none- list
1157 11     -none- list
1158 11     -none- list
1159 11     -none- list
1160 11     -none- list
1161 11     -none- list
1162 11     -none- list
1163 11     -none- list
1164 11     -none- list
1165 11     -none- list
1166 11     -none- list
1167 11     -none- list
1168 11     -none- list
1169 11     -none- list
1170 11     -none- list
1171 11     -none- list
1172 11     -none- list
1173 11     -none- list
1174 11     -none- list
1175 11     -none- list
1176 11     -none- list
1177 11     -none- list
1178 11     -none- list
1179 11     -none- list
1180 11     -none- list
1181 11     -none- list
1182 11     -none- list
1183 11     -none- list
1184 11     -none- list
1185 11     -none- list
1186 11     -none- list
1187 11     -none- list
1188 11     -none- list
1189 11     -none- list
1190 11     -none- list
1191 11     -none- list
1192 11     -none- list
1193 11     -none- list
1194 11     -none- list
1195 11     -none- list
1196 11     -none- list
1197 11     -none- list
1198 11     -none- list
1199 11     -none- list
1200 11     -none- list
1201 11     -none- list
1202 11     -none- list
1203 11     -none- list
1204 11     -none- list
1205 11     -none- list
1206 11     -none- list
1207 11     -none- list
1208 11     -none- list
1209 11     -none- list
1210 11     -none- list
1211 11     -none- list
1212 11     -none- list
1213 11     -none- list
1214 11     -none- list
1215 11     -none- list
1216 11     -none- list
1217 11     -none- list
1218 11     -none- list
1219 11     -none- list
1220 11     -none- list
1221 11     -none- list
1222 11     -none- list
1223 11     -none- list
1224 11     -none- list
1225 11     -none- list
1226 11     -none- list
1227 11     -none- list
1228 11     -none- list
1229 11     -none- list
1230 11     -none- list
1231 11     -none- list
1232 11     -none- list
1233 11     -none- list
1234 11     -none- list
1235 11     -none- list
1236 11     -none- list
1237 11     -none- list
1238 11     -none- list
1239 11     -none- list
1240 11     -none- list
1241 11     -none- list
1242 11     -none- list
1243 11     -none- list
1244 11     -none- list
1245 11     -none- list
1246 11     -none- list
1247 11     -none- list
1248 11     -none- list
1249 11     -none- list
1250 11     -none- list
1251 11     -none- list
1252 11     -none- list
1253 11     -none- list
1254 11     -none- list
1255 11     -none- list
1256 11     -none- list
1257 11     -none- list
1258 11     -none- list
1259 11     -none- list
1260 11     -none- list
1261 11     -none- list
1262 11     -none- list
1263 11     -none- list
1264 11     -none- list
1265 11     -none- list
1266 11     -none- list
1267 11     -none- list
1268 11     -none- list
1269 11     -none- list
1270 11     -none- list
1271 11     -none- list
1272 11     -none- list
1273 11     -none- list
1274 11     -none- list
1275 11     -none- list
1276 11     -none- list
1277 11     -none- list
1278 11     -none- list
1279 11     -none- list
1280 11     -none- list
1281 11     -none- list
1282 11     -none- list
1283 11     -none- list
1284 11     -none- list
1285 11     -none- list
1286 11     -none- list
1287 11     -none- list
1288 11     -none- list
1289 11     -none- list
1290 11     -none- list
1291 11     -none- list
1292 11     -none- list
1293 11     -none- list
1294 11     -none- list
1295 11     -none- list
1296 11     -none- list
1297 11     -none- list
1298 11     -none- list
1299 11     -none- list
1300 11     -none- list
1301 11     -none- list
1302 11     -none- list
1303 11     -none- list
1304 11     -none- list
1305 11     -none- list
1306 11     -none- list
1307 11     -none- list
1308 11     -none- list
1309 11     -none- list
1310 11     -none- list
1311 11     -none- list
1312 11     -none- list
1313 11     -none- list
1314 11     -none- list
1315 11     -none- list
1316 11     -none- list
1317 11     -none- list
1318 11     -none- list
1319 11     -none- list
1320 11     -none- list
1321 11     -none- list
1322 11     -none- list
1323 11     -none- list
1324 11     -none- list
1325 11     -none- list
1326 11     -none- list
1327 11     -none- list
1328 11     -none- list
1329 11     -none- list
1330 11     -none- list
1331 11     -none- list
1332 11     -none- list
1333 11     -none- list
1334 11     -none- list
1335 11     -none- list
1336 11     -none- list
1337 11     -none- list
1338 11     -none- list
1339 11     -none- list
1340 11     -none- list
1341 11     -none- list
1342 11     -none- list
1343 11     -none- list
1344 11     -none- list
1345 11     -none- list
1346 11     -none- list
1347 11     -none- list
1348 11     -none- list
1349 11     -none- list
1350 11     -none- list
1351 11     -none- list
1352 11     -none- list
1353 11     -none- list
1354 11     -none- list
1355 11     -none- list
1356 11     -none- list
1357 11     -none- list
1358 11     -none- list
1359 11     -none- list
1360 11     -none- list
1361 11     -none- list
1362 11     -none- list
1363 11     -none- list
1364 11     -none- list
1365 11     -none- list
1366 11     -none- list
1367 11     -none- list
1368 11     -none- list
1369 11     -none- list
1370 11     -none- list
1371 11     -none- list
1372 11     -none- list
1373 11     -none- list
1374 11     -none- list
1375 11     -none- list
1376 11     -none- list
1377 11     -none- list
1378 11     -none- list
1379 11     -none- list
1380 11     -none- list
1381 11     -none- list
1382 11     -none- list
1383 11     -none- list
1384 11     -none- list
1385 11     -none- list
1386 11     -none- list
1387 11     -none- list
1388 11     -none- list
1389 11     -none- list
1390 11     -none- list
1391 11     -none- list
1392 11     -none- list
1393 11     -none- list
1394 11     -none- list
1395 11     -none- list
1396 11     -none- list
1397 11     -none- list
1398 11     -none- list
1399 11     -none- list
1400 11     -none- list
1401 11     -none- list
1402 11     -none- list
1403 11     -none- list
1404 11     -none- list
1405 11     -none- list
1406 11     -none- list
1407 11     -none- list
1408 11     -none- list
1409 11     -none- list
1410 11     -none- list
1411 11     -none- list
1412 11     -none- list
1413 11     -none- list
1414 11     -none- list
1415 11     -none- list
1416 11     -none- list
1417 11     -none- list
1418 11     -none- list
1419 11     -none- list
1420 11     -none- list
1421 11     -none- list
1422 11     -none- list
1423 11     -none- list
1424 11     -none- list
1425 11     -none- list
1426 11     -none- list
1427 11     -none- list
1428 11     -none- list
1429 11     -none- list
1430 11     -none- list
1431 11     -none- list
1432 11     -none- list
1433 11     -none- list
1434 11     -none- list
1435 11     -none- list
1436 11     -none- list
1437 11     -none- list
1438 11     -none- list
1439 11     -none- list
1440 11     -none- list
1441 11     -none- list
1442 11     -none- list
1443 11     -none- list
1444 11     -none- list
1445 11     -none- list
1446 11     -none- list
1447 11     -none- list
1448 11     -none- list
1449 11     -none- list
1450 11     -none- list
1451 11     -none- list
1452 11     -none- list
1453 11     -none- list
1454 11     -none- list
1455 11     -none- list
1456 11     -none- list
1457 11     -none- list
1458 11     -none- list
1459 11     -none- list
1460 11     -none- list
1461 11     -none- list
1462 11     -none- list
1463 11     -none- list
1464 11     -none- list
1465 11     -none- list
1466 11     -none- list
1467 11     -none- list
1468 11     -none- list
1469 11     -none- list
1470 11     -none- list
1471 11     -none- list
1472 11     -none- list
1473 11     -none- list
1474 11     -none- list
1475 11     -none- list
1476 11     -none- list
1477 11     -none- list
1478 11     -none- list
1479 11     -none- list
1480 11     -none- list
1481 11     -none- list
1482 11     -none- list
1483 11     -none- list
1484 11     -none- list
1485 11     -none- list
1486 11     -none- list
1487 11     -none- list
1488 11     -none- list
1489 11     -none- list
1490 11     -none- list
1491 11     -none- list
1492 11     -none- list
1493 11     -none- list
1494 11     -none- list
1495 11     -none- list
1496 11     -none- list
1497 11     -none- list
1498 11     -none- list
1499 11     -none- list
1500 11     -none- list
1501 11     -none- list
1502 11     -none- list
1503 11     -none- list
1504 11     -none- list
1505 11     -none- list
1506 11     -none- list
1507 11     -none- list
1508 11     -none- list
1509 11     -none- list
1510 11     -none- list
1511 11     -none- list
1512 11     -none- list
1513 11     -none- list
1514 11     -none- list
1515 11     -none- list
1516 11     -none- list
1517 11     -none- list
1518 11     -none- list
1519 11     -none- list
1520 11     -none- list
1521 11     -none- list
1522 11     -none- list
1523 11     -none- list
1524 11     -none- list
1525 11     -none- list
1526 11     -none- list
1527 11     -none- list
1528 11     -none- list
1529 11     -none- list
1530 11     -none- list
1531 11     -none- list
1532 11     -none- list
1533 11     -none- list
1534 11     -none- list
1535 11     -none- list
1536 11     -none- list
1537 11     -none- list
1538 11     -none- list
1539 11     -none- list
1540 11     -none- list
1541 11     -none- list
1542 11     -none- list
1543 11     -none- list
1544 11     -none- list
1545 11     -none- list
1546 11     -none- list
1547 11     -none- list
1548 11     -none- list
1549 11     -none- list
1550 11     -none- list
1551 11     -none- list
1552 11     -none- list
1553 11     -none- list
1554 11     -none- list
1555 11     -none- list
1556 11     -none- list
1557 11     -none- list
1558 11     -none- list
1559 11     -none- list
1560 11     -none- list
1561 11     -none- list
1562 11     -none- list
1563 11     -none- list
1564 11     -none- list
1565 11     -none- list
1566 11     -none- list
1567 11     -none- list
1568 11     -none- list
1569 11     -none- list
1570 11     -none- list
1571 11     -none- list
1572 11     -none- list
1573 11     -none- list
1574 11     -none- list
1575 11     -none- list
1576 11     -none- list
1577 11     -none- list
1578 11     -none- list
1579 11     -none- list
1580 11     -none- list
1581 11     -none- list
1582 11     -none- list
1583 11     -none- list
1584 11     -none- list
1585 11     -none- list
1586 11     -none- list
1587 11     -none- list
1588 11     -none- list
1589 11     -none- list
1590 11     -none- list
1591 11     -none- list
1592 11     -none- list
1593 11     -none- list
1594 11     -none- list
1595 11     -none- list
1596 11     -none- list
1597 11     -none- list
1598 11     -none- list
1599 11     -none- list
1600 11     -none- list
1601 11     -none- list
1602 11     -none- list
1603 11     -none- list
1604 11     -none- list
1605 11     -none- list
1606 11     -none- list
1607 11     -none- list
1608 11     -none- list
1609 11     -none- list
1610 11     -none- list
1611 11     -none- list
1612 11     -none- list
1613 11     -none- list
1614 11     -none- list
1615 11     -none- list
1616 11     -none- list
1617 11     -none- list
1618 11     -none- list
1619 11     -none- list
1620 11     -none- list
1621 11     -none- list
1622 11     -none- list
1623 11     -none- list
1624 11     -none- list
1625 11     -none- list
1626 11     -none- list
1627 11     -none- list
1628 11     -none- list
1629 11     -none- list
1630 11     -none- list
1631 11     -none- list
1632 11     -none- list
1633 11     -none- list
1634 11     -none- list
1635 11     -none- list
1636 11     -none- list
1637 11     -none- list
1638 11     -none- list
1639 11     -none- list
1640 11     -none- list
1641 11     -none- list
1642 11     -none- list
1643 11     -none- list
1644 11     -none- list
1645 11     -none- list
1646 11     -none- list
1647 11     -none- list
1648 11     -none- list
1649 11     -none- list
1650 11     -none- list
1651 11     -none- list
1652 11     -none- list
1653 11     -none- list
1654 11     -none- list
1655 11     -none- list
1656 11     -none- list
1657 11     -none- list
1658 11     -none- list
1659 11     -none- list
1660 11     -none- list
1661 11     -none- list
1662 11     -none- list
1663 11     -none- list
1664 11     -none- list
1665 11     -none- list
1666 11     -none- list
1667 11     -none- list
1668 11     -none- list
1669 11     -none- list
1670 11     -none- list
1671 11     -none- list
1672 11     -none- list
1673 11     -none- list
1674 11     -none- list
1675 11     -none- list
1676 11     -none- list
1677 11     -none- list
1678 11     -none- list
1679 11     -none- list
1680 11     -none- list
1681 11     -none- list
1682 11     -none- list
1683 11     -none- list
1684 11     -none- list
1685 11     -none- list
1686 11     -none- list
1687 11     -none- list
1688 11     -none- list
1689 11     -none- list
1690 11     -none- list
1691 11     -none- list
1692 11     -none- list
1693 11     -none- list
1694 11     -none- list
1695 11     -none- list
1696 11     -none- list
1697 11     -none- list
1698 11     -none- list
1699 11     -none- list
1700 11     -none- list
1701 11     -none- list
1702 11     -none- list
1703 11     -none- list
1704 11     -none- list
1705 11     -none- list
1706 11     -none- list
1707 11     -none- list
1708 11     -none- list
1709 11     -none- list
1710 11     -none- list
1711 11     -none- list
1712 11     -none- list
1713 11     -none- list
1714 11     -none- list
1715 11     -none- list
1716 11     -none- list
1717 11     -none- list
1718 11     -none- list
1719 11     -none- list
1720 11     -none- list
1721 11     -none- list
1722 11     -none- list
1723 11     -none- list
1724 11     -none- list
1725 11     -none- list
1726 11     -none- list
1727 11     -none- list
1728 11     -none- list
1729 11     -none- list
1730 11     -none- list
1731 11     -none- list
1732 11     -none- list
1733 11     -none- list
1734 11     -none- list
1735 11     -none- list
1736 11     -none- list
1737 11     -none- list
1738 11     -none- list
1739 11     -none- list
1740 11     -none- list
1741 11     -none- list
1742 11     -none- list
1743 11     -none- list
1744 11     -none- list
1745 11     -none- list
1746 11     -none- list
1747 11     -none- list
1748 11     -none- list
1749 11     -none- list
1750 11     -none- list
1751 11     -none- list
1752 11     -none- list
1753 11     -none- list
1754 11     -none- list
1755 11     -none- list
1756 11     -none- list
1757 11     -none- list
1758 11     -none- list
1759 11     -none- list
1760 11     -none- list
1761 11     -none- list
1762 11     -none- list
1763 11     -none- list
1764 11     -none- list
1765 11     -none- list
1766 11     -none- list
1767 11     -none- list
1768 11     -none- list
1769 11     -none- list
1770 11     -none- list
1771 11     -none- list
1772 11     -none- list
1773 11     -none- list
1774 11     -none- list
1775 11     -none- list
1776 11     -none- list
1777 11     -none- list
1778 11     -none- list
1779 11     -none- list
1780 11     -none- list
1781 11     -none- list
1782 11     -none- list
1783 11     -none- list
1784 11     -none- list
1785 11     -none- list
1786 11     -none- list
1787 11     -none- list
1788 11     -none- list
1789 11     -none- list
1790 11     -none- list
1791 11     -none- list
1792 11     -none- list
1793 11     -none- list
1794 11     -none- list
1795 11     -none- list
1796 11     -none- list
1797 11     -none- list
1798 11     -none- list
1799 11     -none- list
1800 11     -none- list
1801 11     -none- list
1802 11     -none- list
1803 11     -none- list
1804 11     -none- list
1805 11     -none- list
1806 11     -none- list
1807 11     -none- list
1808 11     -none- list
1809 11     -none- list
1810 11     -none- list
1811 11     -none- list
1812 11     -none- list
1813 11     -none- list
1814 11     -none- list
1815 11     -none- list
1816 11     -none- list
1817 11     -none- list
1818 11     -none- list
1819 11     -none- list
1820 11     -none- list
1821 11     -none- list
1822 11     -none- list
1823 11     -none- list
1824 11     -none- list
1825 11     -none- list
1826 11     -none- list
1827 11     -none- list
1828 11     -none- list
1829 11     -none- list
1830 11     -none- list
1831 11     -none- list
1832 11     -none- list
1833 11     -none- list
1834 11     -none- list
1835 11     -none- list
1836 11     -none- list
1837 11     -none- list
1838 11     -none- list
1839 11     -none- list
1840 11     -none- list
1841 11     -none- list
1842 11     -none- list
1843 11     -none- list
1844 11     -none- list
1845 11     -none- list
1846 11     -none- list
1847 11     -none- list
1848 11     -none- list
1849 11     -none- list
1850 11     -none- list
1851 11     -none- list
1852 11     -none- list
1853 11     -none- list
1854 11     -none- list
1855 11     -none- list
1856 11     -none- list
1857 11     -none- list
1858 11     -none- list
1859 11     -none- list
1860 11     -none- list
1861 11     -none- list
1862 11     -none- list
1863 11     -none- list
1864 11     -none- list
1865 11     -none- list
1866 11     -none- list
1867 11     -none- list
1868 11     -none- list
1869 11     -none- list
1870 11     -none- list
1871 11     -none- list
1872 11     -none- list
1873 11     -none- list
1874 11     -none- list
1875 11     -none- list
1876 11     -none- list
1877 11     -none- list
1878 11     -none- list
1879 11     -none- list
1880 11     -none- list
1881 11     -none- list
1882 11     -none- list
1883 11     -none- list
1884 11     -none- list
1885 11     -none- list
1886 11     -none- list
1887 11     -none- list
1888 11     -none- list
1889 11     -none- list
1890 11     -none- list
1891 11     -none- list
1892 11     -none- list
1893 11     -none- list
1894 11     -none- list
1895 11     -none- list
1896 11     -none- list
1897 11     -none- list
1898 11     -none- list
1899 11     -none- list
1900 11     -none- list
1901 11     -none- list
1902 11     -none- list
1903 11     -none- list
1904 11     -none- list
1905 11     -none- list
1906 11     -none- list
1907 11     -none- list
1908 11     -none- list
1909 11     -none- list
1910 11     -none- list
1911 11     -none- list
> 
> 
> ##### here is the function that plots seven points with a lowes line for each statistic
> plot.fn<-function(pos1=1, value1=5, pos2=2,value2=5,pos3=5,func="med"){
+ 
+ 
+ #pos1=5; value1=0; pos2=2; value2=5; pos3=2
+ 
+ # alpha<-c(10,5,3)
+ #  if (models>3){alpha<-c(alpha, rep(1, models-3))}
+ # a.mean <- alpha/sum(alpha) # ?
+   
+ 
+ slots<-NA
+ count<-0
+ for(i in 1:1911){
+  if(output[[i]]$theseParams[pos1]==value1 & output[[i]]$theseParams[pos2]==value2){
+  count<-count+1
+  slots[count]<-i} 
+  }
+ error.mat<-mae.mat<-rmse.mat<-mad.mat<-rmsle.mat <- mape.mat <- meape.mat <- mrae.mat <- pw.mat <- crps.mat <- matrix(NA,nrow=length(slots),ncol=100)
+ 
+ x.axis <- rep(NA, length(slots))
+ count <- 1
+ for(i in slots){
+   print(i)
+   x.axis[count] <- output[[i]]$theseParams[pos3]
+   count <- count+1
+ }
+ 
+ for(i in slots){
+  count<-which(slots==i)
+         errror.all.mat<-abs(output[[i]]$error)#%*%a.mean
+  #error.all.mat<-rowSums(abs(output[[i]]$error))
+  error.mat[count,]<-output[[i]]$error[,1]
+  rmse.mat[count,]<-output[[i]]$pred.rmse[,"EBMA"]
+  mae.mat[count,]<-output[[i]]$pred.mae[,"EBMA"]
+         mad.mat[count,]<-output[[i]]$pred.mad[,"EBMA"]
+         rmsle.mat[count,] <- output[[i]]$pred.rmsle[,"EBMA"]
+         mape.mat[count,] <- output[[i]]$pred.mape[,"EBMA"]
+         meape.mat[count,] <- output[[i]]$pred.meape[,"EBMA"]
+         mrae.mat[count,] <- output[[i]]$pred.mrae[,"EBMA"]
+         pw.mat[count,] <- output[[i]]$pred.pw[,"EBMA"]
+         crps.mat[count,] <- output[[i]]$model.crps
+ }
+ 
+ if(func=="med"){
+  error.all<-apply(abs(error.mat),1,FUN=median,na.rm=TRUE)
+  error<-(apply(error.mat,1,FUN=median, na.rm=TRUE))
+  rmse<-abs(apply(rmse.mat,1,FUN=median, na.rm=TRUE))
+  mae<-abs(apply(mae.mat,1,FUN=median, na.rm=TRUE))
+        mad<-abs(apply(mad.mat,1,FUN=median, na.rm=TRUE))
+         rmsle<-abs(apply(rmsle.mat,1,FUN=median, na.rm=TRUE))
+         mape<-abs(apply(mape.mat,1,FUN=median, na.rm=TRUE))
+         meape<-abs(apply(meape.mat,1,FUN=median, na.rm=TRUE))
+         mrae<-abs(apply(mrae.mat,1,FUN=median, na.rm=TRUE))
+         pw<-abs(apply(pw.mat,1,FUN=median, na.rm=TRUE))
+         crps<-abs(apply(crps.mat,1,FUN=median, na.rm=TRUE))
+       }
+ 
+ if(func=="mea"){
+  error.all<-apply(abs(error.mat),1,FUN=mean,na.rm=TRUE)
+  error<-(apply(error.mat,1,FUN=mean, na.rm=TRUE))
+  rmse<-abs(apply(rmse.mat,1,FUN=mean, na.rm=TRUE))
+  mae<-abs(apply(mae.mat,1,FUN=mean, na.rm=TRUE))
+        mad<-abs(apply(mad.mat,1,FUN=mean, na.rm=TRUE))
+         rmsle<-abs(apply(rmsle.mat,1,FUN=mean, na.rm=TRUE))
+         mape<-abs(apply(mape.mat,1,FUN=mean, na.rm=TRUE))
+         meape<-abs(apply(meape.mat,1,FUN=mean, na.rm=TRUE))
+         mrae<-abs(apply(mrae.mat,1,FUN=mean, na.rm=TRUE))
+         pw<-abs(apply(pw.mat,1,FUN=mean, na.rm=TRUE))
+         crps<-abs(apply(crps.mat,1,FUN=mean, na.rm=TRUE))
+       }
+ 
+ 
+ 
+ 
+ plot(x.axis, crps, xlim=c(4.5, 10), xlab="CRPS", ylab="N_T", main=paste("K=", value3))
+  
+ 
+ #par(mfrow=c(3,3))
+ #plot(c,error.all,pch=15,main="Weighted Weight Error (all)")
+ #lines(loess(error.all~c))
+ #plot(c,error,pch=15,main="Weight Error (largest weight model)")
+ #abline(h=0)
+ #lines(loess(error~c))
+ #plot(c,crps,pch=15,main="CRPS")
+ #lines(loess(crps~c))
+ #plot(c,mae,pch=15,main="MAE")
+ #lines(loess(mae~c))
+ #plot(c,rmse,pch=15,main="RMSE")
+ #lines(loess(rmse~c))
+ #plot(c,mape,pch=15,main="MAPE")
+ #lines(loess(mape~c))
+ #plot(c,meape,pch=15,main="MEAPE")
+ #lines(loess(meape~c))
+ #plot(c,mrae,pch=15,main="MRAE")
+ #lines(loess(mrae~c))
+ #plot(c,pw,pch=15,main="PW")
+ #lines(loess(pw~c))
+ 
+ 
+ 
+ }
> 
> 
> 
> par(mfrow=c(3,1))
> plot.fn(pos1=5, value1=0, pos2=2, value2=3, pos3=1)
[1] 1
[1] 2
[1] 3
[1] 4
[1] 5
[1] 6
[1] 7
[1] 8
[1] 9
[1] 10
[1] 11
[1] 12
[1] 13
[1] 14
[1] 15
[1] 16
[1] 17
[1] 18
[1] 19
[1] 20
[1] 21
Error in paste("K=", value3) : object 'value3' not found
> plot.fn(pos1=5, value1=0, pos2=2, value2=9, pos3=1)
[1] 64
[1] 65
[1] 66
[1] 67
[1] 68
[1] 69
[1] 70
[1] 71
[1] 72
[1] 73
[1] 74
[1] 75
[1] 76
[1] 77
[1] 78
[1] 79
[1] 80
[1] 81
[1] 82
[1] 83
[1] 84
Error in paste("K=", value3) : object 'value3' not found
> plot.fn(pos1=5, value1=0, pos2=2, value2=15, pos3=1)
[1] 127
[1] 128
[1] 129
[1] 130
[1] 131
[1] 132
[1] 133
[1] 134
[1] 135
[1] 136
[1] 137
[1] 138
[1] 139
[1] 140
[1] 141
[1] 142
[1] 143
[1] 144
[1] 145
[1] 146
[1] 147
Error in paste("K=", value3) : object 'value3' not found
> 
> 
> #nTrain<-c(3:15,20,25,35,45,55,65,85,100)
> #nmod<-seq(3,15, by=2)
> #constant<-c(0,.01, 0.02,.025, 0.03, 0.04, .05, 0.075, 0.1, 0.15, 0.2, 0.3, .5)
> #iter<-100
> #outSample<-250
> 
> rm(list=ls(all=TRUE))
> 
> #setwd("~/Documents/GitHub/EBMAforecast/APSA_2012/Simulations")
> setwd("~/Github/EBMAforecast/APSA_2012/Simulations")
> 
> load("SecondRound")
> objects()
[1] "output"
> 
> summary(output)
     Length Class  Mode
1    11     -none- list
2    11     -none- list
3    11     -none- list
4    11     -none- list
5    11     -none- list
6    11     -none- list
7    11     -none- list
8    11     -none- list
9    11     -none- list
10   11     -none- list
11   11     -none- list
12   11     -none- list
13   11     -none- list
14   11     -none- list
15   11     -none- list
16   11     -none- list
17   11     -none- list
18   11     -none- list
19   11     -none- list
20   11     -none- list
21   11     -none- list
22   11     -none- list
23   11     -none- list
24   11     -none- list
25   11     -none- list
26   11     -none- list
27   11     -none- list
28   11     -none- list
29   11     -none- list
30   11     -none- list
31   11     -none- list
32   11     -none- list
33   11     -none- list
34   11     -none- list
35   11     -none- list
36   11     -none- list
37   11     -none- list
38   11     -none- list
39   11     -none- list
40   11     -none- list
41   11     -none- list
42   11     -none- list
43   11     -none- list
44   11     -none- list
45   11     -none- list
46   11     -none- list
47   11     -none- list
48   11     -none- list
49   11     -none- list
50   11     -none- list
51   11     -none- list
52   11     -none- list
53   11     -none- list
54   11     -none- list
55   11     -none- list
56   11     -none- list
57   11     -none- list
58   11     -none- list
59   11     -none- list
60   11     -none- list
61   11     -none- list
62   11     -none- list
63   11     -none- list
64   11     -none- list
65   11     -none- list
66   11     -none- list
67   11     -none- list
68   11     -none- list
69   11     -none- list
70   11     -none- list
71   11     -none- list
72   11     -none- list
73   11     -none- list
74   11     -none- list
75   11     -none- list
76   11     -none- list
77   11     -none- list
78   11     -none- list
79   11     -none- list
80   11     -none- list
81   11     -none- list
82   11     -none- list
83   11     -none- list
84   11     -none- list
85   11     -none- list
86   11     -none- list
87   11     -none- list
88   11     -none- list
89   11     -none- list
90   11     -none- list
91   11     -none- list
92   11     -none- list
93   11     -none- list
94   11     -none- list
95   11     -none- list
96   11     -none- list
97   11     -none- list
98   11     -none- list
99   11     -none- list
100  11     -none- list
101  11     -none- list
102  11     -none- list
103  11     -none- list
104  11     -none- list
105  11     -none- list
106  11     -none- list
107  11     -none- list
108  11     -none- list
109  11     -none- list
110  11     -none- list
111  11     -none- list
112  11     -none- list
113  11     -none- list
114  11     -none- list
115  11     -none- list
116  11     -none- list
117  11     -none- list
118  11     -none- list
119  11     -none- list
120  11     -none- list
121  11     -none- list
122  11     -none- list
123  11     -none- list
124  11     -none- list
125  11     -none- list
126  11     -none- list
127  11     -none- list
128  11     -none- list
129  11     -none- list
130  11     -none- list
131  11     -none- list
132  11     -none- list
133  11     -none- list
134  11     -none- list
135  11     -none- list
136  11     -none- list
137  11     -none- list
138  11     -none- list
139  11     -none- list
140  11     -none- list
141  11     -none- list
142  11     -none- list
143  11     -none- list
144  11     -none- list
145  11     -none- list
146  11     -none- list
147  11     -none- list
148  11     -none- list
149  11     -none- list
150  11     -none- list
151  11     -none- list
152  11     -none- list
153  11     -none- list
154  11     -none- list
155  11     -none- list
156  11     -none- list
157  11     -none- list
158  11     -none- list
159  11     -none- list
160  11     -none- list
161  11     -none- list
162  11     -none- list
163  11     -none- list
164  11     -none- list
165  11     -none- list
166  11     -none- list
167  11     -none- list
168  11     -none- list
169  11     -none- list
170  11     -none- list
171  11     -none- list
172  11     -none- list
173  11     -none- list
174  11     -none- list
175  11     -none- list
176  11     -none- list
177  11     -none- list
178  11     -none- list
179  11     -none- list
180  11     -none- list
181  11     -none- list
182  11     -none- list
183  11     -none- list
184  11     -none- list
185  11     -none- list
186  11     -none- list
187  11     -none- list
188  11     -none- list
189  11     -none- list
190  11     -none- list
191  11     -none- list
192  11     -none- list
193  11     -none- list
194  11     -none- list
195  11     -none- list
196  11     -none- list
197  11     -none- list
198  11     -none- list
199  11     -none- list
200  11     -none- list
201  11     -none- list
202  11     -none- list
203  11     -none- list
204  11     -none- list
205  11     -none- list
206  11     -none- list
207  11     -none- list
208  11     -none- list
209  11     -none- list
210  11     -none- list
211  11     -none- list
212  11     -none- list
213  11     -none- list
214  11     -none- list
215  11     -none- list
216  11     -none- list
217  11     -none- list
218  11     -none- list
219  11     -none- list
220  11     -none- list
221  11     -none- list
222  11     -none- list
223  11     -none- list
224  11     -none- list
225  11     -none- list
226  11     -none- list
227  11     -none- list
228  11     -none- list
229  11     -none- list
230  11     -none- list
231  11     -none- list
232  11     -none- list
233  11     -none- list
234  11     -none- list
235  11     -none- list
236  11     -none- list
237  11     -none- list
238  11     -none- list
239  11     -none- list
240  11     -none- list
241  11     -none- list
242  11     -none- list
243  11     -none- list
244  11     -none- list
245  11     -none- list
246  11     -none- list
247  11     -none- list
248  11     -none- list
249  11     -none- list
250  11     -none- list
251  11     -none- list
252  11     -none- list
253  11     -none- list
254  11     -none- list
255  11     -none- list
256  11     -none- list
257  11     -none- list
258  11     -none- list
259  11     -none- list
260  11     -none- list
261  11     -none- list
262  11     -none- list
263  11     -none- list
264  11     -none- list
265  11     -none- list
266  11     -none- list
267  11     -none- list
268  11     -none- list
269  11     -none- list
270  11     -none- list
271  11     -none- list
272  11     -none- list
273  11     -none- list
274  11     -none- list
275  11     -none- list
276  11     -none- list
277  11     -none- list
278  11     -none- list
279  11     -none- list
280  11     -none- list
281  11     -none- list
282  11     -none- list
283  11     -none- list
284  11     -none- list
285  11     -none- list
286  11     -none- list
287  11     -none- list
288  11     -none- list
289  11     -none- list
290  11     -none- list
291  11     -none- list
292  11     -none- list
293  11     -none- list
294  11     -none- list
295  11     -none- list
296  11     -none- list
297  11     -none- list
298  11     -none- list
299  11     -none- list
300  11     -none- list
301  11     -none- list
302  11     -none- list
303  11     -none- list
304  11     -none- list
305  11     -none- list
306  11     -none- list
307  11     -none- list
308  11     -none- list
309  11     -none- list
310  11     -none- list
311  11     -none- list
312  11     -none- list
313  11     -none- list
314  11     -none- list
315  11     -none- list
316  11     -none- list
317  11     -none- list
318  11     -none- list
319  11     -none- list
320  11     -none- list
321  11     -none- list
322  11     -none- list
323  11     -none- list
324  11     -none- list
325  11     -none- list
326  11     -none- list
327  11     -none- list
328  11     -none- list
329  11     -none- list
330  11     -none- list
331  11     -none- list
332  11     -none- list
333  11     -none- list
334  11     -none- list
335  11     -none- list
336  11     -none- list
337  11     -none- list
338  11     -none- list
339  11     -none- list
340  11     -none- list
341  11     -none- list
342  11     -none- list
343  11     -none- list
344  11     -none- list
345  11     -none- list
346  11     -none- list
347  11     -none- list
348  11     -none- list
349  11     -none- list
350  11     -none- list
351  11     -none- list
352  11     -none- list
353  11     -none- list
354  11     -none- list
355  11     -none- list
356  11     -none- list
357  11     -none- list
358  11     -none- list
359  11     -none- list
360  11     -none- list
361  11     -none- list
362  11     -none- list
363  11     -none- list
364  11     -none- list
365  11     -none- list
366  11     -none- list
367  11     -none- list
368  11     -none- list
369  11     -none- list
370  11     -none- list
371  11     -none- list
372  11     -none- list
373  11     -none- list
374  11     -none- list
375  11     -none- list
376  11     -none- list
377  11     -none- list
378  11     -none- list
379  11     -none- list
380  11     -none- list
381  11     -none- list
382  11     -none- list
383  11     -none- list
384  11     -none- list
385  11     -none- list
386  11     -none- list
387  11     -none- list
388  11     -none- list
389  11     -none- list
390  11     -none- list
391  11     -none- list
392  11     -none- list
393  11     -none- list
394  11     -none- list
395  11     -none- list
396  11     -none- list
397  11     -none- list
398  11     -none- list
399  11     -none- list
400  11     -none- list
401  11     -none- list
402  11     -none- list
403  11     -none- list
404  11     -none- list
405  11     -none- list
406  11     -none- list
407  11     -none- list
408  11     -none- list
409  11     -none- list
410  11     -none- list
411  11     -none- list
412  11     -none- list
413  11     -none- list
414  11     -none- list
415  11     -none- list
416  11     -none- list
417  11     -none- list
418  11     -none- list
419  11     -none- list
420  11     -none- list
421  11     -none- list
422  11     -none- list
423  11     -none- list
424  11     -none- list
425  11     -none- list
426  11     -none- list
427  11     -none- list
428  11     -none- list
429  11     -none- list
430  11     -none- list
431  11     -none- list
432  11     -none- list
433  11     -none- list
434  11     -none- list
435  11     -none- list
436  11     -none- list
437  11     -none- list
438  11     -none- list
439  11     -none- list
440  11     -none- list
441  11     -none- list
442  11     -none- list
443  11     -none- list
444  11     -none- list
445  11     -none- list
446  11     -none- list
447  11     -none- list
448  11     -none- list
449  11     -none- list
450  11     -none- list
451  11     -none- list
452  11     -none- list
453  11     -none- list
454  11     -none- list
455  11     -none- list
456  11     -none- list
457  11     -none- list
458  11     -none- list
459  11     -none- list
460  11     -none- list
461  11     -none- list
462  11     -none- list
463  11     -none- list
464  11     -none- list
465  11     -none- list
466  11     -none- list
467  11     -none- list
468  11     -none- list
469  11     -none- list
470  11     -none- list
471  11     -none- list
472  11     -none- list
473  11     -none- list
474  11     -none- list
475  11     -none- list
476  11     -none- list
477  11     -none- list
478  11     -none- list
479  11     -none- list
480  11     -none- list
481  11     -none- list
482  11     -none- list
483  11     -none- list
484  11     -none- list
485  11     -none- list
486  11     -none- list
487  11     -none- list
488  11     -none- list
489  11     -none- list
490  11     -none- list
491  11     -none- list
492  11     -none- list
493  11     -none- list
494  11     -none- list
495  11     -none- list
496  11     -none- list
497  11     -none- list
498  11     -none- list
499  11     -none- list
500  11     -none- list
501  11     -none- list
502  11     -none- list
503  11     -none- list
504  11     -none- list
505  11     -none- list
506  11     -none- list
507  11     -none- list
508  11     -none- list
509  11     -none- list
510  11     -none- list
511  11     -none- list
512  11     -none- list
513  11     -none- list
514  11     -none- list
515  11     -none- list
516  11     -none- list
517  11     -none- list
518  11     -none- list
519  11     -none- list
520  11     -none- list
521  11     -none- list
522  11     -none- list
523  11     -none- list
524  11     -none- list
525  11     -none- list
526  11     -none- list
527  11     -none- list
528  11     -none- list
529  11     -none- list
530  11     -none- list
531  11     -none- list
532  11     -none- list
533  11     -none- list
534  11     -none- list
535  11     -none- list
536  11     -none- list
537  11     -none- list
538  11     -none- list
539  11     -none- list
540  11     -none- list
541  11     -none- list
542  11     -none- list
543  11     -none- list
544  11     -none- list
545  11     -none- list
546  11     -none- list
547  11     -none- list
548  11     -none- list
549  11     -none- list
550  11     -none- list
551  11     -none- list
552  11     -none- list
553  11     -none- list
554  11     -none- list
555  11     -none- list
556  11     -none- list
557  11     -none- list
558  11     -none- list
559  11     -none- list
560  11     -none- list
561  11     -none- list
562  11     -none- list
563  11     -none- list
564  11     -none- list
565  11     -none- list
566  11     -none- list
567  11     -none- list
568  11     -none- list
569  11     -none- list
570  11     -none- list
571  11     -none- list
572  11     -none- list
573  11     -none- list
574  11     -none- list
575  11     -none- list
576  11     -none- list
577  11     -none- list
578  11     -none- list
579  11     -none- list
580  11     -none- list
581  11     -none- list
582  11     -none- list
583  11     -none- list
584  11     -none- list
585  11     -none- list
586  11     -none- list
587  11     -none- list
588  11     -none- list
589  11     -none- list
590  11     -none- list
591  11     -none- list
592  11     -none- list
593  11     -none- list
594  11     -none- list
595  11     -none- list
596  11     -none- list
597  11     -none- list
598  11     -none- list
599  11     -none- list
600  11     -none- list
601  11     -none- list
602  11     -none- list
603  11     -none- list
604  11     -none- list
605  11     -none- list
606  11     -none- list
607  11     -none- list
608  11     -none- list
609  11     -none- list
610  11     -none- list
611  11     -none- list
612  11     -none- list
613  11     -none- list
614  11     -none- list
615  11     -none- list
616  11     -none- list
617  11     -none- list
618  11     -none- list
619  11     -none- list
620  11     -none- list
621  11     -none- list
622  11     -none- list
623  11     -none- list
624  11     -none- list
625  11     -none- list
626  11     -none- list
627  11     -none- list
628  11     -none- list
629  11     -none- list
630  11     -none- list
631  11     -none- list
632  11     -none- list
633  11     -none- list
634  11     -none- list
635  11     -none- list
636  11     -none- list
637  11     -none- list
638  11     -none- list
639  11     -none- list
640  11     -none- list
641  11     -none- list
642  11     -none- list
643  11     -none- list
644  11     -none- list
645  11     -none- list
646  11     -none- list
647  11     -none- list
648  11     -none- list
649  11     -none- list
650  11     -none- list
651  11     -none- list
652  11     -none- list
653  11     -none- list
654  11     -none- list
655  11     -none- list
656  11     -none- list
657  11     -none- list
658  11     -none- list
659  11     -none- list
660  11     -none- list
661  11     -none- list
662  11     -none- list
663  11     -none- list
664  11     -none- list
665  11     -none- list
666  11     -none- list
667  11     -none- list
668  11     -none- list
669  11     -none- list
670  11     -none- list
671  11     -none- list
672  11     -none- list
673  11     -none- list
674  11     -none- list
675  11     -none- list
676  11     -none- list
677  11     -none- list
678  11     -none- list
679  11     -none- list
680  11     -none- list
681  11     -none- list
682  11     -none- list
683  11     -none- list
684  11     -none- list
685  11     -none- list
686  11     -none- list
687  11     -none- list
688  11     -none- list
689  11     -none- list
690  11     -none- list
691  11     -none- list
692  11     -none- list
693  11     -none- list
694  11     -none- list
695  11     -none- list
696  11     -none- list
697  11     -none- list
698  11     -none- list
699  11     -none- list
700  11     -none- list
701  11     -none- list
702  11     -none- list
703  11     -none- list
704  11     -none- list
705  11     -none- list
706  11     -none- list
707  11     -none- list
708  11     -none- list
709  11     -none- list
710  11     -none- list
711  11     -none- list
712  11     -none- list
713  11     -none- list
714  11     -none- list
715  11     -none- list
716  11     -none- list
717  11     -none- list
718  11     -none- list
719  11     -none- list
720  11     -none- list
721  11     -none- list
722  11     -none- list
723  11     -none- list
724  11     -none- list
725  11     -none- list
726  11     -none- list
727  11     -none- list
728  11     -none- list
729  11     -none- list
730  11     -none- list
731  11     -none- list
732  11     -none- list
733  11     -none- list
734  11     -none- list
735  11     -none- list
736  11     -none- list
737  11     -none- list
738  11     -none- list
739  11     -none- list
740  11     -none- list
741  11     -none- list
742  11     -none- list
743  11     -none- list
744  11     -none- list
745  11     -none- list
746  11     -none- list
747  11     -none- list
748  11     -none- list
749  11     -none- list
750  11     -none- list
751  11     -none- list
752  11     -none- list
753  11     -none- list
754  11     -none- list
755  11     -none- list
756  11     -none- list
757  11     -none- list
758  11     -none- list
759  11     -none- list
760  11     -none- list
761  11     -none- list
762  11     -none- list
763  11     -none- list
764  11     -none- list
765  11     -none- list
766  11     -none- list
767  11     -none- list
768  11     -none- list
769  11     -none- list
770  11     -none- list
771  11     -none- list
772  11     -none- list
773  11     -none- list
774  11     -none- list
775  11     -none- list
776  11     -none- list
777  11     -none- list
778  11     -none- list
779  11     -none- list
780  11     -none- list
781  11     -none- list
782  11     -none- list
783  11     -none- list
784  11     -none- list
785  11     -none- list
786  11     -none- list
787  11     -none- list
788  11     -none- list
789  11     -none- list
790  11     -none- list
791  11     -none- list
792  11     -none- list
793  11     -none- list
794  11     -none- list
795  11     -none- list
796  11     -none- list
797  11     -none- list
798  11     -none- list
799  11     -none- list
800  11     -none- list
801  11     -none- list
802  11     -none- list
803  11     -none- list
804  11     -none- list
805  11     -none- list
806  11     -none- list
807  11     -none- list
808  11     -none- list
809  11     -none- list
810  11     -none- list
811  11     -none- list
812  11     -none- list
813  11     -none- list
814  11     -none- list
815  11     -none- list
816  11     -none- list
817  11     -none- list
818  11     -none- list
819  11     -none- list
820  11     -none- list
821  11     -none- list
822  11     -none- list
823  11     -none- list
824  11     -none- list
825  11     -none- list
826  11     -none- list
827  11     -none- list
828  11     -none- list
829  11     -none- list
830  11     -none- list
831  11     -none- list
832  11     -none- list
833  11     -none- list
834  11     -none- list
835  11     -none- list
836  11     -none- list
837  11     -none- list
838  11     -none- list
839  11     -none- list
840  11     -none- list
841  11     -none- list
842  11     -none- list
843  11     -none- list
844  11     -none- list
845  11     -none- list
846  11     -none- list
847  11     -none- list
848  11     -none- list
849  11     -none- list
850  11     -none- list
851  11     -none- list
852  11     -none- list
853  11     -none- list
854  11     -none- list
855  11     -none- list
856  11     -none- list
857  11     -none- list
858  11     -none- list
859  11     -none- list
860  11     -none- list
861  11     -none- list
862  11     -none- list
863  11     -none- list
864  11     -none- list
865  11     -none- list
866  11     -none- list
867  11     -none- list
868  11     -none- list
869  11     -none- list
870  11     -none- list
871  11     -none- list
872  11     -none- list
873  11     -none- list
874  11     -none- list
875  11     -none- list
876  11     -none- list
877  11     -none- list
878  11     -none- list
879  11     -none- list
880  11     -none- list
881  11     -none- list
882  11     -none- list
883  11     -none- list
884  11     -none- list
885  11     -none- list
886  11     -none- list
887  11     -none- list
888  11     -none- list
889  11     -none- list
890  11     -none- list
891  11     -none- list
892  11     -none- list
893  11     -none- list
894  11     -none- list
895  11     -none- list
896  11     -none- list
897  11     -none- list
898  11     -none- list
899  11     -none- list
900  11     -none- list
901  11     -none- list
902  11     -none- list
903  11     -none- list
904  11     -none- list
905  11     -none- list
906  11     -none- list
907  11     -none- list
908  11     -none- list
909  11     -none- list
910  11     -none- list
911  11     -none- list
912  11     -none- list
913  11     -none- list
914  11     -none- list
915  11     -none- list
916  11     -none- list
917  11     -none- list
918  11     -none- list
919  11     -none- list
920  11     -none- list
921  11     -none- list
922  11     -none- list
923  11     -none- list
924  11     -none- list
925  11     -none- list
926  11     -none- list
927  11     -none- list
928  11     -none- list
929  11     -none- list
930  11     -none- list
931  11     -none- list
932  11     -none- list
933  11     -none- list
934  11     -none- list
935  11     -none- list
936  11     -none- list
937  11     -none- list
938  11     -none- list
939  11     -none- list
940  11     -none- list
941  11     -none- list
942  11     -none- list
943  11     -none- list
944  11     -none- list
945  11     -none- list
946  11     -none- list
947  11     -none- list
948  11     -none- list
949  11     -none- list
950  11     -none- list
951  11     -none- list
952  11     -none- list
953  11     -none- list
954  11     -none- list
955  11     -none- list
956  11     -none- list
957  11     -none- list
958  11     -none- list
959  11     -none- list
960  11     -none- list
961  11     -none- list
962  11     -none- list
963  11     -none- list
964  11     -none- list
965  11     -none- list
966  11     -none- list
967  11     -none- list
968  11     -none- list
969  11     -none- list
970  11     -none- list
971  11     -none- list
972  11     -none- list
973  11     -none- list
974  11     -none- list
975  11     -none- list
976  11     -none- list
977  11     -none- list
978  11     -none- list
979  11     -none- list
980  11     -none- list
981  11     -none- list
982  11     -none- list
983  11     -none- list
984  11     -none- list
985  11     -none- list
986  11     -none- list
987  11     -none- list
988  11     -none- list
989  11     -none- list
990  11     -none- list
991  11     -none- list
992  11     -none- list
993  11     -none- list
994  11     -none- list
995  11     -none- list
996  11     -none- list
997  11     -none- list
998  11     -none- list
999  11     -none- list
1000 11     -none- list
1001 11     -none- list
1002 11     -none- list
1003 11     -none- list
1004 11     -none- list
1005 11     -none- list
1006 11     -none- list
1007 11     -none- list
1008 11     -none- list
1009 11     -none- list
1010 11     -none- list
1011 11     -none- list
1012 11     -none- list
1013 11     -none- list
1014 11     -none- list
1015 11     -none- list
1016 11     -none- list
1017 11     -none- list
1018 11     -none- list
1019 11     -none- list
1020 11     -none- list
1021 11     -none- list
1022 11     -none- list
1023 11     -none- list
1024 11     -none- list
1025 11     -none- list
1026 11     -none- list
1027 11     -none- list
1028 11     -none- list
1029 11     -none- list
1030 11     -none- list
1031 11     -none- list
1032 11     -none- list
1033 11     -none- list
1034 11     -none- list
1035 11     -none- list
1036 11     -none- list
1037 11     -none- list
1038 11     -none- list
1039 11     -none- list
1040 11     -none- list
1041 11     -none- list
1042 11     -none- list
1043 11     -none- list
1044 11     -none- list
1045 11     -none- list
1046 11     -none- list
1047 11     -none- list
1048 11     -none- list
1049 11     -none- list
1050 11     -none- list
1051 11     -none- list
1052 11     -none- list
1053 11     -none- list
1054 11     -none- list
1055 11     -none- list
1056 11     -none- list
1057 11     -none- list
1058 11     -none- list
1059 11     -none- list
1060 11     -none- list
1061 11     -none- list
1062 11     -none- list
1063 11     -none- list
1064 11     -none- list
1065 11     -none- list
1066 11     -none- list
1067 11     -none- list
1068 11     -none- list
1069 11     -none- list
1070 11     -none- list
1071 11     -none- list
1072 11     -none- list
1073 11     -none- list
1074 11     -none- list
1075 11     -none- list
1076 11     -none- list
1077 11     -none- list
1078 11     -none- list
1079 11     -none- list
1080 11     -none- list
1081 11     -none- list
1082 11     -none- list
1083 11     -none- list
1084 11     -none- list
1085 11     -none- list
1086 11     -none- list
1087 11     -none- list
1088 11     -none- list
1089 11     -none- list
1090 11     -none- list
1091 11     -none- list
1092 11     -none- list
1093 11     -none- list
1094 11     -none- list
1095 11     -none- list
1096 11     -none- list
1097 11     -none- list
1098 11     -none- list
1099 11     -none- list
1100 11     -none- list
1101 11     -none- list
1102 11     -none- list
1103 11     -none- list
1104 11     -none- list
1105 11     -none- list
1106 11     -none- list
1107 11     -none- list
1108 11     -none- list
1109 11     -none- list
1110 11     -none- list
1111 11     -none- list
1112 11     -none- list
1113 11     -none- list
1114 11     -none- list
1115 11     -none- list
1116 11     -none- list
1117 11     -none- list
1118 11     -none- list
1119 11     -none- list
1120 11     -none- list
1121 11     -none- list
1122 11     -none- list
1123 11     -none- list
1124 11     -none- list
1125 11     -none- list
1126 11     -none- list
1127 11     -none- list
1128 11     -none- list
1129 11     -none- list
1130 11     -none- list
1131 11     -none- list
1132 11     -none- list
1133 11     -none- list
1134 11     -none- list
1135 11     -none- list
1136 11     -none- list
1137 11     -none- list
1138 11     -none- list
1139 11     -none- list
1140 11     -none- list
1141 11     -none- list
1142 11     -none- list
1143 11     -none- list
1144 11     -none- list
1145 11     -none- list
1146 11     -none- list
1147 11     -none- list
1148 11     -none- list
1149 11     -none- list
1150 11     -none- list
1151 11     -none- list
1152 11     -none- list
1153 11     -none- list
1154 11     -none- list
1155 11     -none- list
1156 11     -none- list
1157 11     -none- list
1158 11     -none- list
1159 11     -none- list
1160 11     -none- list
1161 11     -none- list
1162 11     -none- list
1163 11     -none- list
1164 11     -none- list
1165 11     -none- list
1166 11     -none- list
1167 11     -none- list
1168 11     -none- list
1169 11     -none- list
1170 11     -none- list
1171 11     -none- list
1172 11     -none- list
1173 11     -none- list
1174 11     -none- list
1175 11     -none- list
1176 11     -none- list
1177 11     -none- list
1178 11     -none- list
1179 11     -none- list
1180 11     -none- list
1181 11     -none- list
1182 11     -none- list
1183 11     -none- list
1184 11     -none- list
1185 11     -none- list
1186 11     -none- list
1187 11     -none- list
1188 11     -none- list
1189 11     -none- list
1190 11     -none- list
1191 11     -none- list
1192 11     -none- list
1193 11     -none- list
1194 11     -none- list
1195 11     -none- list
1196 11     -none- list
1197 11     -none- list
1198 11     -none- list
1199 11     -none- list
1200 11     -none- list
1201 11     -none- list
1202 11     -none- list
1203 11     -none- list
1204 11     -none- list
1205 11     -none- list
1206 11     -none- list
1207 11     -none- list
1208 11     -none- list
1209 11     -none- list
1210 11     -none- list
1211 11     -none- list
1212 11     -none- list
1213 11     -none- list
1214 11     -none- list
1215 11     -none- list
1216 11     -none- list
1217 11     -none- list
1218 11     -none- list
1219 11     -none- list
1220 11     -none- list
1221 11     -none- list
1222 11     -none- list
1223 11     -none- list
1224 11     -none- list
1225 11     -none- list
1226 11     -none- list
1227 11     -none- list
1228 11     -none- list
1229 11     -none- list
1230 11     -none- list
1231 11     -none- list
1232 11     -none- list
1233 11     -none- list
1234 11     -none- list
1235 11     -none- list
1236 11     -none- list
1237 11     -none- list
1238 11     -none- list
1239 11     -none- list
1240 11     -none- list
1241 11     -none- list
1242 11     -none- list
1243 11     -none- list
1244 11     -none- list
1245 11     -none- list
1246 11     -none- list
1247 11     -none- list
1248 11     -none- list
1249 11     -none- list
1250 11     -none- list
1251 11     -none- list
1252 11     -none- list
1253 11     -none- list
1254 11     -none- list
1255 11     -none- list
1256 11     -none- list
1257 11     -none- list
1258 11     -none- list
1259 11     -none- list
1260 11     -none- list
1261 11     -none- list
1262 11     -none- list
1263 11     -none- list
1264 11     -none- list
1265 11     -none- list
1266 11     -none- list
1267 11     -none- list
1268 11     -none- list
1269 11     -none- list
1270 11     -none- list
1271 11     -none- list
1272 11     -none- list
1273 11     -none- list
1274 11     -none- list
1275 11     -none- list
1276 11     -none- list
1277 11     -none- list
1278 11     -none- list
1279 11     -none- list
1280 11     -none- list
1281 11     -none- list
1282 11     -none- list
1283 11     -none- list
1284 11     -none- list
1285 11     -none- list
1286 11     -none- list
1287 11     -none- list
1288 11     -none- list
1289 11     -none- list
1290 11     -none- list
1291 11     -none- list
1292 11     -none- list
1293 11     -none- list
1294 11     -none- list
1295 11     -none- list
1296 11     -none- list
1297 11     -none- list
1298 11     -none- list
1299 11     -none- list
1300 11     -none- list
1301 11     -none- list
1302 11     -none- list
1303 11     -none- list
1304 11     -none- list
1305 11     -none- list
1306 11     -none- list
1307 11     -none- list
1308 11     -none- list
1309 11     -none- list
1310 11     -none- list
1311 11     -none- list
1312 11     -none- list
1313 11     -none- list
1314 11     -none- list
1315 11     -none- list
1316 11     -none- list
1317 11     -none- list
1318 11     -none- list
1319 11     -none- list
1320 11     -none- list
1321 11     -none- list
1322 11     -none- list
1323 11     -none- list
1324 11     -none- list
1325 11     -none- list
1326 11     -none- list
1327 11     -none- list
1328 11     -none- list
1329 11     -none- list
1330 11     -none- list
1331 11     -none- list
1332 11     -none- list
1333 11     -none- list
1334 11     -none- list
1335 11     -none- list
1336 11     -none- list
1337 11     -none- list
1338 11     -none- list
1339 11     -none- list
1340 11     -none- list
1341 11     -none- list
1342 11     -none- list
1343 11     -none- list
1344 11     -none- list
1345 11     -none- list
1346 11     -none- list
1347 11     -none- list
1348 11     -none- list
1349 11     -none- list
1350 11     -none- list
1351 11     -none- list
1352 11     -none- list
1353 11     -none- list
1354 11     -none- list
1355 11     -none- list
1356 11     -none- list
1357 11     -none- list
1358 11     -none- list
1359 11     -none- list
1360 11     -none- list
1361 11     -none- list
1362 11     -none- list
1363 11     -none- list
1364 11     -none- list
1365 11     -none- list
1366 11     -none- list
1367 11     -none- list
1368 11     -none- list
1369 11     -none- list
1370 11     -none- list
1371 11     -none- list
1372 11     -none- list
1373 11     -none- list
1374 11     -none- list
1375 11     -none- list
1376 11     -none- list
1377 11     -none- list
1378 11     -none- list
1379 11     -none- list
1380 11     -none- list
1381 11     -none- list
1382 11     -none- list
1383 11     -none- list
1384 11     -none- list
1385 11     -none- list
1386 11     -none- list
1387 11     -none- list
1388 11     -none- list
1389 11     -none- list
1390 11     -none- list
1391 11     -none- list
1392 11     -none- list
1393 11     -none- list
1394 11     -none- list
1395 11     -none- list
1396 11     -none- list
1397 11     -none- list
1398 11     -none- list
1399 11     -none- list
1400 11     -none- list
1401 11     -none- list
1402 11     -none- list
1403 11     -none- list
1404 11     -none- list
1405 11     -none- list
1406 11     -none- list
1407 11     -none- list
1408 11     -none- list
1409 11     -none- list
1410 11     -none- list
1411 11     -none- list
1412 11     -none- list
1413 11     -none- list
1414 11     -none- list
1415 11     -none- list
1416 11     -none- list
1417 11     -none- list
1418 11     -none- list
1419 11     -none- list
1420 11     -none- list
1421 11     -none- list
1422 11     -none- list
1423 11     -none- list
1424 11     -none- list
1425 11     -none- list
1426 11     -none- list
1427 11     -none- list
1428 11     -none- list
1429 11     -none- list
1430 11     -none- list
1431 11     -none- list
1432 11     -none- list
1433 11     -none- list
1434 11     -none- list
1435 11     -none- list
1436 11     -none- list
1437 11     -none- list
1438 11     -none- list
1439 11     -none- list
1440 11     -none- list
1441 11     -none- list
1442 11     -none- list
1443 11     -none- list
1444 11     -none- list
1445 11     -none- list
1446 11     -none- list
1447 11     -none- list
1448 11     -none- list
1449 11     -none- list
1450 11     -none- list
1451 11     -none- list
1452 11     -none- list
1453 11     -none- list
1454 11     -none- list
1455 11     -none- list
1456 11     -none- list
1457 11     -none- list
1458 11     -none- list
1459 11     -none- list
1460 11     -none- list
1461 11     -none- list
1462 11     -none- list
1463 11     -none- list
1464 11     -none- list
1465 11     -none- list
1466 11     -none- list
1467 11     -none- list
1468 11     -none- list
1469 11     -none- list
1470 11     -none- list
1471 11     -none- list
1472 11     -none- list
1473 11     -none- list
1474 11     -none- list
1475 11     -none- list
1476 11     -none- list
1477 11     -none- list
1478 11     -none- list
1479 11     -none- list
1480 11     -none- list
1481 11     -none- list
1482 11     -none- list
1483 11     -none- list
1484 11     -none- list
1485 11     -none- list
1486 11     -none- list
1487 11     -none- list
1488 11     -none- list
1489 11     -none- list
1490 11     -none- list
1491 11     -none- list
1492 11     -none- list
1493 11     -none- list
1494 11     -none- list
1495 11     -none- list
1496 11     -none- list
1497 11     -none- list
1498 11     -none- list
1499 11     -none- list
1500 11     -none- list
1501 11     -none- list
1502 11     -none- list
1503 11     -none- list
1504 11     -none- list
1505 11     -none- list
1506 11     -none- list
1507 11     -none- list
1508 11     -none- list
1509 11     -none- list
1510 11     -none- list
1511 11     -none- list
1512 11     -none- list
1513 11     -none- list
1514 11     -none- list
1515 11     -none- list
1516 11     -none- list
1517 11     -none- list
1518 11     -none- list
1519 11     -none- list
1520 11     -none- list
1521 11     -none- list
1522 11     -none- list
1523 11     -none- list
1524 11     -none- list
1525 11     -none- list
1526 11     -none- list
1527 11     -none- list
1528 11     -none- list
1529 11     -none- list
1530 11     -none- list
1531 11     -none- list
1532 11     -none- list
1533 11     -none- list
1534 11     -none- list
1535 11     -none- list
1536 11     -none- list
1537 11     -none- list
1538 11     -none- list
1539 11     -none- list
1540 11     -none- list
1541 11     -none- list
1542 11     -none- list
1543 11     -none- list
1544 11     -none- list
1545 11     -none- list
1546 11     -none- list
1547 11     -none- list
1548 11     -none- list
1549 11     -none- list
1550 11     -none- list
1551 11     -none- list
1552 11     -none- list
1553 11     -none- list
1554 11     -none- list
1555 11     -none- list
1556 11     -none- list
1557 11     -none- list
1558 11     -none- list
1559 11     -none- list
1560 11     -none- list
1561 11     -none- list
1562 11     -none- list
1563 11     -none- list
1564 11     -none- list
1565 11     -none- list
1566 11     -none- list
1567 11     -none- list
1568 11     -none- list
1569 11     -none- list
1570 11     -none- list
1571 11     -none- list
1572 11     -none- list
1573 11     -none- list
1574 11     -none- list
1575 11     -none- list
1576 11     -none- list
1577 11     -none- list
1578 11     -none- list
1579 11     -none- list
1580 11     -none- list
1581 11     -none- list
1582 11     -none- list
1583 11     -none- list
1584 11     -none- list
1585 11     -none- list
1586 11     -none- list
1587 11     -none- list
1588 11     -none- list
1589 11     -none- list
1590 11     -none- list
1591 11     -none- list
1592 11     -none- list
1593 11     -none- list
1594 11     -none- list
1595 11     -none- list
1596 11     -none- list
1597 11     -none- list
1598 11     -none- list
1599 11     -none- list
1600 11     -none- list
1601 11     -none- list
1602 11     -none- list
1603 11     -none- list
1604 11     -none- list
1605 11     -none- list
1606 11     -none- list
1607 11     -none- list
1608 11     -none- list
1609 11     -none- list
1610 11     -none- list
1611 11     -none- list
1612 11     -none- list
1613 11     -none- list
1614 11     -none- list
1615 11     -none- list
1616 11     -none- list
1617 11     -none- list
1618 11     -none- list
1619 11     -none- list
1620 11     -none- list
1621 11     -none- list
1622 11     -none- list
1623 11     -none- list
1624 11     -none- list
1625 11     -none- list
1626 11     -none- list
1627 11     -none- list
1628 11     -none- list
1629 11     -none- list
1630 11     -none- list
1631 11     -none- list
1632 11     -none- list
1633 11     -none- list
1634 11     -none- list
1635 11     -none- list
1636 11     -none- list
1637 11     -none- list
1638 11     -none- list
1639 11     -none- list
1640 11     -none- list
1641 11     -none- list
1642 11     -none- list
1643 11     -none- list
1644 11     -none- list
1645 11     -none- list
1646 11     -none- list
1647 11     -none- list
1648 11     -none- list
1649 11     -none- list
1650 11     -none- list
1651 11     -none- list
1652 11     -none- list
1653 11     -none- list
1654 11     -none- list
1655 11     -none- list
1656 11     -none- list
1657 11     -none- list
1658 11     -none- list
1659 11     -none- list
1660 11     -none- list
1661 11     -none- list
1662 11     -none- list
1663 11     -none- list
1664 11     -none- list
1665 11     -none- list
1666 11     -none- list
1667 11     -none- list
1668 11     -none- list
1669 11     -none- list
1670 11     -none- list
1671 11     -none- list
1672 11     -none- list
1673 11     -none- list
1674 11     -none- list
1675 11     -none- list
1676 11     -none- list
1677 11     -none- list
1678 11     -none- list
1679 11     -none- list
1680 11     -none- list
1681 11     -none- list
1682 11     -none- list
1683 11     -none- list
1684 11     -none- list
1685 11     -none- list
1686 11     -none- list
1687 11     -none- list
1688 11     -none- list
1689 11     -none- list
1690 11     -none- list
1691 11     -none- list
1692 11     -none- list
1693 11     -none- list
1694 11     -none- list
1695 11     -none- list
1696 11     -none- list
1697 11     -none- list
1698 11     -none- list
1699 11     -none- list
1700 11     -none- list
1701 11     -none- list
1702 11     -none- list
1703 11     -none- list
1704 11     -none- list
1705 11     -none- list
1706 11     -none- list
1707 11     -none- list
1708 11     -none- list
1709 11     -none- list
1710 11     -none- list
1711 11     -none- list
1712 11     -none- list
1713 11     -none- list
1714 11     -none- list
1715 11     -none- list
1716 11     -none- list
1717 11     -none- list
1718 11     -none- list
1719 11     -none- list
1720 11     -none- list
1721 11     -none- list
1722 11     -none- list
1723 11     -none- list
1724 11     -none- list
1725 11     -none- list
1726 11     -none- list
1727 11     -none- list
1728 11     -none- list
1729 11     -none- list
1730 11     -none- list
1731 11     -none- list
1732 11     -none- list
1733 11     -none- list
1734 11     -none- list
1735 11     -none- list
1736 11     -none- list
1737 11     -none- list
1738 11     -none- list
1739 11     -none- list
1740 11     -none- list
1741 11     -none- list
1742 11     -none- list
1743 11     -none- list
1744 11     -none- list
1745 11     -none- list
1746 11     -none- list
1747 11     -none- list
1748 11     -none- list
1749 11     -none- list
1750 11     -none- list
1751 11     -none- list
1752 11     -none- list
1753 11     -none- list
1754 11     -none- list
1755 11     -none- list
1756 11     -none- list
1757 11     -none- list
1758 11     -none- list
1759 11     -none- list
1760 11     -none- list
1761 11     -none- list
1762 11     -none- list
1763 11     -none- list
1764 11     -none- list
1765 11     -none- list
1766 11     -none- list
1767 11     -none- list
1768 11     -none- list
1769 11     -none- list
1770 11     -none- list
1771 11     -none- list
1772 11     -none- list
1773 11     -none- list
1774 11     -none- list
1775 11     -none- list
1776 11     -none- list
1777 11     -none- list
1778 11     -none- list
1779 11     -none- list
1780 11     -none- list
1781 11     -none- list
1782 11     -none- list
1783 11     -none- list
1784 11     -none- list
1785 11     -none- list
1786 11     -none- list
1787 11     -none- list
1788 11     -none- list
1789 11     -none- list
1790 11     -none- list
1791 11     -none- list
1792 11     -none- list
1793 11     -none- list
1794 11     -none- list
1795 11     -none- list
1796 11     -none- list
1797 11     -none- list
1798 11     -none- list
1799 11     -none- list
1800 11     -none- list
1801 11     -none- list
1802 11     -none- list
1803 11     -none- list
1804 11     -none- list
1805 11     -none- list
1806 11     -none- list
1807 11     -none- list
1808 11     -none- list
1809 11     -none- list
1810 11     -none- list
1811 11     -none- list
1812 11     -none- list
1813 11     -none- list
1814 11     -none- list
1815 11     -none- list
1816 11     -none- list
1817 11     -none- list
1818 11     -none- list
1819 11     -none- list
1820 11     -none- list
1821 11     -none- list
1822 11     -none- list
1823 11     -none- list
1824 11     -none- list
1825 11     -none- list
1826 11     -none- list
1827 11     -none- list
1828 11     -none- list
1829 11     -none- list
1830 11     -none- list
1831 11     -none- list
1832 11     -none- list
1833 11     -none- list
1834 11     -none- list
1835 11     -none- list
1836 11     -none- list
1837 11     -none- list
1838 11     -none- list
1839 11     -none- list
1840 11     -none- list
1841 11     -none- list
1842 11     -none- list
1843 11     -none- list
1844 11     -none- list
1845 11     -none- list
1846 11     -none- list
1847 11     -none- list
1848 11     -none- list
1849 11     -none- list
1850 11     -none- list
1851 11     -none- list
1852 11     -none- list
1853 11     -none- list
1854 11     -none- list
1855 11     -none- list
1856 11     -none- list
1857 11     -none- list
1858 11     -none- list
1859 11     -none- list
1860 11     -none- list
1861 11     -none- list
1862 11     -none- list
1863 11     -none- list
1864 11     -none- list
1865 11     -none- list
1866 11     -none- list
1867 11     -none- list
1868 11     -none- list
1869 11     -none- list
1870 11     -none- list
1871 11     -none- list
1872 11     -none- list
1873 11     -none- list
1874 11     -none- list
1875 11     -none- list
1876 11     -none- list
1877 11     -none- list
1878 11     -none- list
1879 11     -none- list
1880 11     -none- list
1881 11     -none- list
1882 11     -none- list
1883 11     -none- list
1884 11     -none- list
1885 11     -none- list
1886 11     -none- list
1887 11     -none- list
1888 11     -none- list
1889 11     -none- list
1890 11     -none- list
1891 11     -none- list
1892 11     -none- list
1893 11     -none- list
1894 11     -none- list
1895 11     -none- list
1896 11     -none- list
1897 11     -none- list
1898 11     -none- list
1899 11     -none- list
1900 11     -none- list
1901 11     -none- list
1902 11     -none- list
1903 11     -none- list
1904 11     -none- list
1905 11     -none- list
1906 11     -none- list
1907 11     -none- list
1908 11     -none- list
1909 11     -none- list
1910 11     -none- list
1911 11     -none- list
> 
> 
> ##### here is the function that plots seven points with a lowes line for each statistic
> plot.fn<-function(pos1=1, value1=5, pos2=2,value2=5,pos3=5,func="med"){
+ 
+ 
+ #pos1=5; value1=0; pos2=2; value2=5; pos3=2
+ 
+ # alpha<-c(10,5,3)
+ #  if (models>3){alpha<-c(alpha, rep(1, models-3))}
+ # a.mean <- alpha/sum(alpha) # ?
+   
+ 
+ slots<-NA
+ count<-0
+ for(i in 1:1911){
+  if(output[[i]]$theseParams[pos1]==value1 & output[[i]]$theseParams[pos2]==value2){
+  count<-count+1
+  slots[count]<-i} 
+  }
+ error.mat<-mae.mat<-rmse.mat<-mad.mat<-rmsle.mat <- mape.mat <- meape.mat <- mrae.mat <- pw.mat <- crps.mat <- matrix(NA,nrow=length(slots),ncol=100)
+ 
+ x.axis <- rep(NA, length(slots))
+ count <- 1
+ for(i in slots){
+   print(i)
+   x.axis[count] <- output[[i]]$theseParams[pos3]
+   count <- count+1
+ }
+ 
+ for(i in slots){
+  count<-which(slots==i)
+         errror.all.mat<-abs(output[[i]]$error)#%*%a.mean
+  #error.all.mat<-rowSums(abs(output[[i]]$error))
+  error.mat[count,]<-output[[i]]$error[,1]
+  rmse.mat[count,]<-output[[i]]$pred.rmse[,"EBMA"]
+  mae.mat[count,]<-output[[i]]$pred.mae[,"EBMA"]
+         mad.mat[count,]<-output[[i]]$pred.mad[,"EBMA"]
+         rmsle.mat[count,] <- output[[i]]$pred.rmsle[,"EBMA"]
+         mape.mat[count,] <- output[[i]]$pred.mape[,"EBMA"]
+         meape.mat[count,] <- output[[i]]$pred.meape[,"EBMA"]
+         mrae.mat[count,] <- output[[i]]$pred.mrae[,"EBMA"]
+         pw.mat[count,] <- output[[i]]$pred.pw[,"EBMA"]
+         crps.mat[count,] <- output[[i]]$model.crps
+ }
+ 
+ if(func=="med"){
+  error.all<-apply(abs(error.mat),1,FUN=median,na.rm=TRUE)
+  error<-(apply(error.mat,1,FUN=median, na.rm=TRUE))
+  rmse<-abs(apply(rmse.mat,1,FUN=median, na.rm=TRUE))
+  mae<-abs(apply(mae.mat,1,FUN=median, na.rm=TRUE))
+        mad<-abs(apply(mad.mat,1,FUN=median, na.rm=TRUE))
+         rmsle<-abs(apply(rmsle.mat,1,FUN=median, na.rm=TRUE))
+         mape<-abs(apply(mape.mat,1,FUN=median, na.rm=TRUE))
+         meape<-abs(apply(meape.mat,1,FUN=median, na.rm=TRUE))
+         mrae<-abs(apply(mrae.mat,1,FUN=median, na.rm=TRUE))
+         pw<-abs(apply(pw.mat,1,FUN=median, na.rm=TRUE))
+         crps<-abs(apply(crps.mat,1,FUN=median, na.rm=TRUE))
+       }
+ 
+ if(func=="mea"){
+  error.all<-apply(abs(error.mat),1,FUN=mean,na.rm=TRUE)
+  error<-(apply(error.mat,1,FUN=mean, na.rm=TRUE))
+  rmse<-abs(apply(rmse.mat,1,FUN=mean, na.rm=TRUE))
+  mae<-abs(apply(mae.mat,1,FUN=mean, na.rm=TRUE))
+        mad<-abs(apply(mad.mat,1,FUN=mean, na.rm=TRUE))
+         rmsle<-abs(apply(rmsle.mat,1,FUN=mean, na.rm=TRUE))
+         mape<-abs(apply(mape.mat,1,FUN=mean, na.rm=TRUE))
+         meape<-abs(apply(meape.mat,1,FUN=mean, na.rm=TRUE))
+         mrae<-abs(apply(mrae.mat,1,FUN=mean, na.rm=TRUE))
+         pw<-abs(apply(pw.mat,1,FUN=mean, na.rm=TRUE))
+         crps<-abs(apply(crps.mat,1,FUN=mean, na.rm=TRUE))
+       }
+ 
+ 
+ 
+ 
+ plot(x.axis, crps, ylim=c(4.5, 10), xlab="CRPS", ylab="N_T", main=paste("K=", value3))
+  
+ 
+ #par(mfrow=c(3,3))
+ #plot(c,error.all,pch=15,main="Weighted Weight Error (all)")
+ #lines(loess(error.all~c))
+ #plot(c,error,pch=15,main="Weight Error (largest weight model)")
+ #abline(h=0)
+ #lines(loess(error~c))
+ #plot(c,crps,pch=15,main="CRPS")
+ #lines(loess(crps~c))
+ #plot(c,mae,pch=15,main="MAE")
+ #lines(loess(mae~c))
+ #plot(c,rmse,pch=15,main="RMSE")
+ #lines(loess(rmse~c))
+ #plot(c,mape,pch=15,main="MAPE")
+ #lines(loess(mape~c))
+ #plot(c,meape,pch=15,main="MEAPE")
+ #lines(loess(meape~c))
+ #plot(c,mrae,pch=15,main="MRAE")
+ #lines(loess(mrae~c))
+ #plot(c,pw,pch=15,main="PW")
+ #lines(loess(pw~c))
+ 
+ 
+ 
+ }
> 
> 
> 
> par(mfrow=c(3,1))
> plot.fn(pos1=5, value1=0, pos2=2, value2=3, pos3=1)
[1] 1
[1] 2
[1] 3
[1] 4
[1] 5
[1] 6
[1] 7
[1] 8
[1] 9
[1] 10
[1] 11
[1] 12
[1] 13
[1] 14
[1] 15
[1] 16
[1] 17
[1] 18
[1] 19
[1] 20
[1] 21
Error in paste("K=", value3) : object 'value3' not found
> plot.fn(pos1=5, value1=0, pos2=2, value2=9, pos3=1)
[1] 64
[1] 65
[1] 66
[1] 67
[1] 68
[1] 69
[1] 70
[1] 71
[1] 72
[1] 73
[1] 74
[1] 75
[1] 76
[1] 77
[1] 78
[1] 79
[1] 80
[1] 81
[1] 82
[1] 83
[1] 84
Error in paste("K=", value3) : object 'value3' not found
> plot.fn(pos1=5, value1=0, pos2=2, value2=15, pos3=1)
[1] 127
[1] 128
[1] 129
[1] 130
[1] 131
[1] 132
[1] 133
[1] 134
[1] 135
[1] 136
[1] 137
[1] 138
[1] 139
[1] 140
[1] 141
[1] 142
[1] 143
[1] 144
[1] 145
[1] 146
[1] 147
Error in paste("K=", value3) : object 'value3' not found
> 
> 
> #nTrain<-c(3:15,20,25,35,45,55,65,85,100)
> #nmod<-seq(3,15, by=2)
> #constant<-c(0,.01, 0.02,.025, 0.03, 0.04, .05, 0.075, 0.1, 0.15, 0.2, 0.3, .5)
> #iter<-100
> #outSample<-250
> output[[1]]$model.crps
> rm(list=ls(all=TRUE))
> 
> #setwd("~/Documents/GitHub/EBMAforecast/APSA_2012/Simulations")
> setwd("~/Github/EBMAforecast/APSA_2012/Simulations")
> 
> load("SecondRound")
> #objects()
> 
> #summary(output)
> 
> 
> ##### here is the function that plots seven points with a lowes line for each statistic
> plot.fn<-function(pos1=1, value1=5, pos2=2,value2=5,pos3=5,func="med"){
+ 
+ 
+ #pos1=5; value1=0; pos2=2; value2=5; pos3=2
+ 
+ # alpha<-c(10,5,3)
+ #  if (models>3){alpha<-c(alpha, rep(1, models-3))}
+ # a.mean <- alpha/sum(alpha) # ?
+   
+ 
+ slots<-NA
+ count<-0
+ for(i in 1:1911){
+  if(output[[i]]$theseParams[pos1]==value1 & output[[i]]$theseParams[pos2]==value2){
+  count<-count+1
+  slots[count]<-i} 
+  }
+ error.mat<-mae.mat<-rmse.mat<-mad.mat<-rmsle.mat <- mape.mat <- meape.mat <- mrae.mat <- pw.mat <- crps.mat <- matrix(NA,nrow=length(slots),ncol=100)
+ 
+ x.axis <- rep(NA, length(slots))
+ count <- 1
+ for(i in slots){
+   print(i)
+   x.axis[count] <- output[[i]]$theseParams[pos3]
+   count <- count+1
+ }
+ 
+ for(i in slots){
+  count<-which(slots==i)
+         errror.all.mat<-abs(output[[i]]$error)#%*%a.mean
+  #error.all.mat<-rowSums(abs(output[[i]]$error))
+  error.mat[count,]<-output[[i]]$error[,1]
+  rmse.mat[count,]<-output[[i]]$pred.rmse[,"EBMA"]
+  mae.mat[count,]<-output[[i]]$pred.mae[,"EBMA"]
+         mad.mat[count,]<-output[[i]]$pred.mad[,"EBMA"]
+         rmsle.mat[count,] <- output[[i]]$pred.rmsle[,"EBMA"]
+         mape.mat[count,] <- output[[i]]$pred.mape[,"EBMA"]
+         meape.mat[count,] <- output[[i]]$pred.meape[,"EBMA"]
+         mrae.mat[count,] <- output[[i]]$pred.mrae[,"EBMA"]
+         pw.mat[count,] <- output[[i]]$pred.pw[,"EBMA"]
+         crps.mat[count,] <- output[[i]]$model.crps
+ }
+ 
+ if(func=="med"){
+  error.all<-apply(abs(error.mat),1,FUN=median,na.rm=TRUE)
+  error<-(apply(error.mat,1,FUN=median, na.rm=TRUE))
+  rmse<-abs(apply(rmse.mat,1,FUN=median, na.rm=TRUE))
+  mae<-abs(apply(mae.mat,1,FUN=median, na.rm=TRUE))
+        mad<-abs(apply(mad.mat,1,FUN=median, na.rm=TRUE))
+         rmsle<-abs(apply(rmsle.mat,1,FUN=median, na.rm=TRUE))
+         mape<-abs(apply(mape.mat,1,FUN=median, na.rm=TRUE))
+         meape<-abs(apply(meape.mat,1,FUN=median, na.rm=TRUE))
+         mrae<-abs(apply(mrae.mat,1,FUN=median, na.rm=TRUE))
+         pw<-abs(apply(pw.mat,1,FUN=median, na.rm=TRUE))
+         crps<-abs(apply(crps.mat,1,FUN=median, na.rm=TRUE))
+       }
+ 
+ if(func=="mea"){
+  error.all<-apply(abs(error.mat),1,FUN=mean,na.rm=TRUE)
+  error<-(apply(error.mat,1,FUN=mean, na.rm=TRUE))
+  rmse<-abs(apply(rmse.mat,1,FUN=mean, na.rm=TRUE))
+  mae<-abs(apply(mae.mat,1,FUN=mean, na.rm=TRUE))
+        mad<-abs(apply(mad.mat,1,FUN=mean, na.rm=TRUE))
+         rmsle<-abs(apply(rmsle.mat,1,FUN=mean, na.rm=TRUE))
+         mape<-abs(apply(mape.mat,1,FUN=mean, na.rm=TRUE))
+         meape<-abs(apply(meape.mat,1,FUN=mean, na.rm=TRUE))
+         mrae<-abs(apply(mrae.mat,1,FUN=mean, na.rm=TRUE))
+         pw<-abs(apply(pw.mat,1,FUN=mean, na.rm=TRUE))
+         crps<-abs(apply(crps.mat,1,FUN=mean, na.rm=TRUE))
+       }
+ 
+ 
+ 
+ 
+ plot(x.axis, crps, ylim=c(4.5, 10), xlab="CRPS", ylab="N_T", main=paste("K=", value2))
+  
+ 
+ #par(mfrow=c(3,3))
+ #plot(c,error.all,pch=15,main="Weighted Weight Error (all)")
+ #lines(loess(error.all~c))
+ #plot(c,error,pch=15,main="Weight Error (largest weight model)")
+ #abline(h=0)
+ #lines(loess(error~c))
+ #plot(c,crps,pch=15,main="CRPS")
+ #lines(loess(crps~c))
+ #plot(c,mae,pch=15,main="MAE")
+ #lines(loess(mae~c))
+ #plot(c,rmse,pch=15,main="RMSE")
+ #lines(loess(rmse~c))
+ #plot(c,mape,pch=15,main="MAPE")
+ #lines(loess(mape~c))
+ #plot(c,meape,pch=15,main="MEAPE")
+ #lines(loess(meape~c))
+ #plot(c,mrae,pch=15,main="MRAE")
+ #lines(loess(mrae~c))
+ #plot(c,pw,pch=15,main="PW")
+ #lines(loess(pw~c))
+ 
+ 
+ 
+ }
> 
> 
> 
> par(mfrow=c(3,1))
> plot.fn(pos1=5, value1=0, pos2=2, value2=3, pos3=1)
[1] 1
[1] 2
[1] 3
[1] 4
[1] 5
[1] 6
[1] 7
[1] 8
[1] 9
[1] 10
[1] 11
[1] 12
[1] 13
[1] 14
[1] 15
[1] 16
[1] 17
[1] 18
[1] 19
[1] 20
[1] 21
> plot.fn(pos1=5, value1=0, pos2=2, value2=9, pos3=1)
[1] 64
[1] 65
[1] 66
[1] 67
[1] 68
[1] 69
[1] 70
[1] 71
[1] 72
[1] 73
[1] 74
[1] 75
[1] 76
[1] 77
[1] 78
[1] 79
[1] 80
[1] 81
[1] 82
[1] 83
[1] 84
> plot.fn(pos1=5, value1=0, pos2=2, value2=15, pos3=1)
[1] 127
[1] 128
[1] 129
[1] 130
[1] 131
[1] 132
[1] 133
[1] 134
[1] 135
[1] 136
[1] 137
[1] 138
[1] 139
[1] 140
[1] 141
[1] 142
[1] 143
[1] 144
[1] 145
[1] 146
[1] 147
> 
> 
> #nTrain<-c(3:15,20,25,35,45,55,65,85,100)
> #nmod<-seq(3,15, by=2)
> #constant<-c(0,.01, 0.02,.025, 0.03, 0.04, .05, 0.075, 0.1, 0.15, 0.2, 0.3, .5)
> #iter<-100
> #outSample<-250
> 
> rm(list=ls(all=TRUE))
> 
> #setwd("~/Documents/GitHub/EBMAforecast/APSA_2012/Simulations")
> setwd("~/Github/EBMAforecast/APSA_2012/Simulations")
> 
> load("SecondRound")
> #objects()
> 
> #summary(output)
> 
> 
> ##### here is the function that plots seven points with a lowes line for each statistic
> plot.fn<-function(pos1=1, value1=5, pos2=2,value2=5,pos3=5,func="med"){
+ 
+ 
+ #pos1=5; value1=0; pos2=2; value2=5; pos3=2
+ 
+ # alpha<-c(10,5,3)
+ #  if (models>3){alpha<-c(alpha, rep(1, models-3))}
+ # a.mean <- alpha/sum(alpha) # ?
+   
+ 
+ slots<-NA
+ count<-0
+ for(i in 1:1911){
+  if(output[[i]]$theseParams[pos1]==value1 & output[[i]]$theseParams[pos2]==value2){
+  count<-count+1
+  slots[count]<-i} 
+  }
+ error.mat<-mae.mat<-rmse.mat<-mad.mat<-rmsle.mat <- mape.mat <- meape.mat <- mrae.mat <- pw.mat <- crps.mat <- matrix(NA,nrow=length(slots),ncol=100)
+ 
+ x.axis <- rep(NA, length(slots))
+ count <- 1
+ for(i in slots){
+   print(i)
+   x.axis[count] <- output[[i]]$theseParams[pos3]
+   count <- count+1
+ }
+ 
+ for(i in slots){
+  count<-which(slots==i)
+         errror.all.mat<-abs(output[[i]]$error)#%*%a.mean
+  #error.all.mat<-rowSums(abs(output[[i]]$error))
+  error.mat[count,]<-output[[i]]$error[,1]
+  rmse.mat[count,]<-output[[i]]$pred.rmse[,"EBMA"]
+  mae.mat[count,]<-output[[i]]$pred.mae[,"EBMA"]
+         mad.mat[count,]<-output[[i]]$pred.mad[,"EBMA"]
+         rmsle.mat[count,] <- output[[i]]$pred.rmsle[,"EBMA"]
+         mape.mat[count,] <- output[[i]]$pred.mape[,"EBMA"]
+         meape.mat[count,] <- output[[i]]$pred.meape[,"EBMA"]
+         mrae.mat[count,] <- output[[i]]$pred.mrae[,"EBMA"]
+         pw.mat[count,] <- output[[i]]$pred.pw[,"EBMA"]
+         crps.mat[count,] <- output[[i]]$model.crps
+ }
+ 
+ if(func=="med"){
+  error.all<-apply(abs(error.mat),1,FUN=median,na.rm=TRUE)
+  error<-(apply(error.mat,1,FUN=median, na.rm=TRUE))
+  rmse<-abs(apply(rmse.mat,1,FUN=median, na.rm=TRUE))
+  mae<-abs(apply(mae.mat,1,FUN=median, na.rm=TRUE))
+        mad<-abs(apply(mad.mat,1,FUN=median, na.rm=TRUE))
+         rmsle<-abs(apply(rmsle.mat,1,FUN=median, na.rm=TRUE))
+         mape<-abs(apply(mape.mat,1,FUN=median, na.rm=TRUE))
+         meape<-abs(apply(meape.mat,1,FUN=median, na.rm=TRUE))
+         mrae<-abs(apply(mrae.mat,1,FUN=median, na.rm=TRUE))
+         pw<-abs(apply(pw.mat,1,FUN=median, na.rm=TRUE))
+         crps<-abs(apply(crps.mat,1,FUN=median, na.rm=TRUE))
+       }
+ 
+ if(func=="mea"){
+  error.all<-apply(abs(error.mat),1,FUN=mean,na.rm=TRUE)
+  error<-(apply(error.mat,1,FUN=mean, na.rm=TRUE))
+  rmse<-abs(apply(rmse.mat,1,FUN=mean, na.rm=TRUE))
+  mae<-abs(apply(mae.mat,1,FUN=mean, na.rm=TRUE))
+        mad<-abs(apply(mad.mat,1,FUN=mean, na.rm=TRUE))
+         rmsle<-abs(apply(rmsle.mat,1,FUN=mean, na.rm=TRUE))
+         mape<-abs(apply(mape.mat,1,FUN=mean, na.rm=TRUE))
+         meape<-abs(apply(meape.mat,1,FUN=mean, na.rm=TRUE))
+         mrae<-abs(apply(mrae.mat,1,FUN=mean, na.rm=TRUE))
+         pw<-abs(apply(pw.mat,1,FUN=mean, na.rm=TRUE))
+         crps<-abs(apply(crps.mat,1,FUN=mean, na.rm=TRUE))
+       }
+ 
+ 
+ 
+ 
+ plot(x.axis, crps, ylim=c(4.5, 10), ylab="CRPS", xlab="N_T", main=paste("K=", value2))
+ lines(loess(crps~x.axis)) 
+ 
+ #par(mfrow=c(3,3))
+ #plot(c,error.all,pch=15,main="Weighted Weight Error (all)")
+ #lines(loess(error.all~c))
+ #plot(c,error,pch=15,main="Weight Error (largest weight model)")
+ #abline(h=0)
+ 
+ #plot(c,crps,pch=15,main="CRPS")
+ #lines(loess(crps~c))
+ #plot(c,mae,pch=15,main="MAE")
+ #lines(loess(mae~c))
+ #plot(c,rmse,pch=15,main="RMSE")
+ #lines(loess(rmse~c))
+ #plot(c,mape,pch=15,main="MAPE")
+ #lines(loess(mape~c))
+ #plot(c,meape,pch=15,main="MEAPE")
+ #lines(loess(meape~c))
+ #plot(c,mrae,pch=15,main="MRAE")
+ #lines(loess(mrae~c))
+ #plot(c,pw,pch=15,main="PW")
+ #lines(loess(pw~c))
+ 
+ 
+ 
+ }
> 
> 
> 
> par(mfrow=c(3,1))
> plot.fn(pos1=5, value1=0, pos2=2, value2=3, pos3=1)
[1] 1
[1] 2
[1] 3
[1] 4
[1] 5
[1] 6
[1] 7
[1] 8
[1] 9
[1] 10
[1] 11
[1] 12
[1] 13
[1] 14
[1] 15
[1] 16
[1] 17
[1] 18
[1] 19
[1] 20
[1] 21
> plot.fn(pos1=5, value1=0, pos2=2, value2=9, pos3=1)
[1] 64
[1] 65
[1] 66
[1] 67
[1] 68
[1] 69
[1] 70
[1] 71
[1] 72
[1] 73
[1] 74
[1] 75
[1] 76
[1] 77
[1] 78
[1] 79
[1] 80
[1] 81
[1] 82
[1] 83
[1] 84
> plot.fn(pos1=5, value1=0, pos2=2, value2=15, pos3=1)
[1] 127
[1] 128
[1] 129
[1] 130
[1] 131
[1] 132
[1] 133
[1] 134
[1] 135
[1] 136
[1] 137
[1] 138
[1] 139
[1] 140
[1] 141
[1] 142
[1] 143
[1] 144
[1] 145
[1] 146
[1] 147
> 
> 
> #nTrain<-c(3:15,20,25,35,45,55,65,85,100)
> #nmod<-seq(3,15, by=2)
> #constant<-c(0,.01, 0.02,.025, 0.03, 0.04, .05, 0.075, 0.1, 0.15, 0.2, 0.3, .5)
> #iter<-100
> #outSample<-250
> 
> output[[1]]$model.crps
            [,1]
  [1,]  3.667572
  [2,]  5.688390
  [3,] 13.307988
  [4,]  7.110773
  [5,]  5.179494
  [6,]  5.944946
  [7,]  3.860704
  [8,]  4.377022
  [9,]  5.080289
 [10,]  4.754631
 [11,]  7.283100
 [12,] 10.347905
 [13,]  3.831654
 [14,]  4.159421
 [15,]  9.765096
 [16,]  3.113174
 [17,]  7.033026
 [18,] 11.194843
 [19,]  5.854114
 [20,]  6.909229
 [21,]  5.617751
 [22,]  9.990947
 [23,]  7.577704
 [24,]  5.500987
 [25,]  7.812340
 [26,]  2.577255
 [27,]  6.698321
 [28,] 10.317019
 [29,]  6.445994
 [30,] 16.172343
 [31,]  6.240258
 [32,]  8.104503
 [33,]  7.161296
 [34,]  9.749635
 [35,]  6.868730
 [36,] 11.066258
 [37,]  7.806363
 [38,]  6.682104
 [39,]  6.002625
 [40,]  8.352776
 [41,]  6.541501
 [42,] 11.933895
 [43,]  6.315618
 [44,]  7.424189
 [45,]  8.313120
 [46,]  6.366087
 [47,]  7.097254
 [48,]  8.581526
 [49,]  5.694534
 [50,]  4.730972
 [51,] 11.769302
 [52,]  6.878606
 [53,]  5.373881
 [54,]  6.797588
 [55,] 11.145141
 [56,]  4.607749
 [57,]  4.227355
 [58,]  5.161524
 [59,]  5.796111
 [60,]  4.423112
 [61,]  7.444577
 [62,]  4.846286
 [63,] 14.391948
 [64,]  7.868354
 [65,] 13.252297
 [66,] 10.578574
 [67,]  4.032152
 [68,]  5.808969
 [69,] 11.830227
 [70,]  5.098946
 [71,]  7.681896
 [72,]  5.856455
 [73,]  6.476036
 [74,]  3.276774
 [75,]  3.902441
 [76,]  3.414548
 [77,]  3.811140
 [78,]  6.743935
 [79,]  3.294159
 [80,]  5.039314
 [81,]  7.742678
 [82,] 10.277239
 [83,]  9.428005
 [84,]  3.330850
 [85,]  8.882327
 [86,]  7.036094
 [87,]  7.063190
 [88,]  4.240952
 [89,]  4.864202
 [90,]  7.975245
 [91,]  7.561170
 [92,]  4.029459
 [93,]  6.183498
 [94,]  5.254969
 [95,]  7.956760
 [96,]  8.172842
 [97,]  3.637106
 [98,]  6.633018
 [99,]  6.401945
[100,]  5.971115
> c(1:10)
 [1]  1  2  3  4  5  6  7  8  9 10
> matrix(c(1:10), nrow=13)
      [,1]
 [1,]    1
 [2,]    2
 [3,]    3
 [4,]    4
 [5,]    5
 [6,]    6
 [7,]    7
 [8,]    8
 [9,]    9
[10,]   10
[11,]    1
[12,]    2
[13,]    3
Warning message:
In matrix(c(1:10), nrow = 13) :
  data length [10] is not a sub-multiple or multiple of the number of rows [13]
> matrix(c(1:10), nrow=13, ncol=10)
      [,1] [,2] [,3] [,4] [,5] [,6] [,7] [,8] [,9] [,10]
 [1,]    1    4    7   10    3    6    9    2    5     8
 [2,]    2    5    8    1    4    7   10    3    6     9
 [3,]    3    6    9    2    5    8    1    4    7    10
 [4,]    4    7   10    3    6    9    2    5    8     1
 [5,]    5    8    1    4    7   10    3    6    9     2
 [6,]    6    9    2    5    8    1    4    7   10     3
 [7,]    7   10    3    6    9    2    5    8    1     4
 [8,]    8    1    4    7   10    3    6    9    2     5
 [9,]    9    2    5    8    1    4    7   10    3     6
[10,]   10    3    6    9    2    5    8    1    4     7
[11,]    1    4    7   10    3    6    9    2    5     8
[12,]    2    5    8    1    4    7   10    3    6     9
[13,]    3    6    9    2    5    8    1    4    7    10
> matrix(c(1:10), nrow=13, ncol=10, by.row=TREU)
Error in matrix(c(1:10), nrow = 13, ncol = 10, by.row = TREU) : 
  unused argument(s) (by.row = TREU)
> matrix(c(1:10), nrow=13, ncol=10, by.row=TRUE)
Error in matrix(c(1:10), nrow = 13, ncol = 10, by.row = TRUE) : 
  unused argument(s) (by.row = TRUE)
> matrix(c(1:10), nrow=13, ncol=10, byrow=TRUE)
      [,1] [,2] [,3] [,4] [,5] [,6] [,7] [,8] [,9] [,10]
 [1,]    1    2    3    4    5    6    7    8    9    10
 [2,]    1    2    3    4    5    6    7    8    9    10
 [3,]    1    2    3    4    5    6    7    8    9    10
 [4,]    1    2    3    4    5    6    7    8    9    10
 [5,]    1    2    3    4    5    6    7    8    9    10
 [6,]    1    2    3    4    5    6    7    8    9    10
 [7,]    1    2    3    4    5    6    7    8    9    10
 [8,]    1    2    3    4    5    6    7    8    9    10
 [9,]    1    2    3    4    5    6    7    8    9    10
[10,]    1    2    3    4    5    6    7    8    9    10
[11,]    1    2    3    4    5    6    7    8    9    10
[12,]    1    2    3    4    5    6    7    8    9    10
[13,]    1    2    3    4    5    6    7    8    9    10
> plot(matrix(c(1:10), nrow=13, ncol=10, byrow=TRUE), matrix(c(1:10), nrow=13, ncol=10, byrow=TRUE))
> plot(matrix(c(1:10), nrow=13, ncol=10, byrow=TRUE), matrix(c(10:100), nrow=13, ncol=10, byrow=TRUE))
Warning message:
In matrix(c(10:100), nrow = 13, ncol = 10, byrow = TRUE) :
  data length [91] is not a sub-multiple or multiple of the number of columns [10]
> plot(matrix(c(1:10), nrow=13, ncol=10, byrow=TRUE), matrix(c(10:19), nrow=13, ncol=10, byrow=TRUE))
> plot(matrix(c(1:10), nrow=13, ncol=10, byrow=TRUE), matrix(c(10:19), nrow=13, ncol=10))
> rm(list=ls(all=TRUE))
> 
> #setwd("~/Documents/GitHub/EBMAforecast/APSA_2012/Simulations")
> setwd("~/Github/EBMAforecast/APSA_2012/Simulations")
> 
> load("SecondRound")
> #objects()
> 
> #summary(output)
> 
> 
> ##### here is the function that plots seven points with a lowes line for each statistic
> plot.fn<-function(pos1=1, value1=5, pos2=2,value2=5,pos3=5,func="med"){
+ 
+ 
+ #pos1=5; value1=0; pos2=2; value2=5; pos3=2
+ 
+ # alpha<-c(10,5,3)
+ #  if (models>3){alpha<-c(alpha, rep(1, models-3))}
+ # a.mean <- alpha/sum(alpha) # ?
+   
+ 
+ slots<-NA
+ count<-0
+ for(i in 1:1911){
+  if(output[[i]]$theseParams[pos1]==value1 & output[[i]]$theseParams[pos2]==value2){
+  count<-count+1
+  slots[count]<-i} 
+  }
+ error.mat<-mae.mat<-rmse.mat<-mad.mat<-rmsle.mat <- mape.mat <- meape.mat <- mrae.mat <- pw.mat <- crps.mat <- matrix(NA,nrow=length(slots),ncol=100)
+ 
+ x.axis <- rep(NA, length(slots))
+ count <- 1
+ for(i in slots){
+   print(i)
+   x.axis[count] <- output[[i]]$theseParams[pos3]
+   count <- count+1
+ }
+ 
+ for(i in slots){
+  count<-which(slots==i)
+         errror.all.mat<-abs(output[[i]]$error)#%*%a.mean
+  #error.all.mat<-rowSums(abs(output[[i]]$error))
+  error.mat[count,]<-output[[i]]$error[,1]
+  rmse.mat[count,]<-output[[i]]$pred.rmse[,"EBMA"]
+  mae.mat[count,]<-output[[i]]$pred.mae[,"EBMA"]
+         mad.mat[count,]<-output[[i]]$pred.mad[,"EBMA"]
+         rmsle.mat[count,] <- output[[i]]$pred.rmsle[,"EBMA"]
+         mape.mat[count,] <- output[[i]]$pred.mape[,"EBMA"]
+         meape.mat[count,] <- output[[i]]$pred.meape[,"EBMA"]
+         mrae.mat[count,] <- output[[i]]$pred.mrae[,"EBMA"]
+         pw.mat[count,] <- output[[i]]$pred.pw[,"EBMA"]
+         crps.mat[count,] <- output[[i]]$model.crps
+ }
+ 
+ if(func=="med"){
+  error.all<-apply(abs(error.mat),1,FUN=median,na.rm=TRUE)
+  error<-(apply(error.mat,1,FUN=median, na.rm=TRUE))
+  rmse<-abs(apply(rmse.mat,1,FUN=median, na.rm=TRUE))
+  mae<-abs(apply(mae.mat,1,FUN=median, na.rm=TRUE))
+        mad<-abs(apply(mad.mat,1,FUN=median, na.rm=TRUE))
+         rmsle<-abs(apply(rmsle.mat,1,FUN=median, na.rm=TRUE))
+         mape<-abs(apply(mape.mat,1,FUN=median, na.rm=TRUE))
+         meape<-abs(apply(meape.mat,1,FUN=median, na.rm=TRUE))
+         mrae<-abs(apply(mrae.mat,1,FUN=median, na.rm=TRUE))
+         pw<-abs(apply(pw.mat,1,FUN=median, na.rm=TRUE))
+         crps<-abs(apply(crps.mat,1,FUN=median, na.rm=TRUE))
+       }
+ 
+ if(func=="mea"){
+  error.all<-apply(abs(error.mat),1,FUN=mean,na.rm=TRUE)
+  error<-(apply(error.mat,1,FUN=mean, na.rm=TRUE))
+  rmse<-abs(apply(rmse.mat,1,FUN=mean, na.rm=TRUE))
+  mae<-abs(apply(mae.mat,1,FUN=mean, na.rm=TRUE))
+        mad<-abs(apply(mad.mat,1,FUN=mean, na.rm=TRUE))
+         rmsle<-abs(apply(rmsle.mat,1,FUN=mean, na.rm=TRUE))
+         mape<-abs(apply(mape.mat,1,FUN=mean, na.rm=TRUE))
+         meape<-abs(apply(meape.mat,1,FUN=mean, na.rm=TRUE))
+         mrae<-abs(apply(mrae.mat,1,FUN=mean, na.rm=TRUE))
+         pw<-abs(apply(pw.mat,1,FUN=mean, na.rm=TRUE))
+         crps<-abs(apply(crps.mat,1,FUN=mean, na.rm=TRUE))
+       }
+ 
+ 
+ x.axis.new <- matrix(x.axis, nrow=length(slots), ncol=100, byrow=TRUE), 
Error: unexpected ',' in:
"
x.axis.new <- matrix(x.axis, nrow=length(slots), ncol=100, byrow=TRUE),"
> 
> plot(x.axis.new, crps.mat, ylim=c(4.5, 10), ylab="Median CRPS", xlab="N_T", main=paste("K=", value2))
Error in plot(x.axis.new, crps.mat, ylim = c(4.5, 10), ylab = "Median CRPS",  : 
  object 'x.axis.new' not found
> lines(loess(crps~x.axis)) 
Error in eval(expr, envir, enclos) : object 'crps' not found
> 
> #par(mfrow=c(3,3))
> #plot(c,error.all,pch=15,main="Weighted Weight Error (all)")
> #lines(loess(error.all~c))
> #plot(c,error,pch=15,main="Weight Error (largest weight model)")
> #abline(h=0)
> 
> #plot(c,crps,pch=15,main="CRPS")
> #lines(loess(crps~c))
> #plot(c,mae,pch=15,main="MAE")
> #lines(loess(mae~c))
> #plot(c,rmse,pch=15,main="RMSE")
> #lines(loess(rmse~c))
> #plot(c,mape,pch=15,main="MAPE")
> #lines(loess(mape~c))
> #plot(c,meape,pch=15,main="MEAPE")
> #lines(loess(meape~c))
> #plot(c,mrae,pch=15,main="MRAE")
> #lines(loess(mrae~c))
> #plot(c,pw,pch=15,main="PW")
> #lines(loess(pw~c))
> 
> 
> 
> }
Error: unexpected '}' in "}"
> 
> 
> 
> par(mfrow=c(3,1))
> plot.fn(pos1=5, value1=0, pos2=2, value2=3, pos3=1)
Error: could not find function "plot.fn"
> plot.fn(pos1=5, value1=0, pos2=2, value2=9, pos3=1)
Error: could not find function "plot.fn"
> plot.fn(pos1=5, value1=0, pos2=2, value2=15, pos3=1)
Error: could not find function "plot.fn"
> 
> 
> #nTrain<-c(3:15,20,25,35,45,55,65,85,100)
> #nmod<-seq(3,15, by=2)
> #constant<-c(0,.01, 0.02,.025, 0.03, 0.04, .05, 0.075, 0.1, 0.15, 0.2, 0.3, .5)
> #iter<-100
> #outSample<-250
> 
> plot.fn<-function(pos1=1, value1=5, pos2=2,value2=5,pos3=5,func="med"){
+ 
+ 
+ #pos1=5; value1=0; pos2=2; value2=5; pos3=2
+ 
+ # alpha<-c(10,5,3)
+ #  if (models>3){alpha<-c(alpha, rep(1, models-3))}
+ # a.mean <- alpha/sum(alpha) # ?
+   
+ 
+ slots<-NA
+ count<-0
+ for(i in 1:1911){
+  if(output[[i]]$theseParams[pos1]==value1 & output[[i]]$theseParams[pos2]==value2){
+  count<-count+1
+  slots[count]<-i} 
+  }
+ error.mat<-mae.mat<-rmse.mat<-mad.mat<-rmsle.mat <- mape.mat <- meape.mat <- mrae.mat <- pw.mat <- crps.mat <- matrix(NA,nrow=length(slots),ncol=100)
+ 
+ x.axis <- rep(NA, length(slots))
+ count <- 1
+ for(i in slots){
+   print(i)
+   x.axis[count] <- output[[i]]$theseParams[pos3]
+   count <- count+1
+ }
+ 
+ for(i in slots){
+  count<-which(slots==i)
+         errror.all.mat<-abs(output[[i]]$error)#%*%a.mean
+  #error.all.mat<-rowSums(abs(output[[i]]$error))
+  error.mat[count,]<-output[[i]]$error[,1]
+  rmse.mat[count,]<-output[[i]]$pred.rmse[,"EBMA"]
+  mae.mat[count,]<-output[[i]]$pred.mae[,"EBMA"]
+         mad.mat[count,]<-output[[i]]$pred.mad[,"EBMA"]
+         rmsle.mat[count,] <- output[[i]]$pred.rmsle[,"EBMA"]
+         mape.mat[count,] <- output[[i]]$pred.mape[,"EBMA"]
+         meape.mat[count,] <- output[[i]]$pred.meape[,"EBMA"]
+         mrae.mat[count,] <- output[[i]]$pred.mrae[,"EBMA"]
+         pw.mat[count,] <- output[[i]]$pred.pw[,"EBMA"]
+         crps.mat[count,] <- output[[i]]$model.crps
+ }
+ 
+ if(func=="med"){
+  error.all<-apply(abs(error.mat),1,FUN=median,na.rm=TRUE)
+  error<-(apply(error.mat,1,FUN=median, na.rm=TRUE))
+  rmse<-abs(apply(rmse.mat,1,FUN=median, na.rm=TRUE))
+  mae<-abs(apply(mae.mat,1,FUN=median, na.rm=TRUE))
+        mad<-abs(apply(mad.mat,1,FUN=median, na.rm=TRUE))
+         rmsle<-abs(apply(rmsle.mat,1,FUN=median, na.rm=TRUE))
+         mape<-abs(apply(mape.mat,1,FUN=median, na.rm=TRUE))
+         meape<-abs(apply(meape.mat,1,FUN=median, na.rm=TRUE))
+         mrae<-abs(apply(mrae.mat,1,FUN=median, na.rm=TRUE))
+         pw<-abs(apply(pw.mat,1,FUN=median, na.rm=TRUE))
+         crps<-abs(apply(crps.mat,1,FUN=median, na.rm=TRUE))
+       }
+ 
+ if(func=="mea"){
+  error.all<-apply(abs(error.mat),1,FUN=mean,na.rm=TRUE)
+  error<-(apply(error.mat,1,FUN=mean, na.rm=TRUE))
+  rmse<-abs(apply(rmse.mat,1,FUN=mean, na.rm=TRUE))
+  mae<-abs(apply(mae.mat,1,FUN=mean, na.rm=TRUE))
+        mad<-abs(apply(mad.mat,1,FUN=mean, na.rm=TRUE))
+         rmsle<-abs(apply(rmsle.mat,1,FUN=mean, na.rm=TRUE))
+         mape<-abs(apply(mape.mat,1,FUN=mean, na.rm=TRUE))
+         meape<-abs(apply(meape.mat,1,FUN=mean, na.rm=TRUE))
+         mrae<-abs(apply(mrae.mat,1,FUN=mean, na.rm=TRUE))
+         pw<-abs(apply(pw.mat,1,FUN=mean, na.rm=TRUE))
+         crps<-abs(apply(crps.mat,1,FUN=mean, na.rm=TRUE))
+       }
+ 
+ 
+ x.axis.new <- matrix(x.axis, nrow=length(slots), ncol=100, byrow=TRUE)
+ 
+ plot(x.axis.new, crps.mat, ylim=c(4.5, 10), ylab="Median CRPS", xlab="N_T", main=paste("K=", value2))
+ lines(loess(crps~x.axis)) 
+ 
+ #par(mfrow=c(3,3))
+ #plot(c,error.all,pch=15,main="Weighted Weight Error (all)")
+ #lines(loess(error.all~c))
+ #plot(c,error,pch=15,main="Weight Error (largest weight model)")
+ #abline(h=0)
+ 
+ #plot(c,crps,pch=15,main="CRPS")
+ #lines(loess(crps~c))
+ #plot(c,mae,pch=15,main="MAE")
+ #lines(loess(mae~c))
+ #plot(c,rmse,pch=15,main="RMSE")
+ #lines(loess(rmse~c))
+ #plot(c,mape,pch=15,main="MAPE")
+ #lines(loess(mape~c))
+ #plot(c,meape,pch=15,main="MEAPE")
+ #lines(loess(meape~c))
+ #plot(c,mrae,pch=15,main="MRAE")
+ #lines(loess(mrae~c))
+ #plot(c,pw,pch=15,main="PW")
+ #lines(loess(pw~c))
+ 
+ 
+ 
+ }
> par(mfrow=c(3,1))
> plot.fn(pos1=5, value1=0, pos2=2, value2=3, pos3=1)
[1] 1
[1] 2
[1] 3
[1] 4
[1] 5
[1] 6
[1] 7
[1] 8
[1] 9
[1] 10
[1] 11
[1] 12
[1] 13
[1] 14
[1] 15
[1] 16
[1] 17
[1] 18
[1] 19
[1] 20
[1] 21
> plot.fn(pos1=5, value1=0, pos2=2, value2=9, pos3=1)
[1] 64
[1] 65
[1] 66
[1] 67
[1] 68
[1] 69
[1] 70
[1] 71
[1] 72
[1] 73
[1] 74
[1] 75
[1] 76
[1] 77
[1] 78
[1] 79
[1] 80
[1] 81
[1] 82
[1] 83
[1] 84
> plot.fn(pos1=5, value1=0, pos2=2, value2=15, pos3=1)
[1] 127
[1] 128
[1] 129
[1] 130
[1] 131
[1] 132
[1] 133
[1] 134
[1] 135
[1] 136
[1] 137
[1] 138
[1] 139
[1] 140
[1] 141
[1] 142
[1] 143
[1] 144
[1] 145
[1] 146
[1] 147
> rm(list=ls(all=TRUE))
> 
> #setwd("~/Documents/GitHub/EBMAforecast/APSA_2012/Simulations")
> setwd("~/Github/EBMAforecast/APSA_2012/Simulations")
> 
> load("SecondRound")
> #objects()
> 
> #summary(output)
> 
> 
> ##### here is the function that plots seven points with a lowes line for each statistic
> plot.fn<-function(pos1=1, value1=5, pos2=2,value2=5,pos3=5,func="med"){
+ 
+ 
+ #pos1=5; value1=0; pos2=2; value2=5; pos3=2
+ 
+ # alpha<-c(10,5,3)
+ #  if (models>3){alpha<-c(alpha, rep(1, models-3))}
+ # a.mean <- alpha/sum(alpha) # ?
+   
+ 
+ slots<-NA
+ count<-0
+ for(i in 1:1911){
+  if(output[[i]]$theseParams[pos1]==value1 & output[[i]]$theseParams[pos2]==value2){
+  count<-count+1
+  slots[count]<-i} 
+  }
+ error.mat<-mae.mat<-rmse.mat<-mad.mat<-rmsle.mat <- mape.mat <- meape.mat <- mrae.mat <- pw.mat <- crps.mat <- matrix(NA,nrow=length(slots),ncol=100)
+ 
+ x.axis <- rep(NA, length(slots))
+ count <- 1
+ for(i in slots){
+   print(i)
+   x.axis[count] <- output[[i]]$theseParams[pos3]
+   count <- count+1
+ }
+ 
+ for(i in slots){
+  count<-which(slots==i)
+         errror.all.mat<-abs(output[[i]]$error)#%*%a.mean
+  #error.all.mat<-rowSums(abs(output[[i]]$error))
+  error.mat[count,]<-output[[i]]$error[,1]
+  rmse.mat[count,]<-output[[i]]$pred.rmse[,"EBMA"]
+  mae.mat[count,]<-output[[i]]$pred.mae[,"EBMA"]
+         mad.mat[count,]<-output[[i]]$pred.mad[,"EBMA"]
+         rmsle.mat[count,] <- output[[i]]$pred.rmsle[,"EBMA"]
+         mape.mat[count,] <- output[[i]]$pred.mape[,"EBMA"]
+         meape.mat[count,] <- output[[i]]$pred.meape[,"EBMA"]
+         mrae.mat[count,] <- output[[i]]$pred.mrae[,"EBMA"]
+         pw.mat[count,] <- output[[i]]$pred.pw[,"EBMA"]
+         crps.mat[count,] <- output[[i]]$model.crps
+ }
+ 
+ if(func=="med"){
+  error.all<-apply(abs(error.mat),1,FUN=median,na.rm=TRUE)
+  error<-(apply(error.mat,1,FUN=median, na.rm=TRUE))
+  rmse<-abs(apply(rmse.mat,1,FUN=median, na.rm=TRUE))
+  mae<-abs(apply(mae.mat,1,FUN=median, na.rm=TRUE))
+        mad<-abs(apply(mad.mat,1,FUN=median, na.rm=TRUE))
+         rmsle<-abs(apply(rmsle.mat,1,FUN=median, na.rm=TRUE))
+         mape<-abs(apply(mape.mat,1,FUN=median, na.rm=TRUE))
+         meape<-abs(apply(meape.mat,1,FUN=median, na.rm=TRUE))
+         mrae<-abs(apply(mrae.mat,1,FUN=median, na.rm=TRUE))
+         pw<-abs(apply(pw.mat,1,FUN=median, na.rm=TRUE))
+         crps<-abs(apply(crps.mat,1,FUN=median, na.rm=TRUE))
+       }
+ 
+ if(func=="mea"){
+  error.all<-apply(abs(error.mat),1,FUN=mean,na.rm=TRUE)
+  error<-(apply(error.mat,1,FUN=mean, na.rm=TRUE))
+  rmse<-abs(apply(rmse.mat,1,FUN=mean, na.rm=TRUE))
+  mae<-abs(apply(mae.mat,1,FUN=mean, na.rm=TRUE))
+        mad<-abs(apply(mad.mat,1,FUN=mean, na.rm=TRUE))
+         rmsle<-abs(apply(rmsle.mat,1,FUN=mean, na.rm=TRUE))
+         mape<-abs(apply(mape.mat,1,FUN=mean, na.rm=TRUE))
+         meape<-abs(apply(meape.mat,1,FUN=mean, na.rm=TRUE))
+         mrae<-abs(apply(mrae.mat,1,FUN=mean, na.rm=TRUE))
+         pw<-abs(apply(pw.mat,1,FUN=mean, na.rm=TRUE))
+         crps<-abs(apply(crps.mat,1,FUN=mean, na.rm=TRUE))
+       }
+ 
+ 
+ x.axis.new <- matrix(x.axis, nrow=length(slots), ncol=100, byrow=TRUE)
+ 
+ plot(x.axis.new, crps.mat, ylim=c(4.5, 10), ylab="Median CRPS", xlab="N_T", main=paste("K=", value2), col="gray90")
+ lines(loess(crps~x.axis)) 
+ 
+ #par(mfrow=c(3,3))
+ #plot(c,error.all,pch=15,main="Weighted Weight Error (all)")
+ #lines(loess(error.all~c))
+ #plot(c,error,pch=15,main="Weight Error (largest weight model)")
+ #abline(h=0)
+ 
+ #plot(c,crps,pch=15,main="CRPS")
+ #lines(loess(crps~c))
+ #plot(c,mae,pch=15,main="MAE")
+ #lines(loess(mae~c))
+ #plot(c,rmse,pch=15,main="RMSE")
+ #lines(loess(rmse~c))
+ #plot(c,mape,pch=15,main="MAPE")
+ #lines(loess(mape~c))
+ #plot(c,meape,pch=15,main="MEAPE")
+ #lines(loess(meape~c))
+ #plot(c,mrae,pch=15,main="MRAE")
+ #lines(loess(mrae~c))
+ #plot(c,pw,pch=15,main="PW")
+ #lines(loess(pw~c))
+ 
+ 
+ 
+ }
> 
> 
> 
> par(mfrow=c(3,1))
> plot.fn(pos1=5, value1=0, pos2=2, value2=3, pos3=1)
[1] 1
[1] 2
[1] 3
[1] 4
[1] 5
[1] 6
[1] 7
[1] 8
[1] 9
[1] 10
[1] 11
[1] 12
[1] 13
[1] 14
[1] 15
[1] 16
[1] 17
[1] 18
[1] 19
[1] 20
[1] 21
> plot.fn(pos1=5, value1=0, pos2=2, value2=9, pos3=1)
[1] 64
[1] 65
[1] 66
[1] 67
[1] 68
[1] 69
[1] 70
[1] 71
[1] 72
[1] 73
[1] 74
[1] 75
[1] 76
[1] 77
[1] 78
[1] 79
[1] 80
[1] 81
[1] 82
[1] 83
[1] 84
> plot.fn(pos1=5, value1=0, pos2=2, value2=15, pos3=1)
[1] 127
[1] 128
[1] 129
[1] 130
[1] 131
[1] 132
[1] 133
[1] 134
[1] 135
[1] 136
[1] 137
[1] 138
[1] 139
[1] 140
[1] 141
[1] 142
[1] 143
[1] 144
[1] 145
[1] 146
[1] 147
> 
> 
> #nTrain<-c(3:15,20,25,35,45,55,65,85,100)
> #nmod<-seq(3,15, by=2)
> #constant<-c(0,.01, 0.02,.025, 0.03, 0.04, .05, 0.075, 0.1, 0.15, 0.2, 0.3, .5)
> #iter<-100
> #outSample<-250
> 
> lines(loess(crps.mat~x.axis.new)) 
Error in eval(expr, envir, enclos) : object 'crps.mat' not found
> rm(list=ls(all=TRUE))
> 
> #setwd("~/Documents/GitHub/EBMAforecast/APSA_2012/Simulations")
> setwd("~/Github/EBMAforecast/APSA_2012/Simulations")
> 
> load("SecondRound")
> #objects()
> 
> #summary(output)
> 
> 
> ##### here is the function that plots seven points with a lowes line for each statistic
> plot.fn<-function(pos1=1, value1=5, pos2=2,value2=5,pos3=5,func="med"){
+ 
+ 
+ #pos1=5; value1=0; pos2=2; value2=5; pos3=2
+ 
+ # alpha<-c(10,5,3)
+ #  if (models>3){alpha<-c(alpha, rep(1, models-3))}
+ # a.mean <- alpha/sum(alpha) # ?
+   
+ 
+ slots<-NA
+ count<-0
+ for(i in 1:1911){
+  if(output[[i]]$theseParams[pos1]==value1 & output[[i]]$theseParams[pos2]==value2){
+  count<-count+1
+  slots[count]<-i} 
+  }
+ error.mat<-mae.mat<-rmse.mat<-mad.mat<-rmsle.mat <- mape.mat <- meape.mat <- mrae.mat <- pw.mat <- crps.mat <- matrix(NA,nrow=length(slots),ncol=100)
+ 
+ x.axis <- rep(NA, length(slots))
+ count <- 1
+ for(i in slots){
+   print(i)
+   x.axis[count] <- output[[i]]$theseParams[pos3]
+   count <- count+1
+ }
+ 
+ for(i in slots){
+  count<-which(slots==i)
+         errror.all.mat<-abs(output[[i]]$error)#%*%a.mean
+  #error.all.mat<-rowSums(abs(output[[i]]$error))
+  error.mat[count,]<-output[[i]]$error[,1]
+  rmse.mat[count,]<-output[[i]]$pred.rmse[,"EBMA"]
+  mae.mat[count,]<-output[[i]]$pred.mae[,"EBMA"]
+         mad.mat[count,]<-output[[i]]$pred.mad[,"EBMA"]
+         rmsle.mat[count,] <- output[[i]]$pred.rmsle[,"EBMA"]
+         mape.mat[count,] <- output[[i]]$pred.mape[,"EBMA"]
+         meape.mat[count,] <- output[[i]]$pred.meape[,"EBMA"]
+         mrae.mat[count,] <- output[[i]]$pred.mrae[,"EBMA"]
+         pw.mat[count,] <- output[[i]]$pred.pw[,"EBMA"]
+         crps.mat[count,] <- output[[i]]$model.crps
+ }
+ 
+ if(func=="med"){
+  error.all<-apply(abs(error.mat),1,FUN=median,na.rm=TRUE)
+  error<-(apply(error.mat,1,FUN=median, na.rm=TRUE))
+  rmse<-abs(apply(rmse.mat,1,FUN=median, na.rm=TRUE))
+  mae<-abs(apply(mae.mat,1,FUN=median, na.rm=TRUE))
+        mad<-abs(apply(mad.mat,1,FUN=median, na.rm=TRUE))
+         rmsle<-abs(apply(rmsle.mat,1,FUN=median, na.rm=TRUE))
+         mape<-abs(apply(mape.mat,1,FUN=median, na.rm=TRUE))
+         meape<-abs(apply(meape.mat,1,FUN=median, na.rm=TRUE))
+         mrae<-abs(apply(mrae.mat,1,FUN=median, na.rm=TRUE))
+         pw<-abs(apply(pw.mat,1,FUN=median, na.rm=TRUE))
+         crps<-abs(apply(crps.mat,1,FUN=median, na.rm=TRUE))
+       }
+ 
+ if(func=="mea"){
+  error.all<-apply(abs(error.mat),1,FUN=mean,na.rm=TRUE)
+  error<-(apply(error.mat,1,FUN=mean, na.rm=TRUE))
+  rmse<-abs(apply(rmse.mat,1,FUN=mean, na.rm=TRUE))
+  mae<-abs(apply(mae.mat,1,FUN=mean, na.rm=TRUE))
+        mad<-abs(apply(mad.mat,1,FUN=mean, na.rm=TRUE))
+         rmsle<-abs(apply(rmsle.mat,1,FUN=mean, na.rm=TRUE))
+         mape<-abs(apply(mape.mat,1,FUN=mean, na.rm=TRUE))
+         meape<-abs(apply(meape.mat,1,FUN=mean, na.rm=TRUE))
+         mrae<-abs(apply(mrae.mat,1,FUN=mean, na.rm=TRUE))
+         pw<-abs(apply(pw.mat,1,FUN=mean, na.rm=TRUE))
+         crps<-abs(apply(crps.mat,1,FUN=mean, na.rm=TRUE))
+       }
+ 
+ 
+ x.axis.new <- matrix(x.axis, nrow=length(slots), ncol=100, byrow=TRUE)
+ 
+ plot(x.axis.new, crps.mat, ylim=c(4, 12), ylab="Median CRPS", xlab="N_T", main=paste("K=", value2), col="gray90")
+ lines(loess(crps.mat~x.axis.new)) 
+ 
+ #par(mfrow=c(3,3))
+ #plot(c,error.all,pch=15,main="Weighted Weight Error (all)")
+ #lines(loess(error.all~c))
+ #plot(c,error,pch=15,main="Weight Error (largest weight model)")
+ #abline(h=0)
+ 
+ #plot(c,crps,pch=15,main="CRPS")
+ #lines(loess(crps~c))
+ #plot(c,mae,pch=15,main="MAE")
+ #lines(loess(mae~c))
+ #plot(c,rmse,pch=15,main="RMSE")
+ #lines(loess(rmse~c))
+ #plot(c,mape,pch=15,main="MAPE")
+ #lines(loess(mape~c))
+ #plot(c,meape,pch=15,main="MEAPE")
+ #lines(loess(meape~c))
+ #plot(c,mrae,pch=15,main="MRAE")
+ #lines(loess(mrae~c))
+ #plot(c,pw,pch=15,main="PW")
+ #lines(loess(pw~c))
+ 
+ 
+ 
+ }
> 
> 
> 
> par(mfrow=c(3,1))
> plot.fn(pos1=5, value1=0, pos2=2, value2=3, pos3=1)
[1] 1
[1] 2
[1] 3
[1] 4
[1] 5
[1] 6
[1] 7
[1] 8
[1] 9
[1] 10
[1] 11
[1] 12
[1] 13
[1] 14
[1] 15
[1] 16
[1] 17
[1] 18
[1] 19
[1] 20
[1] 21
Error in simpleLoess(y, x, w, span, degree, parametric, drop.square, normalize,  : 
  only 1-4 predictors are allowed
> plot.fn(pos1=5, value1=0, pos2=2, value2=9, pos3=1)
[1] 64
[1] 65
[1] 66
[1] 67
[1] 68
[1] 69
[1] 70
[1] 71
[1] 72
[1] 73
[1] 74
[1] 75
[1] 76
[1] 77
[1] 78
[1] 79
[1] 80
[1] 81
[1] 82
[1] 83
[1] 84
Error in simpleLoess(y, x, w, span, degree, parametric, drop.square, normalize,  : 
  only 1-4 predictors are allowed
> plot.fn(pos1=5, value1=0, pos2=2, value2=15, pos3=1)
[1] 127
[1] 128
[1] 129
[1] 130
[1] 131
[1] 132
[1] 133
[1] 134
[1] 135
[1] 136
[1] 137
[1] 138
[1] 139
[1] 140
[1] 141
[1] 142
[1] 143
[1] 144
[1] 145
[1] 146
[1] 147
Error in simpleLoess(y, x, w, span, degree, parametric, drop.square, normalize,  : 
  only 1-4 predictors are allowed
> 
> 
> #nTrain<-c(3:15,20,25,35,45,55,65,85,100)
> #nmod<-seq(3,15, by=2)
> #constant<-c(0,.01, 0.02,.025, 0.03, 0.04, .05, 0.075, 0.1, 0.15, 0.2, 0.3, .5)
> #iter<-100
> #outSample<-250
> 
> c(matrix(c(1:10), nrow=13, ncol=10, byrow=TRUE))
  [1]  1  1  1  1  1  1  1  1  1  1  1  1  1  2  2  2  2  2  2  2  2  2  2  2  2
 [26]  2  3  3  3  3  3  3  3  3  3  3  3  3  3  4  4  4  4  4  4  4  4  4  4  4
 [51]  4  4  5  5  5  5  5  5  5  5  5  5  5  5  5  6  6  6  6  6  6  6  6  6  6
 [76]  6  6  6  7  7  7  7  7  7  7  7  7  7  7  7  7  8  8  8  8  8  8  8  8  8
[101]  8  8  8  8  9  9  9  9  9  9  9  9  9  9  9  9  9 10 10 10 10 10 10 10 10
[126] 10 10 10 10 10
> rm(list=ls(all=TRUE))
> 
> #setwd("~/Documents/GitHub/EBMAforecast/APSA_2012/Simulations")
> setwd("~/Github/EBMAforecast/APSA_2012/Simulations")
> 
> load("SecondRound")
> #objects()
> 
> #summary(output)
> 
> 
> ##### here is the function that plots seven points with a lowes line for each statistic
> plot.fn<-function(pos1=1, value1=5, pos2=2,value2=5,pos3=5,func="med"){
+ 
+ 
+ #pos1=5; value1=0; pos2=2; value2=5; pos3=2
+ 
+ # alpha<-c(10,5,3)
+ #  if (models>3){alpha<-c(alpha, rep(1, models-3))}
+ # a.mean <- alpha/sum(alpha) # ?
+   
+ 
+ slots<-NA
+ count<-0
+ for(i in 1:1911){
+  if(output[[i]]$theseParams[pos1]==value1 & output[[i]]$theseParams[pos2]==value2){
+  count<-count+1
+  slots[count]<-i} 
+  }
+ error.mat<-mae.mat<-rmse.mat<-mad.mat<-rmsle.mat <- mape.mat <- meape.mat <- mrae.mat <- pw.mat <- crps.mat <- matrix(NA,nrow=length(slots),ncol=100)
+ 
+ x.axis <- rep(NA, length(slots))
+ count <- 1
+ for(i in slots){
+   print(i)
+   x.axis[count] <- output[[i]]$theseParams[pos3]
+   count <- count+1
+ }
+ 
+ for(i in slots){
+  count<-which(slots==i)
+         errror.all.mat<-abs(output[[i]]$error)#%*%a.mean
+  #error.all.mat<-rowSums(abs(output[[i]]$error))
+  error.mat[count,]<-output[[i]]$error[,1]
+  rmse.mat[count,]<-output[[i]]$pred.rmse[,"EBMA"]
+  mae.mat[count,]<-output[[i]]$pred.mae[,"EBMA"]
+         mad.mat[count,]<-output[[i]]$pred.mad[,"EBMA"]
+         rmsle.mat[count,] <- output[[i]]$pred.rmsle[,"EBMA"]
+         mape.mat[count,] <- output[[i]]$pred.mape[,"EBMA"]
+         meape.mat[count,] <- output[[i]]$pred.meape[,"EBMA"]
+         mrae.mat[count,] <- output[[i]]$pred.mrae[,"EBMA"]
+         pw.mat[count,] <- output[[i]]$pred.pw[,"EBMA"]
+         crps.mat[count,] <- output[[i]]$model.crps
+ }
+ 
+ if(func=="med"){
+  error.all<-apply(abs(error.mat),1,FUN=median,na.rm=TRUE)
+  error<-(apply(error.mat,1,FUN=median, na.rm=TRUE))
+  rmse<-abs(apply(rmse.mat,1,FUN=median, na.rm=TRUE))
+  mae<-abs(apply(mae.mat,1,FUN=median, na.rm=TRUE))
+        mad<-abs(apply(mad.mat,1,FUN=median, na.rm=TRUE))
+         rmsle<-abs(apply(rmsle.mat,1,FUN=median, na.rm=TRUE))
+         mape<-abs(apply(mape.mat,1,FUN=median, na.rm=TRUE))
+         meape<-abs(apply(meape.mat,1,FUN=median, na.rm=TRUE))
+         mrae<-abs(apply(mrae.mat,1,FUN=median, na.rm=TRUE))
+         pw<-abs(apply(pw.mat,1,FUN=median, na.rm=TRUE))
+         crps<-abs(apply(crps.mat,1,FUN=median, na.rm=TRUE))
+       }
+ 
+ if(func=="mea"){
+  error.all<-apply(abs(error.mat),1,FUN=mean,na.rm=TRUE)
+  error<-(apply(error.mat,1,FUN=mean, na.rm=TRUE))
+  rmse<-abs(apply(rmse.mat,1,FUN=mean, na.rm=TRUE))
+  mae<-abs(apply(mae.mat,1,FUN=mean, na.rm=TRUE))
+        mad<-abs(apply(mad.mat,1,FUN=mean, na.rm=TRUE))
+         rmsle<-abs(apply(rmsle.mat,1,FUN=mean, na.rm=TRUE))
+         mape<-abs(apply(mape.mat,1,FUN=mean, na.rm=TRUE))
+         meape<-abs(apply(meape.mat,1,FUN=mean, na.rm=TRUE))
+         mrae<-abs(apply(mrae.mat,1,FUN=mean, na.rm=TRUE))
+         pw<-abs(apply(pw.mat,1,FUN=mean, na.rm=TRUE))
+         crps<-abs(apply(crps.mat,1,FUN=mean, na.rm=TRUE))
+       }
+ 
+ 
+ x.axis.new <- matrix(x.axis, nrow=length(slots), ncol=100, byrow=TRUE)
+ 
+ plot(x.axis.new, crps.mat, ylim=c(4, 12), ylab="Median CRPS", xlab="N_T", main=paste("K=", value2), col="gray90")
+ lines(loess(c(crps.mat)~c(x.axis.new))) 
+ 
+ #par(mfrow=c(3,3))
+ #plot(c,error.all,pch=15,main="Weighted Weight Error (all)")
+ #lines(loess(error.all~c))
+ #plot(c,error,pch=15,main="Weight Error (largest weight model)")
+ #abline(h=0)
+ 
+ #plot(c,crps,pch=15,main="CRPS")
+ #lines(loess(crps~c))
+ #plot(c,mae,pch=15,main="MAE")
+ #lines(loess(mae~c))
+ #plot(c,rmse,pch=15,main="RMSE")
+ #lines(loess(rmse~c))
+ #plot(c,mape,pch=15,main="MAPE")
+ #lines(loess(mape~c))
+ #plot(c,meape,pch=15,main="MEAPE")
+ #lines(loess(meape~c))
+ #plot(c,mrae,pch=15,main="MRAE")
+ #lines(loess(mrae~c))
+ #plot(c,pw,pch=15,main="PW")
+ #lines(loess(pw~c))
+ 
+ 
+ 
+ }
> 
> 
> 
> par(mfrow=c(3,1))
> plot.fn(pos1=5, value1=0, pos2=2, value2=3, pos3=1)
[1] 1
[1] 2
[1] 3
[1] 4
[1] 5
[1] 6
[1] 7
[1] 8
[1] 9
[1] 10
[1] 11
[1] 12
[1] 13
[1] 14
[1] 15
[1] 16
[1] 17
[1] 18
[1] 19
[1] 20
[1] 21
> plot.fn(pos1=5, value1=0, pos2=2, value2=9, pos3=1)
[1] 64
[1] 65
[1] 66
[1] 67
[1] 68
[1] 69
[1] 70
[1] 71
[1] 72
[1] 73
[1] 74
[1] 75
[1] 76
[1] 77
[1] 78
[1] 79
[1] 80
[1] 81
[1] 82
[1] 83
[1] 84
> plot.fn(pos1=5, value1=0, pos2=2, value2=15, pos3=1)
[1] 127
[1] 128
[1] 129
[1] 130
[1] 131
[1] 132
[1] 133
[1] 134
[1] 135
[1] 136
[1] 137
[1] 138
[1] 139
[1] 140
[1] 141
[1] 142
[1] 143
[1] 144
[1] 145
[1] 146
[1] 147
> 
> 
> #nTrain<-c(3:15,20,25,35,45,55,65,85,100)
> #nmod<-seq(3,15, by=2)
> #constant<-c(0,.01, 0.02,.025, 0.03, 0.04, .05, 0.075, 0.1, 0.15, 0.2, 0.3, .5)
> #iter<-100
> #outSample<-250
> 
> c(matrix(c(1:10), nrow=13, ncol=10, byrow=TRUE))
  [1]  1  1  1  1  1  1  1  1  1  1  1  1  1  2  2  2  2  2  2  2  2  2  2  2  2
 [26]  2  3  3  3  3  3  3  3  3  3  3  3  3  3  4  4  4  4  4  4  4  4  4  4  4
 [51]  4  4  5  5  5  5  5  5  5  5  5  5  5  5  5  6  6  6  6  6  6  6  6  6  6
 [76]  6  6  6  7  7  7  7  7  7  7  7  7  7  7  7  7  8  8  8  8  8  8  8  8  8
[101]  8  8  8  8  9  9  9  9  9  9  9  9  9  9  9  9  9 10 10 10 10 10 10 10 10
[126] 10 10 10 10 10
> loess(c(matrix(c(1:10), nrow=13, ncol=10, byrow=TRUE))~c(matrix(c(1:10), nrow=13, ncol=10, byrow=TRUE)))
Error in simpleLoess(y, x, w, span, degree, parametric, drop.square, normalize,  : 
  invalid 'x'
> c(matrix(c(1:10), nrow=13, ncol=10, byrow=TRUE))
  [1]  1  1  1  1  1  1  1  1  1  1  1  1  1  2  2  2  2  2  2  2  2  2  2  2  2
 [26]  2  3  3  3  3  3  3  3  3  3  3  3  3  3  4  4  4  4  4  4  4  4  4  4  4
 [51]  4  4  5  5  5  5  5  5  5  5  5  5  5  5  5  6  6  6  6  6  6  6  6  6  6
 [76]  6  6  6  7  7  7  7  7  7  7  7  7  7  7  7  7  8  8  8  8  8  8  8  8  8
[101]  8  8  8  8  9  9  9  9  9  9  9  9  9  9  9  9  9 10 10 10 10 10 10 10 10
[126] 10 10 10 10 10
> c(matrix(c(1:10), nrow=13, ncol=10, byrow=TRUE))
  [1]  1  1  1  1  1  1  1  1  1  1  1  1  1  2  2  2  2  2  2  2  2  2  2  2  2
 [26]  2  3  3  3  3  3  3  3  3  3  3  3  3  3  4  4  4  4  4  4  4  4  4  4  4
 [51]  4  4  5  5  5  5  5  5  5  5  5  5  5  5  5  6  6  6  6  6  6  6  6  6  6
 [76]  6  6  6  7  7  7  7  7  7  7  7  7  7  7  7  7  8  8  8  8  8  8  8  8  8
[101]  8  8  8  8  9  9  9  9  9  9  9  9  9  9  9  9  9 10 10 10 10 10 10 10 10
[126] 10 10 10 10 10
> loess(c(matrix(c(1:10), nrow=13, ncol=10, byrow=TRUE))~c(matrix(c(1:10), nrow=13, ncol=10, byrow=TRUE)))
Error in simpleLoess(y, x, w, span, degree, parametric, drop.square, normalize,  : 
  invalid 'x'
> lines(loess(c(crps)~c(x.axis))) 
Error in eval(expr, envir, enclos) : object 'crps' not found
> rm(list=ls(all=TRUE))
> 
> #setwd("~/Documents/GitHub/EBMAforecast/APSA_2012/Simulations")
> setwd("~/Github/EBMAforecast/APSA_2012/Simulations")
> 
> load("SecondRound")
> #objects()
> 
> #summary(output)
> 
> 
> ##### here is the function that plots seven points with a lowes line for each statistic
> plot.fn<-function(pos1=1, value1=5, pos2=2,value2=5,pos3=5,func="med"){
+ 
+ 
+ #pos1=5; value1=0; pos2=2; value2=5; pos3=2
+ 
+ # alpha<-c(10,5,3)
+ #  if (models>3){alpha<-c(alpha, rep(1, models-3))}
+ # a.mean <- alpha/sum(alpha) # ?
+   
+ 
+ slots<-NA
+ count<-0
+ for(i in 1:1911){
+  if(output[[i]]$theseParams[pos1]==value1 & output[[i]]$theseParams[pos2]==value2){
+  count<-count+1
+  slots[count]<-i} 
+  }
+ error.mat<-mae.mat<-rmse.mat<-mad.mat<-rmsle.mat <- mape.mat <- meape.mat <- mrae.mat <- pw.mat <- crps.mat <- matrix(NA,nrow=length(slots),ncol=100)
+ 
+ x.axis <- rep(NA, length(slots))
+ count <- 1
+ for(i in slots){
+   print(i)
+   x.axis[count] <- output[[i]]$theseParams[pos3]
+   count <- count+1
+ }
+ 
+ for(i in slots){
+  count<-which(slots==i)
+         errror.all.mat<-abs(output[[i]]$error)#%*%a.mean
+  #error.all.mat<-rowSums(abs(output[[i]]$error))
+  error.mat[count,]<-output[[i]]$error[,1]
+  rmse.mat[count,]<-output[[i]]$pred.rmse[,"EBMA"]
+  mae.mat[count,]<-output[[i]]$pred.mae[,"EBMA"]
+         mad.mat[count,]<-output[[i]]$pred.mad[,"EBMA"]
+         rmsle.mat[count,] <- output[[i]]$pred.rmsle[,"EBMA"]
+         mape.mat[count,] <- output[[i]]$pred.mape[,"EBMA"]
+         meape.mat[count,] <- output[[i]]$pred.meape[,"EBMA"]
+         mrae.mat[count,] <- output[[i]]$pred.mrae[,"EBMA"]
+         pw.mat[count,] <- output[[i]]$pred.pw[,"EBMA"]
+         crps.mat[count,] <- output[[i]]$model.crps
+ }
+ 
+ if(func=="med"){
+  error.all<-apply(abs(error.mat),1,FUN=median,na.rm=TRUE)
+  error<-(apply(error.mat,1,FUN=median, na.rm=TRUE))
+  rmse<-abs(apply(rmse.mat,1,FUN=median, na.rm=TRUE))
+  mae<-abs(apply(mae.mat,1,FUN=median, na.rm=TRUE))
+        mad<-abs(apply(mad.mat,1,FUN=median, na.rm=TRUE))
+         rmsle<-abs(apply(rmsle.mat,1,FUN=median, na.rm=TRUE))
+         mape<-abs(apply(mape.mat,1,FUN=median, na.rm=TRUE))
+         meape<-abs(apply(meape.mat,1,FUN=median, na.rm=TRUE))
+         mrae<-abs(apply(mrae.mat,1,FUN=median, na.rm=TRUE))
+         pw<-abs(apply(pw.mat,1,FUN=median, na.rm=TRUE))
+         crps<-abs(apply(crps.mat,1,FUN=median, na.rm=TRUE))
+       }
+ 
+ if(func=="mea"){
+  error.all<-apply(abs(error.mat),1,FUN=mean,na.rm=TRUE)
+  error<-(apply(error.mat,1,FUN=mean, na.rm=TRUE))
+  rmse<-abs(apply(rmse.mat,1,FUN=mean, na.rm=TRUE))
+  mae<-abs(apply(mae.mat,1,FUN=mean, na.rm=TRUE))
+        mad<-abs(apply(mad.mat,1,FUN=mean, na.rm=TRUE))
+         rmsle<-abs(apply(rmsle.mat,1,FUN=mean, na.rm=TRUE))
+         mape<-abs(apply(mape.mat,1,FUN=mean, na.rm=TRUE))
+         meape<-abs(apply(meape.mat,1,FUN=mean, na.rm=TRUE))
+         mrae<-abs(apply(mrae.mat,1,FUN=mean, na.rm=TRUE))
+         pw<-abs(apply(pw.mat,1,FUN=mean, na.rm=TRUE))
+         crps<-abs(apply(crps.mat,1,FUN=mean, na.rm=TRUE))
+       }
+ 
+ 
+ x.axis.new <- matrix(x.axis, nrow=length(slots), ncol=100, byrow=TRUE)
+ 
+ plot(x.axis.new, crps.mat, ylim=c(4, 12), ylab="Median CRPS", xlab="N_T", main=paste("K=", value2), col="gray90")
+ lines(loess(c(crps)~c(x.axis))) 
+ 
+ #par(mfrow=c(3,3))
+ #plot(c,error.all,pch=15,main="Weighted Weight Error (all)")
+ #lines(loess(error.all~c))
+ #plot(c,error,pch=15,main="Weight Error (largest weight model)")
+ #abline(h=0)
+ 
+ #plot(c,crps,pch=15,main="CRPS")
+ #lines(loess(crps~c))
+ #plot(c,mae,pch=15,main="MAE")
+ #lines(loess(mae~c))
+ #plot(c,rmse,pch=15,main="RMSE")
+ #lines(loess(rmse~c))
+ #plot(c,mape,pch=15,main="MAPE")
+ #lines(loess(mape~c))
+ #plot(c,meape,pch=15,main="MEAPE")
+ #lines(loess(meape~c))
+ #plot(c,mrae,pch=15,main="MRAE")
+ #lines(loess(mrae~c))
+ #plot(c,pw,pch=15,main="PW")
+ #lines(loess(pw~c))
+ 
+ 
+ 
+ }
> 
> 
> 
> par(mfrow=c(3,1))
> plot.fn(pos1=5, value1=0, pos2=2, value2=3, pos3=1, func="mea")
[1] 1
[1] 2
[1] 3
[1] 4
[1] 5
[1] 6
[1] 7
[1] 8
[1] 9
[1] 10
[1] 11
[1] 12
[1] 13
[1] 14
[1] 15
[1] 16
[1] 17
[1] 18
[1] 19
[1] 20
[1] 21
> plot.fn(pos1=5, value1=0, pos2=2, value2=9, pos3=1)
[1] 64
[1] 65
[1] 66
[1] 67
[1] 68
[1] 69
[1] 70
[1] 71
[1] 72
[1] 73
[1] 74
[1] 75
[1] 76
[1] 77
[1] 78
[1] 79
[1] 80
[1] 81
[1] 82
[1] 83
[1] 84
> plot.fn(pos1=5, value1=0, pos2=2, value2=15, pos3=1)
[1] 127
[1] 128
[1] 129
[1] 130
[1] 131
[1] 132
[1] 133
[1] 134
[1] 135
[1] 136
[1] 137
[1] 138
[1] 139
[1] 140
[1] 141
[1] 142
[1] 143
[1] 144
[1] 145
[1] 146
[1] 147
> 
> 
> #nTrain<-c(3:15,20,25,35,45,55,65,85,100)
> #nmod<-seq(3,15, by=2)
> #constant<-c(0,.01, 0.02,.025, 0.03, 0.04, .05, 0.075, 0.1, 0.15, 0.2, 0.3, .5)
> #iter<-100
> #outSample<-250
> 
> plot.fn(pos1=5, value1=0, pos2=1, value2=5, pos3=2, func="mea"d)
Error: unexpected symbol in "plot.fn(pos1=5, value1=0, pos2=1, value2=5, pos3=2, func="mea"d"
> plot.fn(pos1=5, value1=0, pos2=1, value2=5, pos3=2, func="mea")
[1] 3
[1] 24
[1] 45
[1] 66
[1] 87
[1] 108
[1] 129
> plot.fn(pos1=5, value1=0, pos2=1, value2=15, pos3=2, func="mea"d)
Error: unexpected symbol in "plot.fn(pos1=5, value1=0, pos2=1, value2=15, pos3=2, func="mea"d"
> plot.fn(pos1=5, value1=0, pos2=1, value2=15, pos3=2, func="mea")
[1] 13
[1] 34
[1] 55
[1] 76
[1] 97
[1] 118
[1] 139
> plot.fn(pos1=5, value1=0, pos2=1, value2=100, pos3=2, func="mea")
[1] 21
[1] 42
[1] 63
[1] 84
[1] 105
[1] 126
[1] 147
> rm(list=ls(all=TRUE))
> 
> #setwd("~/Documents/GitHub/EBMAforecast/APSA_2012/Simulations")
> setwd("~/Github/EBMAforecast/APSA_2012/Simulations")
> 
> load("SecondRound")
> #objects()
> 
> #summary(output)
> 
> 
> ##### here is the function that plots seven points with a lowes line for each statistic
> plot.fn<-function(pos1=1, value1=5, pos2=2,value2=5,pos3=5,func="med"){
+ 
+ 
+ #pos1=5; value1=0; pos2=2; value2=5; pos3=2
+ 
+ # alpha<-c(10,5,3)
+ #  if (models>3){alpha<-c(alpha, rep(1, models-3))}
+ # a.mean <- alpha/sum(alpha) # ?
+   
+ 
+ slots<-NA
+ count<-0
+ for(i in 1:1911){
+  if(output[[i]]$theseParams[pos1]==value1 & output[[i]]$theseParams[pos2]==value2){
+  count<-count+1
+  slots[count]<-i} 
+  }
+ error.mat<-mae.mat<-rmse.mat<-mad.mat<-rmsle.mat <- mape.mat <- meape.mat <- mrae.mat <- pw.mat <- crps.mat <- matrix(NA,nrow=length(slots),ncol=100)
+ 
+ x.axis <- rep(NA, length(slots))
+ count <- 1
+ for(i in slots){
+   print(i)
+   x.axis[count] <- output[[i]]$theseParams[pos3]
+   count <- count+1
+ }
+ 
+ for(i in slots){
+  count<-which(slots==i)
+         errror.all.mat<-abs(output[[i]]$error)#%*%a.mean
+  #error.all.mat<-rowSums(abs(output[[i]]$error))
+  error.mat[count,]<-output[[i]]$error[,1]
+  rmse.mat[count,]<-output[[i]]$pred.rmse[,"EBMA"]
+  mae.mat[count,]<-output[[i]]$pred.mae[,"EBMA"]
+         mad.mat[count,]<-output[[i]]$pred.mad[,"EBMA"]
+         rmsle.mat[count,] <- output[[i]]$pred.rmsle[,"EBMA"]
+         mape.mat[count,] <- output[[i]]$pred.mape[,"EBMA"]
+         meape.mat[count,] <- output[[i]]$pred.meape[,"EBMA"]
+         mrae.mat[count,] <- output[[i]]$pred.mrae[,"EBMA"]
+         pw.mat[count,] <- output[[i]]$pred.pw[,"EBMA"]
+         crps.mat[count,] <- output[[i]]$model.crps
+ }
+ 
+ if(func=="med"){
+  error.all<-apply(abs(error.mat),1,FUN=median,na.rm=TRUE)
+  error<-(apply(error.mat,1,FUN=median, na.rm=TRUE))
+  rmse<-abs(apply(rmse.mat,1,FUN=median, na.rm=TRUE))
+  mae<-abs(apply(mae.mat,1,FUN=median, na.rm=TRUE))
+        mad<-abs(apply(mad.mat,1,FUN=median, na.rm=TRUE))
+         rmsle<-abs(apply(rmsle.mat,1,FUN=median, na.rm=TRUE))
+         mape<-abs(apply(mape.mat,1,FUN=median, na.rm=TRUE))
+         meape<-abs(apply(meape.mat,1,FUN=median, na.rm=TRUE))
+         mrae<-abs(apply(mrae.mat,1,FUN=median, na.rm=TRUE))
+         pw<-abs(apply(pw.mat,1,FUN=median, na.rm=TRUE))
+         crps<-abs(apply(crps.mat,1,FUN=median, na.rm=TRUE))
+       }
+ 
+ if(func=="mea"){
+  error.all<-apply(abs(error.mat),1,FUN=mean,na.rm=TRUE)
+  error<-(apply(error.mat,1,FUN=mean, na.rm=TRUE))
+  rmse<-abs(apply(rmse.mat,1,FUN=mean, na.rm=TRUE))
+  mae<-abs(apply(mae.mat,1,FUN=mean, na.rm=TRUE))
+        mad<-abs(apply(mad.mat,1,FUN=mean, na.rm=TRUE))
+         rmsle<-abs(apply(rmsle.mat,1,FUN=mean, na.rm=TRUE))
+         mape<-abs(apply(mape.mat,1,FUN=mean, na.rm=TRUE))
+         meape<-abs(apply(meape.mat,1,FUN=mean, na.rm=TRUE))
+         mrae<-abs(apply(mrae.mat,1,FUN=mean, na.rm=TRUE))
+         pw<-abs(apply(pw.mat,1,FUN=mean, na.rm=TRUE))
+         crps<-abs(apply(crps.mat,1,FUN=mean, na.rm=TRUE))
+       }
+ 
+ 
+ x.axis.new <- matrix(x.axis, nrow=length(slots), ncol=100, byrow=TRUE)
+ 
+ plot(x.axis.new, crps.mat, ylim=c(3, 12), ylab="Median CRPS", xlab="N_T", main=paste("K=", value2), col="gray90")
+ lines(loess(c(crps)~c(x.axis))) 
+ 
+ #par(mfrow=c(3,3))
+ #plot(c,error.all,pch=15,main="Weighted Weight Error (all)")
+ #lines(loess(error.all~c))
+ #plot(c,error,pch=15,main="Weight Error (largest weight model)")
+ #abline(h=0)
+ 
+ #plot(c,crps,pch=15,main="CRPS")
+ #lines(loess(crps~c))
+ #plot(c,mae,pch=15,main="MAE")
+ #lines(loess(mae~c))
+ #plot(c,rmse,pch=15,main="RMSE")
+ #lines(loess(rmse~c))
+ #plot(c,mape,pch=15,main="MAPE")
+ #lines(loess(mape~c))
+ #plot(c,meape,pch=15,main="MEAPE")
+ #lines(loess(meape~c))
+ #plot(c,mrae,pch=15,main="MRAE")
+ #lines(loess(mrae~c))
+ #plot(c,pw,pch=15,main="PW")
+ #lines(loess(pw~c))
+ 
+ 
+ 
+ }
> 
> 
> 
> par(mfrow=c(3,1))
> plot.fn(pos1=5, value1=0, pos2=1, value2=5, pos3=2, func="mea")
[1] 3
[1] 24
[1] 45
[1] 66
[1] 87
[1] 108
[1] 129
> plot.fn(pos1=5, value1=0, pos2=1, value2=35, pos3=2, func="mea")
[1] 16
[1] 37
[1] 58
[1] 79
[1] 100
[1] 121
[1] 142
> plot.fn(pos1=5, value1=0, pos2=1, value2=100, pos3=2, func="mea")
[1] 21
[1] 42
[1] 63
[1] 84
[1] 105
[1] 126
[1] 147
> #plot.fn(pos1=5, value1=0, pos2=2, value2=9, pos3=1)
> #plot.fn(pos1=5, value1=0, pos2=2, value2=15, pos3=1)
> 
> 
> #nTrain<-c(3:15,20,25,35,45,55,65,85,100)
> #nmod<-seq(3,15, by=2)
> #constant<-c(0,.01, 0.02,.025, 0.03, 0.04, .05, 0.075, 0.1, 0.15, 0.2, 0.3, .5)
> #iter<-100
> #outSample<-250
> 
> plot.fn<-function(pos1=1, value1=5, pos2=2,value2=5,pos3=5,func="med"){
+ 
+ 
+ #pos1=5; value1=0; pos2=2; value2=5; pos3=2
+ 
+ # alpha<-c(10,5,3)
+ #  if (models>3){alpha<-c(alpha, rep(1, models-3))}
+ # a.mean <- alpha/sum(alpha) # ?
+   
+ 
+ slots<-NA
+ count<-0
+ for(i in 1:1911){
+  if(output[[i]]$theseParams[pos1]==value1 & output[[i]]$theseParams[pos2]==value2){
+  count<-count+1
+  slots[count]<-i} 
+  }
+ error.mat<-mae.mat<-rmse.mat<-mad.mat<-rmsle.mat <- mape.mat <- meape.mat <- mrae.mat <- pw.mat <- crps.mat <- matrix(NA,nrow=length(slots),ncol=100)
+ 
+ x.axis <- rep(NA, length(slots))
+ count <- 1
+ for(i in slots){
+   print(i)
+   x.axis[count] <- output[[i]]$theseParams[pos3]
+   count <- count+1
+ }
+ 
+ for(i in slots){
+  count<-which(slots==i)
+         errror.all.mat<-abs(output[[i]]$error)#%*%a.mean
+  #error.all.mat<-rowSums(abs(output[[i]]$error))
+  error.mat[count,]<-output[[i]]$error[,1]
+  rmse.mat[count,]<-output[[i]]$pred.rmse[,"EBMA"]
+  mae.mat[count,]<-output[[i]]$pred.mae[,"EBMA"]
+         mad.mat[count,]<-output[[i]]$pred.mad[,"EBMA"]
+         rmsle.mat[count,] <- output[[i]]$pred.rmsle[,"EBMA"]
+         mape.mat[count,] <- output[[i]]$pred.mape[,"EBMA"]
+         meape.mat[count,] <- output[[i]]$pred.meape[,"EBMA"]
+         mrae.mat[count,] <- output[[i]]$pred.mrae[,"EBMA"]
+         pw.mat[count,] <- output[[i]]$pred.pw[,"EBMA"]
+         crps.mat[count,] <- output[[i]]$model.crps
+ }
+ 
+ if(func=="med"){
+  error.all<-apply(abs(error.mat),1,FUN=median,na.rm=TRUE)
+  error<-(apply(error.mat,1,FUN=median, na.rm=TRUE))
+  rmse<-abs(apply(rmse.mat,1,FUN=median, na.rm=TRUE))
+  mae<-abs(apply(mae.mat,1,FUN=median, na.rm=TRUE))
+        mad<-abs(apply(mad.mat,1,FUN=median, na.rm=TRUE))
+         rmsle<-abs(apply(rmsle.mat,1,FUN=median, na.rm=TRUE))
+         mape<-abs(apply(mape.mat,1,FUN=median, na.rm=TRUE))
+         meape<-abs(apply(meape.mat,1,FUN=median, na.rm=TRUE))
+         mrae<-abs(apply(mrae.mat,1,FUN=median, na.rm=TRUE))
+         pw<-abs(apply(pw.mat,1,FUN=median, na.rm=TRUE))
+         crps<-abs(apply(crps.mat,1,FUN=median, na.rm=TRUE))
+       }
+ 
+ if(func=="mea"){
+  error.all<-apply(abs(error.mat),1,FUN=mean,na.rm=TRUE)
+  error<-(apply(error.mat,1,FUN=mean, na.rm=TRUE))
+  rmse<-abs(apply(rmse.mat,1,FUN=mean, na.rm=TRUE))
+  mae<-abs(apply(mae.mat,1,FUN=mean, na.rm=TRUE))
+        mad<-abs(apply(mad.mat,1,FUN=mean, na.rm=TRUE))
+         rmsle<-abs(apply(rmsle.mat,1,FUN=mean, na.rm=TRUE))
+         mape<-abs(apply(mape.mat,1,FUN=mean, na.rm=TRUE))
+         meape<-abs(apply(meape.mat,1,FUN=mean, na.rm=TRUE))
+         mrae<-abs(apply(mrae.mat,1,FUN=mean, na.rm=TRUE))
+         pw<-abs(apply(pw.mat,1,FUN=mean, na.rm=TRUE))
+         crps<-abs(apply(crps.mat,1,FUN=mean, na.rm=TRUE))
+       }
+ 
+ 
+ x.axis.new <- matrix(x.axis, nrow=length(slots), ncol=100, byrow=TRUE)
+ 
+ plot(x.axis.new, crps.mat, ylim=c(3, 12), ylab="CRPS", xlab="N_T", main=paste("K=", value2), col="gray90")
+ lines(loess(c(crps)~c(x.axis))) 
+ 
+ #par(mfrow=c(3,3))
+ #plot(c,error.all,pch=15,main="Weighted Weight Error (all)")
+ #lines(loess(error.all~c))
+ #plot(c,error,pch=15,main="Weight Error (largest weight model)")
+ #abline(h=0)
+ 
+ #plot(c,crps,pch=15,main="CRPS")
+ #lines(loess(crps~c))
+ #plot(c,mae,pch=15,main="MAE")
+ #lines(loess(mae~c))
+ #plot(c,rmse,pch=15,main="RMSE")
+ #lines(loess(rmse~c))
+ #plot(c,mape,pch=15,main="MAPE")
+ #lines(loess(mape~c))
+ #plot(c,meape,pch=15,main="MEAPE")
+ #lines(loess(meape~c))
+ #plot(c,mrae,pch=15,main="MRAE")
+ #lines(loess(mrae~c))
+ #plot(c,pw,pch=15,main="PW")
+ #lines(loess(pw~c))
+ 
+ 
+ 
+ }
> rm(list=ls(all=TRUE))
> 
> #setwd("~/Documents/GitHub/EBMAforecast/APSA_2012/Simulations")
> setwd("~/Github/EBMAforecast/APSA_2012/Simulations")
> 
> load("SecondRound")
> #objects()
> 
> #summary(output)
> 
> 
> ##### here is the function that plots seven points with a lowes line for each statistic
> plot.fn<-function(pos1=1, value1=5, pos2=2,value2=5,pos3=5,func="med", my.col="gray90", my.line=FALSE){
+ 
+ 
+ #pos1=5; value1=0; pos2=2; value2=5; pos3=2
+ 
+ # alpha<-c(10,5,3)
+ #  if (models>3){alpha<-c(alpha, rep(1, models-3))}
+ # a.mean <- alpha/sum(alpha) # ?
+   
+ 
+ slots<-NA
+ count<-0
+ for(i in 1:1911){
+  if(output[[i]]$theseParams[pos1]==value1 & output[[i]]$theseParams[pos2]==value2){
+  count<-count+1
+  slots[count]<-i} 
+  }
+ error.mat<-mae.mat<-rmse.mat<-mad.mat<-rmsle.mat <- mape.mat <- meape.mat <- mrae.mat <- pw.mat <- crps.mat <- matrix(NA,nrow=length(slots),ncol=100)
+ 
+ x.axis <- rep(NA, length(slots))
+ count <- 1
+ for(i in slots){
+   print(i)
+   x.axis[count] <- output[[i]]$theseParams[pos3]
+   count <- count+1
+ }
+ 
+ for(i in slots){
+  count<-which(slots==i)
+         errror.all.mat<-abs(output[[i]]$error)#%*%a.mean
+  #error.all.mat<-rowSums(abs(output[[i]]$error))
+  error.mat[count,]<-output[[i]]$error[,1]
+  rmse.mat[count,]<-output[[i]]$pred.rmse[,"EBMA"]
+  mae.mat[count,]<-output[[i]]$pred.mae[,"EBMA"]
+         mad.mat[count,]<-output[[i]]$pred.mad[,"EBMA"]
+         rmsle.mat[count,] <- output[[i]]$pred.rmsle[,"EBMA"]
+         mape.mat[count,] <- output[[i]]$pred.mape[,"EBMA"]
+         meape.mat[count,] <- output[[i]]$pred.meape[,"EBMA"]
+         mrae.mat[count,] <- output[[i]]$pred.mrae[,"EBMA"]
+         pw.mat[count,] <- output[[i]]$pred.pw[,"EBMA"]
+         crps.mat[count,] <- output[[i]]$model.crps
+ }
+ 
+ if(func=="med"){
+  error.all<-apply(abs(error.mat),1,FUN=median,na.rm=TRUE)
+  error<-(apply(error.mat,1,FUN=median, na.rm=TRUE))
+  rmse<-abs(apply(rmse.mat,1,FUN=median, na.rm=TRUE))
+  mae<-abs(apply(mae.mat,1,FUN=median, na.rm=TRUE))
+        mad<-abs(apply(mad.mat,1,FUN=median, na.rm=TRUE))
+         rmsle<-abs(apply(rmsle.mat,1,FUN=median, na.rm=TRUE))
+         mape<-abs(apply(mape.mat,1,FUN=median, na.rm=TRUE))
+         meape<-abs(apply(meape.mat,1,FUN=median, na.rm=TRUE))
+         mrae<-abs(apply(mrae.mat,1,FUN=median, na.rm=TRUE))
+         pw<-abs(apply(pw.mat,1,FUN=median, na.rm=TRUE))
+         crps<-abs(apply(crps.mat,1,FUN=median, na.rm=TRUE))
+       }
+ 
+ if(func=="mea"){
+  error.all<-apply(abs(error.mat),1,FUN=mean,na.rm=TRUE)
+  error<-(apply(error.mat,1,FUN=mean, na.rm=TRUE))
+  rmse<-abs(apply(rmse.mat,1,FUN=mean, na.rm=TRUE))
+  mae<-abs(apply(mae.mat,1,FUN=mean, na.rm=TRUE))
+        mad<-abs(apply(mad.mat,1,FUN=mean, na.rm=TRUE))
+         rmsle<-abs(apply(rmsle.mat,1,FUN=mean, na.rm=TRUE))
+         mape<-abs(apply(mape.mat,1,FUN=mean, na.rm=TRUE))
+         meape<-abs(apply(meape.mat,1,FUN=mean, na.rm=TRUE))
+         mrae<-abs(apply(mrae.mat,1,FUN=mean, na.rm=TRUE))
+         pw<-abs(apply(pw.mat,1,FUN=mean, na.rm=TRUE))
+         crps<-abs(apply(crps.mat,1,FUN=mean, na.rm=TRUE))
+       }
+ 
+ 
+ x.axis.new <- matrix(x.axis, nrow=length(slots), ncol=100, byrow=TRUE)
+ 
+ if(!my.line){
+ plot(x.axis.new, crps.mat, ylim=c(3, 12), ylab="CRPS", xlab="N_T", main=paste("K=", value2), col=my.col)
+ }
+ if(my.line){
+ points(x.axis.new, crps.mat, ylim=c(3, 12), ylab="CRPS", xlab="N_T", main=paste("K=", value2), col=my.col)
+ }
+ lines(loess(c(crps)~c(x.axis))) 
+ 
+ #par(mfrow=c(3,3))
+ #plot(c,error.all,pch=15,main="Weighted Weight Error (all)")
+ #lines(loess(error.all~c))
+ #plot(c,error,pch=15,main="Weight Error (largest weight model)")
+ #abline(h=0)
+ 
+ #plot(c,crps,pch=15,main="CRPS")
+ #lines(loess(crps~c))
+ #plot(c,mae,pch=15,main="MAE")
+ #lines(loess(mae~c))
+ #plot(c,rmse,pch=15,main="RMSE")
+ #lines(loess(rmse~c))
+ #plot(c,mape,pch=15,main="MAPE")
+ #lines(loess(mape~c))
+ #plot(c,meape,pch=15,main="MEAPE")
+ #lines(loess(meape~c))
+ #plot(c,mrae,pch=15,main="MRAE")
+ #lines(loess(mrae~c))
+ #plot(c,pw,pch=15,main="PW")
+ #lines(loess(pw~c))
+ 
+ 
+ 
+ }
> 
> 
> 
> par(mfrow=c(3,1))
> plot.fn(pos1=5, value1=0, pos2=1, value2=5, pos3=2, func="mea", my.col="gray90")
[1] 3
[1] 24
[1] 45
[1] 66
[1] 87
[1] 108
[1] 129
> plot.fn(pos1=5, value1=0, pos2=1, value2=35, pos3=2, func="mea", my.col="skyblue")
[1] 16
[1] 37
[1] 58
[1] 79
[1] 100
[1] 121
[1] 142
> plot.fn(pos1=5, value1=0, pos2=1, value2=100, pos3=2, func="mea", my.col="pink")
[1] 21
[1] 42
[1] 63
[1] 84
[1] 105
[1] 126
[1] 147
> #plot.fn(pos1=5, value1=0, pos2=2, value2=9, pos3=1)
> #plot.fn(pos1=5, value1=0, pos2=2, value2=15, pos3=1)
> 
> 
> #nTrain<-c(3:15,20,25,35,45,55,65,85,100)
> #nmod<-seq(3,15, by=2)
> #constant<-c(0,.01, 0.02,.025, 0.03, 0.04, .05, 0.075, 0.1, 0.15, 0.2, 0.3, .5)
> #iter<-100
> #outSample<-250
> 
> par(mfrow=c(3,1))
> plot.fn(pos1=5, value1=0, pos2=1, value2=5, pos3=2, func="mea", my.col="gray90")
[1] 3
[1] 24
[1] 45
[1] 66
[1] 87
[1] 108
[1] 129
> plot.fn(pos1=5, value1=0, pos2=1, value2=35, pos3=2, func="mea", my.col="skyblue", my.line=TRUE)
[1] 16
[1] 37
[1] 58
[1] 79
[1] 100
[1] 121
[1] 142
> plot.fn(pos1=5, value1=0, pos2=1, value2=100, pos3=2, func="mea", my.col="pink", my.line=TRUE)
[1] 21
[1] 42
[1] 63
[1] 84
[1] 105
[1] 126
[1] 147
> rm(list=ls(all=TRUE))
> 
> #setwd("~/Documents/GitHub/EBMAforecast/APSA_2012/Simulations")
> setwd("~/Github/EBMAforecast/APSA_2012/Simulations")
> 
> load("SecondRound")
> #objects()
> 
> #summary(output)
> 
> 
> ##### here is the function that plots seven points with a lowes line for each statistic
> plot.fn<-function(pos1=1, value1=5, pos2=2,value2=5,pos3=5,func="med", my.col="gray90", my.line=FALSE, my.adj=0, my.col2="black"){
+ 
+ 
+ #pos1=5; value1=0; pos2=2; value2=5; pos3=2
+ 
+ # alpha<-c(10,5,3)
+ #  if (models>3){alpha<-c(alpha, rep(1, models-3))}
+ # a.mean <- alpha/sum(alpha) # ?
+   
+ 
+ slots<-NA
+ count<-0
+ for(i in 1:1911){
+  if(output[[i]]$theseParams[pos1]==value1 & output[[i]]$theseParams[pos2]==value2){
+  count<-count+1
+  slots[count]<-i} 
+  }
+ error.mat<-mae.mat<-rmse.mat<-mad.mat<-rmsle.mat <- mape.mat <- meape.mat <- mrae.mat <- pw.mat <- crps.mat <- matrix(NA,nrow=length(slots),ncol=100)
+ 
+ x.axis <- rep(NA, length(slots))
+ count <- 1
+ for(i in slots){
+   print(i)
+   x.axis[count] <- output[[i]]$theseParams[pos3]
+   count <- count+1
+ }
+ 
+ for(i in slots){
+  count<-which(slots==i)
+         errror.all.mat<-abs(output[[i]]$error)#%*%a.mean
+  #error.all.mat<-rowSums(abs(output[[i]]$error))
+  error.mat[count,]<-output[[i]]$error[,1]
+  rmse.mat[count,]<-output[[i]]$pred.rmse[,"EBMA"]
+  mae.mat[count,]<-output[[i]]$pred.mae[,"EBMA"]
+         mad.mat[count,]<-output[[i]]$pred.mad[,"EBMA"]
+         rmsle.mat[count,] <- output[[i]]$pred.rmsle[,"EBMA"]
+         mape.mat[count,] <- output[[i]]$pred.mape[,"EBMA"]
+         meape.mat[count,] <- output[[i]]$pred.meape[,"EBMA"]
+         mrae.mat[count,] <- output[[i]]$pred.mrae[,"EBMA"]
+         pw.mat[count,] <- output[[i]]$pred.pw[,"EBMA"]
+         crps.mat[count,] <- output[[i]]$model.crps
+ }
+ 
+ if(func=="med"){
+  error.all<-apply(abs(error.mat),1,FUN=median,na.rm=TRUE)
+  error<-(apply(error.mat,1,FUN=median, na.rm=TRUE))
+  rmse<-abs(apply(rmse.mat,1,FUN=median, na.rm=TRUE))
+  mae<-abs(apply(mae.mat,1,FUN=median, na.rm=TRUE))
+        mad<-abs(apply(mad.mat,1,FUN=median, na.rm=TRUE))
+         rmsle<-abs(apply(rmsle.mat,1,FUN=median, na.rm=TRUE))
+         mape<-abs(apply(mape.mat,1,FUN=median, na.rm=TRUE))
+         meape<-abs(apply(meape.mat,1,FUN=median, na.rm=TRUE))
+         mrae<-abs(apply(mrae.mat,1,FUN=median, na.rm=TRUE))
+         pw<-abs(apply(pw.mat,1,FUN=median, na.rm=TRUE))
+         crps<-abs(apply(crps.mat,1,FUN=median, na.rm=TRUE))
+       }
+ 
+ if(func=="mea"){
+  error.all<-apply(abs(error.mat),1,FUN=mean,na.rm=TRUE)
+  error<-(apply(error.mat,1,FUN=mean, na.rm=TRUE))
+  rmse<-abs(apply(rmse.mat,1,FUN=mean, na.rm=TRUE))
+  mae<-abs(apply(mae.mat,1,FUN=mean, na.rm=TRUE))
+        mad<-abs(apply(mad.mat,1,FUN=mean, na.rm=TRUE))
+         rmsle<-abs(apply(rmsle.mat,1,FUN=mean, na.rm=TRUE))
+         mape<-abs(apply(mape.mat,1,FUN=mean, na.rm=TRUE))
+         meape<-abs(apply(meape.mat,1,FUN=mean, na.rm=TRUE))
+         mrae<-abs(apply(mrae.mat,1,FUN=mean, na.rm=TRUE))
+         pw<-abs(apply(pw.mat,1,FUN=mean, na.rm=TRUE))
+         crps<-abs(apply(crps.mat,1,FUN=mean, na.rm=TRUE))
+       }
+ 
+ x.axis <- x.axis+adj
+ x.axis.new <- matrix(x.axis, nrow=length(slots), ncol=100, byrow=TRUE)
+ 
+ if(!my.line){
+ plot(x.axis.new, crps.mat, ylim=c(3, 12), ylab="CRPS", xlab="N_T", main=paste("K=", value2), col=my.col)
+ }
+ if(my.line){
+ points(x.axis.new, crps.mat, ylim=c(3, 12), ylab="CRPS", xlab="N_T", main=paste("K=", value2), col=my.col)
+ }
+ lines(loess(c(crps)~c(x.axis)), col=my.col2) 
+ 
+ #par(mfrow=c(3,3))
+ #plot(c,error.all,pch=15,main="Weighted Weight Error (all)")
+ #lines(loess(error.all~c))
+ #plot(c,error,pch=15,main="Weight Error (largest weight model)")
+ #abline(h=0)
+ 
+ #plot(c,crps,pch=15,main="CRPS")
+ #lines(loess(crps~c))
+ #plot(c,mae,pch=15,main="MAE")
+ #lines(loess(mae~c))
+ #plot(c,rmse,pch=15,main="RMSE")
+ #lines(loess(rmse~c))
+ #plot(c,mape,pch=15,main="MAPE")
+ #lines(loess(mape~c))
+ #plot(c,meape,pch=15,main="MEAPE")
+ #lines(loess(meape~c))
+ #plot(c,mrae,pch=15,main="MRAE")
+ #lines(loess(mrae~c))
+ #plot(c,pw,pch=15,main="PW")
+ #lines(loess(pw~c))
+ 
+ 
+ 
+ }
> 
> 
> 
> par(mfrow=c(3,1))
> plot.fn(pos1=5, value1=0, pos2=1, value2=5, pos3=2, func="mea", my.col="gray90")
[1] 3
[1] 24
[1] 45
[1] 66
[1] 87
[1] 108
[1] 129
Error in plot.fn(pos1 = 5, value1 = 0, pos2 = 1, value2 = 5, pos3 = 2,  : 
  object 'adj' not found
> plot.fn(pos1=5, value1=0, pos2=1, value2=35, pos3=2, func="mea", my.col="skyblue", my.line=TRUE, my.col2="blue", my.adj=.25)
[1] 16
[1] 37
[1] 58
[1] 79
[1] 100
[1] 121
[1] 142
Error in plot.fn(pos1 = 5, value1 = 0, pos2 = 1, value2 = 35, pos3 = 2,  : 
  object 'adj' not found
> plot.fn(pos1=5, value1=0, pos2=1, value2=100, pos3=2, func="mea", my.col="pink", my.line=TRUE, my.col2="green", my.adj=.5)
[1] 21
[1] 42
[1] 63
[1] 84
[1] 105
[1] 126
[1] 147
Error in plot.fn(pos1 = 5, value1 = 0, pos2 = 1, value2 = 100, pos3 = 2,  : 
  object 'adj' not found
> #plot.fn(pos1=5, value1=0, pos2=2, value2=9, pos3=1)
> #plot.fn(pos1=5, value1=0, pos2=2, value2=15, pos3=1)
> 
> 
> #nTrain<-c(3:15,20,25,35,45,55,65,85,100)
> #nmod<-seq(3,15, by=2)
> #constant<-c(0,.01, 0.02,.025, 0.03, 0.04, .05, 0.075, 0.1, 0.15, 0.2, 0.3, .5)
> #iter<-100
> #outSample<-250
> 
> rm(list=ls(all=TRUE))
> 
> #setwd("~/Documents/GitHub/EBMAforecast/APSA_2012/Simulations")
> setwd("~/Github/EBMAforecast/APSA_2012/Simulations")
> 
> load("SecondRound")
> #objects()
> 
> #summary(output)
> 
> 
> ##### here is the function that plots seven points with a lowes line for each statistic
> plot.fn<-function(pos1=1, value1=5, pos2=2,value2=5,pos3=5,func="med", my.col="gray90", my.line=FALSE, my.adj=0, my.col2="black"){
+ 
+ 
+ #pos1=5; value1=0; pos2=2; value2=5; pos3=2
+ 
+ # alpha<-c(10,5,3)
+ #  if (models>3){alpha<-c(alpha, rep(1, models-3))}
+ # a.mean <- alpha/sum(alpha) # ?
+   
+ 
+ slots<-NA
+ count<-0
+ for(i in 1:1911){
+  if(output[[i]]$theseParams[pos1]==value1 & output[[i]]$theseParams[pos2]==value2){
+  count<-count+1
+  slots[count]<-i} 
+  }
+ error.mat<-mae.mat<-rmse.mat<-mad.mat<-rmsle.mat <- mape.mat <- meape.mat <- mrae.mat <- pw.mat <- crps.mat <- matrix(NA,nrow=length(slots),ncol=100)
+ 
+ x.axis <- rep(NA, length(slots))
+ count <- 1
+ for(i in slots){
+   print(i)
+   x.axis[count] <- output[[i]]$theseParams[pos3]
+   count <- count+1
+ }
+ 
+ for(i in slots){
+  count<-which(slots==i)
+         errror.all.mat<-abs(output[[i]]$error)#%*%a.mean
+  #error.all.mat<-rowSums(abs(output[[i]]$error))
+  error.mat[count,]<-output[[i]]$error[,1]
+  rmse.mat[count,]<-output[[i]]$pred.rmse[,"EBMA"]
+  mae.mat[count,]<-output[[i]]$pred.mae[,"EBMA"]
+         mad.mat[count,]<-output[[i]]$pred.mad[,"EBMA"]
+         rmsle.mat[count,] <- output[[i]]$pred.rmsle[,"EBMA"]
+         mape.mat[count,] <- output[[i]]$pred.mape[,"EBMA"]
+         meape.mat[count,] <- output[[i]]$pred.meape[,"EBMA"]
+         mrae.mat[count,] <- output[[i]]$pred.mrae[,"EBMA"]
+         pw.mat[count,] <- output[[i]]$pred.pw[,"EBMA"]
+         crps.mat[count,] <- output[[i]]$model.crps
+ }
+ 
+ if(func=="med"){
+  error.all<-apply(abs(error.mat),1,FUN=median,na.rm=TRUE)
+  error<-(apply(error.mat,1,FUN=median, na.rm=TRUE))
+  rmse<-abs(apply(rmse.mat,1,FUN=median, na.rm=TRUE))
+  mae<-abs(apply(mae.mat,1,FUN=median, na.rm=TRUE))
+        mad<-abs(apply(mad.mat,1,FUN=median, na.rm=TRUE))
+         rmsle<-abs(apply(rmsle.mat,1,FUN=median, na.rm=TRUE))
+         mape<-abs(apply(mape.mat,1,FUN=median, na.rm=TRUE))
+         meape<-abs(apply(meape.mat,1,FUN=median, na.rm=TRUE))
+         mrae<-abs(apply(mrae.mat,1,FUN=median, na.rm=TRUE))
+         pw<-abs(apply(pw.mat,1,FUN=median, na.rm=TRUE))
+         crps<-abs(apply(crps.mat,1,FUN=median, na.rm=TRUE))
+       }
+ 
+ if(func=="mea"){
+  error.all<-apply(abs(error.mat),1,FUN=mean,na.rm=TRUE)
+  error<-(apply(error.mat,1,FUN=mean, na.rm=TRUE))
+  rmse<-abs(apply(rmse.mat,1,FUN=mean, na.rm=TRUE))
+  mae<-abs(apply(mae.mat,1,FUN=mean, na.rm=TRUE))
+        mad<-abs(apply(mad.mat,1,FUN=mean, na.rm=TRUE))
+         rmsle<-abs(apply(rmsle.mat,1,FUN=mean, na.rm=TRUE))
+         mape<-abs(apply(mape.mat,1,FUN=mean, na.rm=TRUE))
+         meape<-abs(apply(meape.mat,1,FUN=mean, na.rm=TRUE))
+         mrae<-abs(apply(mrae.mat,1,FUN=mean, na.rm=TRUE))
+         pw<-abs(apply(pw.mat,1,FUN=mean, na.rm=TRUE))
+         crps<-abs(apply(crps.mat,1,FUN=mean, na.rm=TRUE))
+       }
+ 
+ x.axis <- x.axis+my.adj
+ x.axis.new <- matrix(x.axis, nrow=length(slots), ncol=100, byrow=TRUE)
+ 
+ if(!my.line){
+ plot(x.axis.new, crps.mat, ylim=c(3, 12), ylab="CRPS", xlab="K", main="CRPS by K and N_T", col=my.col, xlim=c(3, 17))
+ }
+ if(my.line){
+ points(x.axis.new, crps.mat, ylim=c(3, 12), ylab="CRPS", xlab="K", main=paste("N_=", value2), col=my.col)
+ }
+ lines(loess(c(crps)~c(x.axis)), col=my.col2) 
+ 
+ #par(mfrow=c(3,3))
+ #plot(c,error.all,pch=15,main="Weighted Weight Error (all)")
+ #lines(loess(error.all~c))
+ #plot(c,error,pch=15,main="Weight Error (largest weight model)")
+ #abline(h=0)
+ 
+ #plot(c,crps,pch=15,main="CRPS")
+ #lines(loess(crps~c))
+ #plot(c,mae,pch=15,main="MAE")
+ #lines(loess(mae~c))
+ #plot(c,rmse,pch=15,main="RMSE")
+ #lines(loess(rmse~c))
+ #plot(c,mape,pch=15,main="MAPE")
+ #lines(loess(mape~c))
+ #plot(c,meape,pch=15,main="MEAPE")
+ #lines(loess(meape~c))
+ #plot(c,mrae,pch=15,main="MRAE")
+ #lines(loess(mrae~c))
+ #plot(c,pw,pch=15,main="PW")
+ #lines(loess(pw~c))
+ 
+ 
+ 
+ }
> 
> 
> 
> par(mfrow=c(3,1))
> plot.fn(pos1=5, value1=0, pos2=1, value2=5, pos3=2, func="mea", my.col="gray90")
[1] 3
[1] 24
[1] 45
[1] 66
[1] 87
[1] 108
[1] 129
> plot.fn(pos1=5, value1=0, pos2=1, value2=35, pos3=2, func="mea", my.col="skyblue", my.line=TRUE, my.col2="blue", my.adj=.25)
[1] 16
[1] 37
[1] 58
[1] 79
[1] 100
[1] 121
[1] 142
> plot.fn(pos1=5, value1=0, pos2=1, value2=100, pos3=2, func="mea", my.col="pink", my.line=TRUE, my.col2="green", my.adj=.5)
[1] 21
[1] 42
[1] 63
[1] 84
[1] 105
[1] 126
[1] 147
> #plot.fn(pos1=5, value1=0, pos2=2, value2=9, pos3=1)
> #plot.fn(pos1=5, value1=0, pos2=2, value2=15, pos3=1)
> 
> 
> #nTrain<-c(3:15,20,25,35,45,55,65,85,100)
> #nmod<-seq(3,15, by=2)
> #constant<-c(0,.01, 0.02,.025, 0.03, 0.04, .05, 0.075, 0.1, 0.15, 0.2, 0.3, .5)
> #iter<-100
> #outSample<-250
> 
> plot.fn(pos1=5, value1=0, pos2=1, value2=100, pos3=2, func="mea", my.col="pink", my.line=TRUE, my.col2="red", my.adj=.5)
[1] 21
[1] 42
[1] 63
[1] 84
[1] 105
[1] 126
[1] 147
> par(mfrow=c(1,1), mar=c(3,2,2,1))
> plot.fn(pos1=5, value1=0, pos2=1, value2=5, pos3=2, func="mea", my.col="gray90")
[1] 3
[1] 24
[1] 45
[1] 66
[1] 87
[1] 108
[1] 129
> plot.fn(pos1=5, value1=0, pos2=1, value2=35, pos3=2, func="mea", my.col="skyblue", my.line=TRUE, my.col2="blue", my.adj=.25)
[1] 16
[1] 37
[1] 58
[1] 79
[1] 100
[1] 121
[1] 142
> plot.fn(pos1=5, value1=0, pos2=1, value2=100, pos3=2, func="mea", my.col="pink", my.line=TRUE, my.col2="red", my.adj=.5)
[1] 21
[1] 42
[1] 63
[1] 84
[1] 105
[1] 126
[1] 147
> par(mfrow=c(1,1), mar=c(3,2,2,1), mgp=c(0,0,0), tcl=.001)
> plot.fn(pos1=5, value1=0, pos2=1, value2=5, pos3=2, func="mea", my.col="gray90")
[1] 3
[1] 24
[1] 45
[1] 66
[1] 87
[1] 108
[1] 129
> plot.fn(pos1=5, value1=0, pos2=1, value2=35, pos3=2, func="mea", my.col="skyblue", my.line=TRUE, my.col2="blue", my.adj=.25)
[1] 16
[1] 37
[1] 58
[1] 79
[1] 100
[1] 121
[1] 142
> plot.fn(pos1=5, value1=0, pos2=1, value2=100, pos3=2, func="mea", my.col="pink", my.line=TRUE, my.col2="red", my.adj=.5)
[1] 21
[1] 42
[1] 63
[1] 84
[1] 105
[1] 126
[1] 147
> par(mfrow=c(1,1), mar=c(3,2,2,1), mgp=c(1,0,0), tcl=.001)
> plot.fn(pos1=5, value1=0, pos2=1, value2=5, pos3=2, func="mea", my.col="gray90")
[1] 3
[1] 24
[1] 45
[1] 66
[1] 87
[1] 108
[1] 129
> plot.fn(pos1=5, value1=0, pos2=1, value2=35, pos3=2, func="mea", my.col="skyblue", my.line=TRUE, my.col2="blue", my.adj=.25)
[1] 16
[1] 37
[1] 58
[1] 79
[1] 100
[1] 121
[1] 142
> plot.fn(pos1=5, value1=0, pos2=1, value2=100, pos3=2, func="mea", my.col="pink", my.line=TRUE, my.col2="red", my.adj=.5)
[1] 21
[1] 42
[1] 63
[1] 84
[1] 105
[1] 126
[1] 147
> legend(17, 10, c("N_T=5", "N_T=35","N_T=100"), col=c("black", "red", "blue"), lty=c(1,1,1)) 
> legend(16, 10, c("N_T=5", "N_T=35","N_T=100"), col=c("black", "red", "blue"), lty=c(1,1,1)) 
> rm(list=ls(all=TRUE))
> 
> #setwd("~/Documents/GitHub/EBMAforecast/APSA_2012/Simulations")
> setwd("~/Github/EBMAforecast/APSA_2012/Simulations")
> 
> load("SecondRound")
> #objects()
> 
> #summary(output)
> 
> 
> ##### here is the function that plots seven points with a lowes line for each statistic
> plot.fn<-function(pos1=1, value1=5, pos2=2,value2=5,pos3=5,func="med", my.col="gray90", my.line=FALSE, my.adj=0, my.col2="black"){
+ 
+ 
+ #pos1=5; value1=0; pos2=2; value2=5; pos3=2
+ 
+ # alpha<-c(10,5,3)
+ #  if (models>3){alpha<-c(alpha, rep(1, models-3))}
+ # a.mean <- alpha/sum(alpha) # ?
+   
+ 
+ slots<-NA
+ count<-0
+ for(i in 1:1911){
+  if(output[[i]]$theseParams[pos1]==value1 & output[[i]]$theseParams[pos2]==value2){
+  count<-count+1
+  slots[count]<-i} 
+  }
+ error.mat<-mae.mat<-rmse.mat<-mad.mat<-rmsle.mat <- mape.mat <- meape.mat <- mrae.mat <- pw.mat <- crps.mat <- matrix(NA,nrow=length(slots),ncol=100)
+ 
+ x.axis <- rep(NA, length(slots))
+ count <- 1
+ for(i in slots){
+   print(i)
+   x.axis[count] <- output[[i]]$theseParams[pos3]
+   count <- count+1
+ }
+ 
+ for(i in slots){
+  count<-which(slots==i)
+         errror.all.mat<-abs(output[[i]]$error)#%*%a.mean
+  #error.all.mat<-rowSums(abs(output[[i]]$error))
+  error.mat[count,]<-output[[i]]$error[,1]
+  rmse.mat[count,]<-output[[i]]$pred.rmse[,"EBMA"]
+  mae.mat[count,]<-output[[i]]$pred.mae[,"EBMA"]
+         mad.mat[count,]<-output[[i]]$pred.mad[,"EBMA"]
+         rmsle.mat[count,] <- output[[i]]$pred.rmsle[,"EBMA"]
+         mape.mat[count,] <- output[[i]]$pred.mape[,"EBMA"]
+         meape.mat[count,] <- output[[i]]$pred.meape[,"EBMA"]
+         mrae.mat[count,] <- output[[i]]$pred.mrae[,"EBMA"]
+         pw.mat[count,] <- output[[i]]$pred.pw[,"EBMA"]
+         crps.mat[count,] <- output[[i]]$model.crps
+ }
+ 
+ if(func=="med"){
+  error.all<-apply(abs(error.mat),1,FUN=median,na.rm=TRUE)
+  error<-(apply(error.mat,1,FUN=median, na.rm=TRUE))
+  rmse<-abs(apply(rmse.mat,1,FUN=median, na.rm=TRUE))
+  mae<-abs(apply(mae.mat,1,FUN=median, na.rm=TRUE))
+        mad<-abs(apply(mad.mat,1,FUN=median, na.rm=TRUE))
+         rmsle<-abs(apply(rmsle.mat,1,FUN=median, na.rm=TRUE))
+         mape<-abs(apply(mape.mat,1,FUN=median, na.rm=TRUE))
+         meape<-abs(apply(meape.mat,1,FUN=median, na.rm=TRUE))
+         mrae<-abs(apply(mrae.mat,1,FUN=median, na.rm=TRUE))
+         pw<-abs(apply(pw.mat,1,FUN=median, na.rm=TRUE))
+         crps<-abs(apply(crps.mat,1,FUN=median, na.rm=TRUE))
+       }
+ 
+ if(func=="mea"){
+  error.all<-apply(abs(error.mat),1,FUN=mean,na.rm=TRUE)
+  error<-(apply(error.mat,1,FUN=mean, na.rm=TRUE))
+  rmse<-abs(apply(rmse.mat,1,FUN=mean, na.rm=TRUE))
+  mae<-abs(apply(mae.mat,1,FUN=mean, na.rm=TRUE))
+        mad<-abs(apply(mad.mat,1,FUN=mean, na.rm=TRUE))
+         rmsle<-abs(apply(rmsle.mat,1,FUN=mean, na.rm=TRUE))
+         mape<-abs(apply(mape.mat,1,FUN=mean, na.rm=TRUE))
+         meape<-abs(apply(meape.mat,1,FUN=mean, na.rm=TRUE))
+         mrae<-abs(apply(mrae.mat,1,FUN=mean, na.rm=TRUE))
+         pw<-abs(apply(pw.mat,1,FUN=mean, na.rm=TRUE))
+         crps<-abs(apply(crps.mat,1,FUN=mean, na.rm=TRUE))
+       }
+ 
+ x.axis <- x.axis+my.adj
+ x.axis.new <- matrix(x.axis, nrow=length(slots), ncol=100, byrow=TRUE)
+ 
+ if(!my.line){
+ plot(x.axis.new, crps.mat, ylim=c(3, 12), ylab="CRPS", xlab="K", main="CRPS by K and N_T", col=my.col, xlim=c(3, 20))
+ }
+ if(my.line){
+ points(x.axis.new, crps.mat, ylim=c(3, 12), ylab="CRPS", xlab="K", main=paste("N_=", value2), col=my.col)
+ }
+ lines(loess(c(crps)~c(x.axis-my.adj)), col=my.col2) 
+ 
+ #par(mfrow=c(3,3))
+ #plot(c,error.all,pch=15,main="Weighted Weight Error (all)")
+ #lines(loess(error.all~c))
+ #plot(c,error,pch=15,main="Weight Error (largest weight model)")
+ #abline(h=0)
+ 
+ #plot(c,crps,pch=15,main="CRPS")
+ #lines(loess(crps~c))
+ #plot(c,mae,pch=15,main="MAE")
+ #lines(loess(mae~c))
+ #plot(c,rmse,pch=15,main="RMSE")
+ #lines(loess(rmse~c))
+ #plot(c,mape,pch=15,main="MAPE")
+ #lines(loess(mape~c))
+ #plot(c,meape,pch=15,main="MEAPE")
+ #lines(loess(meape~c))
+ #plot(c,mrae,pch=15,main="MRAE")
+ #lines(loess(mrae~c))
+ #plot(c,pw,pch=15,main="PW")
+ #lines(loess(pw~c))
+ 
+ 
+ 
+ }
> 
> 
> 
> par(mfrow=c(1,1), mar=c(3,2,2,1), mgp=c(1,0,0), tcl=.001)
> plot.fn(pos1=5, value1=0, pos2=1, value2=5, pos3=2, func="mea", my.col="gray90")
[1] 3
[1] 24
[1] 45
[1] 66
[1] 87
[1] 108
[1] 129
> plot.fn(pos1=5, value1=0, pos2=1, value2=35, pos3=2, func="mea", my.col="skyblue", my.line=TRUE, my.col2="blue", my.adj=.25)
[1] 16
[1] 37
[1] 58
[1] 79
[1] 100
[1] 121
[1] 142
> plot.fn(pos1=5, value1=0, pos2=1, value2=100, pos3=2, func="mea", my.col="pink", my.line=TRUE, my.col2="red", my.adj=.5)
[1] 21
[1] 42
[1] 63
[1] 84
[1] 105
[1] 126
[1] 147
> legend(16, 10, c("N_T=5", "N_T=35","N_T=100"), col=c("black", "red", "blue"), lty=c(1,1,1)) 
> #plot.fn(pos1=5, value1=0, pos2=2, value2=9, pos3=1)
> #plot.fn(pos1=5, value1=0, pos2=2, value2=15, pos3=1)
> 
> 
> #nTrain<-c(3:15,20,25,35,45,55,65,85,100)
> #nmod<-seq(3,15, by=2)
> #constant<-c(0,.01, 0.02,.025, 0.03, 0.04, .05, 0.075, 0.1, 0.15, 0.2, 0.3, .5)
> #iter<-100
> #outSample<-250
> 
> legend(16, 10, c("N_T=5", "N_T=35","N_T=100"), col=c("black", "red", "blue"), lty=c(1,1,1), cex=.8) 
> par(mfrow=c(1,1), mar=c(3,2,2,1), mgp=c(1,0,0), tcl=.001)
> plot.fn(pos1=5, value1=0, pos2=1, value2=5, pos3=2, func="mea", my.col="gray90")
[1] 3
[1] 24
[1] 45
[1] 66
[1] 87
[1] 108
[1] 129
> plot.fn(pos1=5, value1=0, pos2=1, value2=35, pos3=2, func="mea", my.col="skyblue", my.line=TRUE, my.col2="blue", my.adj=.25)
[1] 16
[1] 37
[1] 58
[1] 79
[1] 100
[1] 121
[1] 142
> plot.fn(pos1=5, value1=0, pos2=1, value2=100, pos3=2, func="mea", my.col="pink", my.line=TRUE, my.col2="red", my.adj=.5)
[1] 21
[1] 42
[1] 63
[1] 84
[1] 105
[1] 126
[1] 147
> legend(16, 10, c("N_T=5", "N_T=35","N_T=100"), col=c("black", "red", "blue"), lty=c(1,1,1), cex=.7) 
> plot.fn(pos1=5, value1=0, pos2=1, value2=5, pos3=2, func="mea", my.col="gray90")
[1] 3
[1] 24
[1] 45
[1] 66
[1] 87
[1] 108
[1] 129
> plot.fn(pos1=5, value1=0, pos2=1, value2=20, pos3=2, func="mea", my.col="skyblue", my.line=TRUE, my.col2="blue", my.adj=.25)
[1] 14
[1] 35
[1] 56
[1] 77
[1] 98
[1] 119
[1] 140
> plot.fn(pos1=5, value1=0, pos2=1, value2=100, pos3=2, func="mea", my.col="pink", my.line=TRUE, my.col2="red", my.adj=.5)
[1] 21
[1] 42
[1] 63
[1] 84
[1] 105
[1] 126
[1] 147
> plot.fn(pos1=5, value1=0, pos2=1, value2=11, pos3=2, func="mea", my.col="skyblue", my.line=TRUE, my.col2="blue", my.adj=.25)
[1] 9
[1] 30
[1] 51
[1] 72
[1] 93
[1] 114
[1] 135
> plot.fn(pos1=5, value1=0, pos2=1, value2=100, pos3=2, func="mea", my.col="pink", my.line=TRUE, my.col2="red", my.adj=.5)
[1] 21
[1] 42
[1] 63
[1] 84
[1] 105
[1] 126
[1] 147
> par(mfrow=c(1,1), mar=c(3,2,2,1), mgp=c(1,0,0), tcl=.001)
> plot.fn(pos1=5, value1=0, pos2=1, value2=5, pos3=2, func="mea", my.col="gray90")
[1] 3
[1] 24
[1] 45
[1] 66
[1] 87
[1] 108
[1] 129
> plot.fn(pos1=5, value1=0, pos2=1, value2=11, pos3=2, func="mea", my.col="skyblue", my.line=TRUE, my.col2="blue", my.adj=.25)
[1] 9
[1] 30
[1] 51
[1] 72
[1] 93
[1] 114
[1] 135
> plot.fn(pos1=5, value1=0, pos2=1, value2=100, pos3=2, func="mea", my.col="pink", my.line=TRUE, my.col2="red", my.adj=.5)
[1] 21
[1] 42
[1] 63
[1] 84
[1] 105
[1] 126
[1] 147
> legend(16, 10, c("N_T=5", "N_T=11","N_T=100"), col=c("black", "red", "blue"), lty=c(1,1,1), cex=.7) 
> par(mfrow=c(1,1), mar=c(3,2,2,1), mgp=c(1,0,0), tcl=.001)
> plot.fn(pos1=5, value1=0, pos2=1, value2=5, pos3=2, func="med", my.col="gray90")
[1] 3
[1] 24
[1] 45
[1] 66
[1] 87
[1] 108
[1] 129
> plot.fn(pos1=5, value1=0, pos2=1, value2=11, pos3=2, func="med", my.col="skyblue", my.line=TRUE, my.col2="blue", my.adj=.25)
[1] 9
[1] 30
[1] 51
[1] 72
[1] 93
[1] 114
[1] 135
> plot.fn(pos1=5, value1=0, pos2=1, value2=100, pos3=2, func="med", my.col="pink", my.line=TRUE, my.col2="red", my.adj=.5)
[1] 21
[1] 42
[1] 63
[1] 84
[1] 105
[1] 126
[1] 147
> rm(list=ls(all=TRUE))
> 
> #setwd("~/Documents/GitHub/EBMAforecast/APSA_2012/Simulations")
> setwd("~/Github/EBMAforecast/APSA_2012/Simulations")
> 
> load("SecondRound")
> #objects()
> 
> #summary(output)
> 
> 
> ##### here is the function that plots seven points with a lowes line for each statistic
> plot.fn<-function(pos1=1, value1=5, pos2=2,value2=5,pos3=5,func="med", my.col="gray90", my.line=FALSE, my.adj=0, my.col2="black"){
+ 
+ 
+ #pos1=5; value1=0; pos2=2; value2=5; pos3=2
+ 
+ # alpha<-c(10,5,3)
+ #  if (models>3){alpha<-c(alpha, rep(1, models-3))}
+ # a.mean <- alpha/sum(alpha) # ?
+   
+ 
+ slots<-NA
+ count<-0
+ for(i in 1:1911){
+  if(output[[i]]$theseParams[pos1]==value1 & output[[i]]$theseParams[pos2]==value2){
+  count<-count+1
+  slots[count]<-i} 
+  }
+ error.mat<-mae.mat<-rmse.mat<-mad.mat<-rmsle.mat <- mape.mat <- meape.mat <- mrae.mat <- pw.mat <- crps.mat <- matrix(NA,nrow=length(slots),ncol=100)
+ 
+ x.axis <- rep(NA, length(slots))
+ count <- 1
+ for(i in slots){
+   print(i)
+   x.axis[count] <- output[[i]]$theseParams[pos3]
+   count <- count+1
+ }
+ 
+ for(i in slots){
+  count<-which(slots==i)
+         errror.all.mat<-abs(output[[i]]$error)#%*%a.mean
+  #error.all.mat<-rowSums(abs(output[[i]]$error))
+  error.mat[count,]<-output[[i]]$error[,1]
+  rmse.mat[count,]<-output[[i]]$pred.rmse[,"EBMA"]
+  mae.mat[count,]<-output[[i]]$pred.mae[,"EBMA"]
+         mad.mat[count,]<-output[[i]]$pred.mad[,"EBMA"]
+         rmsle.mat[count,] <- output[[i]]$pred.rmsle[,"EBMA"]
+         mape.mat[count,] <- output[[i]]$pred.mape[,"EBMA"]
+         meape.mat[count,] <- output[[i]]$pred.meape[,"EBMA"]
+         mrae.mat[count,] <- output[[i]]$pred.mrae[,"EBMA"]
+         pw.mat[count,] <- output[[i]]$pred.pw[,"EBMA"]
+         crps.mat[count,] <- output[[i]]$model.crps
+ }
+ 
+ if(func=="med"){
+  error.all<-apply(abs(error.mat),1,FUN=median,na.rm=TRUE)
+  error<-(apply(error.mat,1,FUN=median, na.rm=TRUE))
+  rmse<-abs(apply(rmse.mat,1,FUN=median, na.rm=TRUE))
+  mae<-abs(apply(mae.mat,1,FUN=median, na.rm=TRUE))
+        mad<-abs(apply(mad.mat,1,FUN=median, na.rm=TRUE))
+         rmsle<-abs(apply(rmsle.mat,1,FUN=median, na.rm=TRUE))
+         mape<-abs(apply(mape.mat,1,FUN=median, na.rm=TRUE))
+         meape<-abs(apply(meape.mat,1,FUN=median, na.rm=TRUE))
+         mrae<-abs(apply(mrae.mat,1,FUN=median, na.rm=TRUE))
+         pw<-abs(apply(pw.mat,1,FUN=median, na.rm=TRUE))
+         crps<-abs(apply(crps.mat,1,FUN=median, na.rm=TRUE))
+       }
+ 
+ if(func=="mea"){
+  error.all<-apply(abs(error.mat),1,FUN=mean,na.rm=TRUE)
+  error<-(apply(error.mat,1,FUN=mean, na.rm=TRUE))
+  rmse<-abs(apply(rmse.mat,1,FUN=mean, na.rm=TRUE))
+  mae<-abs(apply(mae.mat,1,FUN=mean, na.rm=TRUE))
+        mad<-abs(apply(mad.mat,1,FUN=mean, na.rm=TRUE))
+         rmsle<-abs(apply(rmsle.mat,1,FUN=mean, na.rm=TRUE))
+         mape<-abs(apply(mape.mat,1,FUN=mean, na.rm=TRUE))
+         meape<-abs(apply(meape.mat,1,FUN=mean, na.rm=TRUE))
+         mrae<-abs(apply(mrae.mat,1,FUN=mean, na.rm=TRUE))
+         pw<-abs(apply(pw.mat,1,FUN=mean, na.rm=TRUE))
+         crps<-abs(apply(crps.mat,1,FUN=mean, na.rm=TRUE))
+       }
+ 
+ x.axis <- x.axis+my.adj
+ x.axis.new <- matrix(x.axis, nrow=length(slots), ncol=100, byrow=FALSE)
+ 
+ if(!my.line){
+ plot(x.axis.new, crps.mat, ylim=c(3, 12), ylab="CRPS", xlab="K", main="CRPS by K and N_T", col=my.col, xlim=c(3, 20))
+ }
+ if(my.line){
+ points(x.axis.new, crps.mat, ylim=c(3, 12), ylab="CRPS", xlab="K", main=paste("N_=", value2), col=my.col)
+ }
+ lines(loess(c(crps)~c(x.axis-my.adj)), col=my.col2) 
+ 
+ #par(mfrow=c(3,3))
+ #plot(c,error.all,pch=15,main="Weighted Weight Error (all)")
+ #lines(loess(error.all~c))
+ #plot(c,error,pch=15,main="Weight Error (largest weight model)")
+ #abline(h=0)
+ 
+ #plot(c,crps,pch=15,main="CRPS")
+ #lines(loess(crps~c))
+ #plot(c,mae,pch=15,main="MAE")
+ #lines(loess(mae~c))
+ #plot(c,rmse,pch=15,main="RMSE")
+ #lines(loess(rmse~c))
+ #plot(c,mape,pch=15,main="MAPE")
+ #lines(loess(mape~c))
+ #plot(c,meape,pch=15,main="MEAPE")
+ #lines(loess(meape~c))
+ #plot(c,mrae,pch=15,main="MRAE")
+ #lines(loess(mrae~c))
+ #plot(c,pw,pch=15,main="PW")
+ #lines(loess(pw~c))
+ 
+ 
+ 
+ }
> 
> 
> 
> par(mfrow=c(1,1), mar=c(3,2,2,1), mgp=c(1,0,0), tcl=.001)
> plot.fn(pos1=5, value1=0, pos2=1, value2=5, pos3=2, func="med", my.col="gray90")
[1] 3
[1] 24
[1] 45
[1] 66
[1] 87
[1] 108
[1] 129
> plot.fn(pos1=5, value1=0, pos2=1, value2=11, pos3=2, func="med", my.col="skyblue", my.line=TRUE, my.col2="blue", my.adj=.25)
[1] 9
[1] 30
[1] 51
[1] 72
[1] 93
[1] 114
[1] 135
> plot.fn(pos1=5, value1=0, pos2=1, value2=100, pos3=2, func="med", my.col="pink", my.line=TRUE, my.col2="red", my.adj=.5)
[1] 21
[1] 42
[1] 63
[1] 84
[1] 105
[1] 126
[1] 147
> legend(16, 10, c("N_T=5", "N_T=11","N_T=100"), col=c("black", "red", "blue"), lty=c(1,1,1), cex=.7) 
> #plot.fn(pos1=5, value1=0, pos2=2, value2=9, pos3=1)
> #plot.fn(pos1=5, value1=0, pos2=2, value2=15, pos3=1)
> 
> 
> #nTrain<-c(3:15,20,25,35,45,55,65,85,100)
> #nmod<-seq(3,15, by=2)
> #constant<-c(0,.01, 0.02,.025, 0.03, 0.04, .05, 0.075, 0.1, 0.15, 0.2, 0.3, .5)
> #iter<-100
> #outSample<-250
> 
> rm(list=ls(all=TRUE))
> 
> #setwd("~/Documents/GitHub/EBMAforecast/APSA_2012/Simulations")
> setwd("~/Github/EBMAforecast/APSA_2012/Simulations")
> 
> load("SecondRound")
> #objects()
> 
> #summary(output)
> 
> 
> ##### here is the function that plots seven points with a lowes line for each statistic
> plot.fn<-function(pos1=1, value1=5, pos2=2,value2=5,pos3=5,func="med", my.col="gray90", my.line=FALSE, my.adj=0, my.col2="black"){
+ 
+ 
+ #pos1=5; value1=0; pos2=2; value2=5; pos3=2
+ 
+ # alpha<-c(10,5,3)
+ #  if (models>3){alpha<-c(alpha, rep(1, models-3))}
+ # a.mean <- alpha/sum(alpha) # ?
+   
+ 
+ slots<-NA
+ count<-0
+ for(i in 1:1911){
+  if(output[[i]]$theseParams[pos1]==value1 & output[[i]]$theseParams[pos2]==value2){
+  count<-count+1
+  slots[count]<-i} 
+  }
+ error.mat<-mae.mat<-rmse.mat<-mad.mat<-rmsle.mat <- mape.mat <- meape.mat <- mrae.mat <- pw.mat <- crps.mat <- matrix(NA,nrow=length(slots),ncol=100)
+ 
+ x.axis <- rep(NA, length(slots))
+ count <- 1
+ for(i in slots){
+   print(i)
+   x.axis[count] <- output[[i]]$theseParams[pos3]
+   count <- count+1
+ }
+ 
+ for(i in slots){
+  count<-which(slots==i)
+         errror.all.mat<-abs(output[[i]]$error)#%*%a.mean
+  #error.all.mat<-rowSums(abs(output[[i]]$error))
+  error.mat[count,]<-output[[i]]$error[,1]
+  rmse.mat[count,]<-output[[i]]$pred.rmse[,"EBMA"]
+  mae.mat[count,]<-output[[i]]$pred.mae[,"EBMA"]
+         mad.mat[count,]<-output[[i]]$pred.mad[,"EBMA"]
+         rmsle.mat[count,] <- output[[i]]$pred.rmsle[,"EBMA"]
+         mape.mat[count,] <- output[[i]]$pred.mape[,"EBMA"]
+         meape.mat[count,] <- output[[i]]$pred.meape[,"EBMA"]
+         mrae.mat[count,] <- output[[i]]$pred.mrae[,"EBMA"]
+         pw.mat[count,] <- output[[i]]$pred.pw[,"EBMA"]
+         crps.mat[count,] <- output[[i]]$model.crps
+ }
+ 
+ if(func=="med"){
+  error.all<-apply(abs(error.mat),1,FUN=median,na.rm=TRUE)
+  error<-(apply(error.mat,1,FUN=median, na.rm=TRUE))
+  rmse<-abs(apply(rmse.mat,1,FUN=median, na.rm=TRUE))
+  mae<-abs(apply(mae.mat,1,FUN=median, na.rm=TRUE))
+        mad<-abs(apply(mad.mat,1,FUN=median, na.rm=TRUE))
+         rmsle<-abs(apply(rmsle.mat,1,FUN=median, na.rm=TRUE))
+         mape<-abs(apply(mape.mat,1,FUN=median, na.rm=TRUE))
+         meape<-abs(apply(meape.mat,1,FUN=median, na.rm=TRUE))
+         mrae<-abs(apply(mrae.mat,1,FUN=median, na.rm=TRUE))
+         pw<-abs(apply(pw.mat,1,FUN=median, na.rm=TRUE))
+         crps<-abs(apply(crps.mat,1,FUN=median, na.rm=TRUE))
+       }
+ 
+ if(func=="mea"){
+  error.all<-apply(abs(error.mat),1,FUN=mean,na.rm=TRUE)
+  error<-(apply(error.mat,1,FUN=mean, na.rm=TRUE))
+  rmse<-abs(apply(rmse.mat,1,FUN=mean, na.rm=TRUE))
+  mae<-abs(apply(mae.mat,1,FUN=mean, na.rm=TRUE))
+        mad<-abs(apply(mad.mat,1,FUN=mean, na.rm=TRUE))
+         rmsle<-abs(apply(rmsle.mat,1,FUN=mean, na.rm=TRUE))
+         mape<-abs(apply(mape.mat,1,FUN=mean, na.rm=TRUE))
+         meape<-abs(apply(meape.mat,1,FUN=mean, na.rm=TRUE))
+         mrae<-abs(apply(mrae.mat,1,FUN=mean, na.rm=TRUE))
+         pw<-abs(apply(pw.mat,1,FUN=mean, na.rm=TRUE))
+         crps<-abs(apply(crps.mat,1,FUN=mean, na.rm=TRUE))
+       }
+ 
+ x.axis <- x.axis+my.adj
+ x.axis.new <- matrix(x.axis, nrow=length(slots), ncol=100, byrow=FALSE)
+ 
+ if(!my.line){
+ plot(x.axis.new, crps.mat, ylim=c(3, 12), ylab="CRPS", xlab="K", main="CRPS by K and N_T", col=my.col, xlim=c(3, 20))
+ }
+ if(my.line){
+ points(x.axis.new, crps.mat, ylim=c(3, 12), ylab="CRPS", xlab="K", main=paste("N_=", value2), col=my.col)
+ }
+ lines(loess(c(crps.mat)~c(x.axis.new)), col=my.col2) 
+ 
+ #par(mfrow=c(3,3))
+ #plot(c,error.all,pch=15,main="Weighted Weight Error (all)")
+ #lines(loess(error.all~c))
+ #plot(c,error,pch=15,main="Weight Error (largest weight model)")
+ #abline(h=0)
+ 
+ #plot(c,crps,pch=15,main="CRPS")
+ #lines(loess(crps~c))
+ #plot(c,mae,pch=15,main="MAE")
+ #lines(loess(mae~c))
+ #plot(c,rmse,pch=15,main="RMSE")
+ #lines(loess(rmse~c))
+ #plot(c,mape,pch=15,main="MAPE")
+ #lines(loess(mape~c))
+ #plot(c,meape,pch=15,main="MEAPE")
+ #lines(loess(meape~c))
+ #plot(c,mrae,pch=15,main="MRAE")
+ #lines(loess(mrae~c))
+ #plot(c,pw,pch=15,main="PW")
+ #lines(loess(pw~c))
+ 
+ 
+ 
+ }
> 
> 
> 
> par(mfrow=c(1,1), mar=c(3,2,2,1), mgp=c(1,0,0), tcl=.001)
> plot.fn(pos1=5, value1=0, pos2=1, value2=5, pos3=2, func="med", my.col="gray90")
[1] 3
[1] 24
[1] 45
[1] 66
[1] 87
[1] 108
[1] 129
> plot.fn(pos1=5, value1=0, pos2=1, value2=11, pos3=2, func="med", my.col="skyblue", my.line=TRUE, my.col2="blue", my.adj=.25)
[1] 9
[1] 30
[1] 51
[1] 72
[1] 93
[1] 114
[1] 135
> plot.fn(pos1=5, value1=0, pos2=1, value2=100, pos3=2, func="med", my.col="pink", my.line=TRUE, my.col2="red", my.adj=.5)
[1] 21
[1] 42
[1] 63
[1] 84
[1] 105
[1] 126
[1] 147
> legend(16, 10, c("N_T=5", "N_T=11","N_T=100"), col=c("black", "red", "blue"), lty=c(1,1,1), cex=.7) 
> #plot.fn(pos1=5, value1=0, pos2=2, value2=9, pos3=1)
> #plot.fn(pos1=5, value1=0, pos2=2, value2=15, pos3=1)
> 
> 
> #nTrain<-c(3:15,20,25,35,45,55,65,85,100)
> #nmod<-seq(3,15, by=2)
> #constant<-c(0,.01, 0.02,.025, 0.03, 0.04, .05, 0.075, 0.1, 0.15, 0.2, 0.3, .5)
> #iter<-100
> #outSample<-250
> 
> rm(list=ls(all=TRUE))
> 
> #setwd("~/Documents/GitHub/EBMAforecast/APSA_2012/Simulations")
> setwd("~/Github/EBMAforecast/APSA_2012/Simulations")
> 
> load("SecondRound")
> #objects()
> 
> #summary(output)
> 
> 
> ##### here is the function that plots seven points with a lowes line for each statistic
> plot.fn<-function(pos1=1, value1=5, pos2=2,value2=5,pos3=5,func="med", my.col="gray90", my.line=FALSE, my.adj=0, my.col2="black"){
+ 
+ 
+ #pos1=5; value1=0; pos2=2; value2=5; pos3=2
+ 
+ # alpha<-c(10,5,3)
+ #  if (models>3){alpha<-c(alpha, rep(1, models-3))}
+ # a.mean <- alpha/sum(alpha) # ?
+   
+ 
+ slots<-NA
+ count<-0
+ for(i in 1:1911){
+  if(output[[i]]$theseParams[pos1]==value1 & output[[i]]$theseParams[pos2]==value2){
+  count<-count+1
+  slots[count]<-i} 
+  }
+ error.mat<-mae.mat<-rmse.mat<-mad.mat<-rmsle.mat <- mape.mat <- meape.mat <- mrae.mat <- pw.mat <- crps.mat <- matrix(NA,nrow=length(slots),ncol=100)
+ 
+ x.axis <- rep(NA, length(slots))
+ count <- 1
+ for(i in slots){
+   print(i)
+   x.axis[count] <- output[[i]]$theseParams[pos3]
+   count <- count+1
+ }
+ 
+ for(i in slots){
+  count<-which(slots==i)
+         errror.all.mat<-abs(output[[i]]$error)#%*%a.mean
+  #error.all.mat<-rowSums(abs(output[[i]]$error))
+  error.mat[count,]<-output[[i]]$error[,1]
+  rmse.mat[count,]<-output[[i]]$pred.rmse[,"EBMA"]
+  mae.mat[count,]<-output[[i]]$pred.mae[,"EBMA"]
+         mad.mat[count,]<-output[[i]]$pred.mad[,"EBMA"]
+         rmsle.mat[count,] <- output[[i]]$pred.rmsle[,"EBMA"]
+         mape.mat[count,] <- output[[i]]$pred.mape[,"EBMA"]
+         meape.mat[count,] <- output[[i]]$pred.meape[,"EBMA"]
+         mrae.mat[count,] <- output[[i]]$pred.mrae[,"EBMA"]
+         pw.mat[count,] <- output[[i]]$pred.pw[,"EBMA"]
+         crps.mat[count,] <- output[[i]]$model.crps
+ }
+ 
+ if(func=="med"){
+  error.all<-apply(abs(error.mat),1,FUN=median,na.rm=TRUE)
+  error<-(apply(error.mat,1,FUN=median, na.rm=TRUE))
+  rmse<-abs(apply(rmse.mat,1,FUN=median, na.rm=TRUE))
+  mae<-abs(apply(mae.mat,1,FUN=median, na.rm=TRUE))
+        mad<-abs(apply(mad.mat,1,FUN=median, na.rm=TRUE))
+         rmsle<-abs(apply(rmsle.mat,1,FUN=median, na.rm=TRUE))
+         mape<-abs(apply(mape.mat,1,FUN=median, na.rm=TRUE))
+         meape<-abs(apply(meape.mat,1,FUN=median, na.rm=TRUE))
+         mrae<-abs(apply(mrae.mat,1,FUN=median, na.rm=TRUE))
+         pw<-abs(apply(pw.mat,1,FUN=median, na.rm=TRUE))
+         crps<-abs(apply(crps.mat,1,FUN=median, na.rm=TRUE))
+       }
+ 
+ if(func=="mea"){
+  error.all<-apply(abs(error.mat),1,FUN=mean,na.rm=TRUE)
+  error<-(apply(error.mat,1,FUN=mean, na.rm=TRUE))
+  rmse<-abs(apply(rmse.mat,1,FUN=mean, na.rm=TRUE))
+  mae<-abs(apply(mae.mat,1,FUN=mean, na.rm=TRUE))
+        mad<-abs(apply(mad.mat,1,FUN=mean, na.rm=TRUE))
+         rmsle<-abs(apply(rmsle.mat,1,FUN=mean, na.rm=TRUE))
+         mape<-abs(apply(mape.mat,1,FUN=mean, na.rm=TRUE))
+         meape<-abs(apply(meape.mat,1,FUN=mean, na.rm=TRUE))
+         mrae<-abs(apply(mrae.mat,1,FUN=mean, na.rm=TRUE))
+         pw<-abs(apply(pw.mat,1,FUN=mean, na.rm=TRUE))
+         crps<-abs(apply(crps.mat,1,FUN=mean, na.rm=TRUE))
+       }
+ 
+ x.axis <- x.axis+my.adj
+ x.axis.new <- matrix(x.axis, nrow=length(slots), ncol=100, byrow=FALSE)
+ 
+ if(!my.line){
+ plot(x.axis.new, crps.mat, ylim=c(3, 12), ylab="CRPS", xlab="K", main="CRPS by K and N_T", col=my.col, xlim=c(3, 20))
+ }
+ if(my.line){
+ points(x.axis.new, crps.mat, ylim=c(3, 12), ylab="CRPS", xlab="K", main=paste("N_=", value2), col=my.col)
+ }
+ lines(loess(c(crps)~c(x.axis-my.adj)), col=my.col2) 
+ 
+ #par(mfrow=c(3,3))
+ #plot(c,error.all,pch=15,main="Weighted Weight Error (all)")
+ #lines(loess(error.all~c))
+ #plot(c,error,pch=15,main="Weight Error (largest weight model)")
+ #abline(h=0)
+ 
+ #plot(c,crps,pch=15,main="CRPS")
+ #lines(loess(crps~c))
+ #plot(c,mae,pch=15,main="MAE")
+ #lines(loess(mae~c))
+ #plot(c,rmse,pch=15,main="RMSE")
+ #lines(loess(rmse~c))
+ #plot(c,mape,pch=15,main="MAPE")
+ #lines(loess(mape~c))
+ #plot(c,meape,pch=15,main="MEAPE")
+ #lines(loess(meape~c))
+ #plot(c,mrae,pch=15,main="MRAE")
+ #lines(loess(mrae~c))
+ #plot(c,pw,pch=15,main="PW")
+ #lines(loess(pw~c))
+ 
+ 
+ 
+ }
> 
> 
> 
> par(mfrow=c(1,1), mar=c(3,2,2,1), mgp=c(1,0,0), tcl=.001)
> plot.fn(pos1=5, value1=0, pos2=1, value2=5, pos3=2, func="med", my.col="gray90")
[1] 3
[1] 24
[1] 45
[1] 66
[1] 87
[1] 108
[1] 129
> plot.fn(pos1=5, value1=0, pos2=1, value2=11, pos3=2, func="med", my.col="skyblue", my.line=TRUE, my.col2="blue", my.adj=.25)
[1] 9
[1] 30
[1] 51
[1] 72
[1] 93
[1] 114
[1] 135
> plot.fn(pos1=5, value1=0, pos2=1, value2=100, pos3=2, func="med", my.col="pink", my.line=TRUE, my.col2="red", my.adj=.5)
[1] 21
[1] 42
[1] 63
[1] 84
[1] 105
[1] 126
[1] 147
> legend(16, 10, c("N_T=5", "N_T=11","N_T=100"), col=c("black", "red", "blue"), lty=c(1,1,1), cex=.7) 
> #plot.fn(pos1=5, value1=0, pos2=2, value2=9, pos3=1)
> #plot.fn(pos1=5, value1=0, pos2=2, value2=15, pos3=1)
> 
> 
> #nTrain<-c(3:15,20,25,35,45,55,65,85,100)
> #nmod<-seq(3,15, by=2)
> #constant<-c(0,.01, 0.02,.025, 0.03, 0.04, .05, 0.075, 0.1, 0.15, 0.2, 0.3, .5)
> #iter<-100
> #outSample<-250
> 
> par(mfrow=c(1,1), mar=c(3,2,2,1), mgp=c(1,0,0), tcl=.001)
> plot.fn(pos1=5, value1=0, pos2=1, value2=5, pos3=2, func="med", my.col="gray90")
[1] 3
[1] 24
[1] 45
[1] 66
[1] 87
[1] 108
[1] 129
> plot.fn(pos1=1, value1=5, pos2=2, value2=5, pos3=5, func="med", my.col="gray90")
[1] 24
[1] 171
[1] 318
[1] 465
[1] 612
[1] 759
[1] 906
[1] 1053
[1] 1200
[1] 1347
[1] 1494
[1] 1641
[1] 1788
> rm(list=ls(all=TRUE))
> 
> #setwd("~/Documents/GitHub/EBMAforecast/APSA_2012/Simulations")
> setwd("~/Github/EBMAforecast/APSA_2012/Simulations")
> 
> load("SecondRound")
> #objects()
> 
> #summary(output)
> 
> 
> ##### here is the function that plots seven points with a lowes line for each statistic
> plot.fn<-function(pos1=1, value1=5, pos2=2,value2=5,pos3=5,func="med", my.col="gray90", my.line=FALSE, my.adj=0, my.col2="black"){
+ 
+ 
+ #pos1=5; value1=0; pos2=2; value2=5; pos3=2
+ 
+ # alpha<-c(10,5,3)
+ #  if (models>3){alpha<-c(alpha, rep(1, models-3))}
+ # a.mean <- alpha/sum(alpha) # ?
+   
+ 
+ slots<-NA
+ count<-0
+ for(i in 1:1911){
+  if(output[[i]]$theseParams[pos1]==value1 & output[[i]]$theseParams[pos2]==value2){
+  count<-count+1
+  slots[count]<-i} 
+  }
+ error.mat<-mae.mat<-rmse.mat<-mad.mat<-rmsle.mat <- mape.mat <- meape.mat <- mrae.mat <- pw.mat <- crps.mat <- matrix(NA,nrow=length(slots),ncol=100)
+ 
+ x.axis <- rep(NA, length(slots))
+ count <- 1
+ for(i in slots){
+   print(i)
+   x.axis[count] <- output[[i]]$theseParams[pos3]
+   count <- count+1
+ }
+ 
+ for(i in slots){
+  count<-which(slots==i)
+         errror.all.mat<-abs(output[[i]]$error)#%*%a.mean
+  #error.all.mat<-rowSums(abs(output[[i]]$error))
+  error.mat[count,]<-output[[i]]$error[,1]
+  rmse.mat[count,]<-output[[i]]$pred.rmse[,"EBMA"]
+  mae.mat[count,]<-output[[i]]$pred.mae[,"EBMA"]
+         mad.mat[count,]<-output[[i]]$pred.mad[,"EBMA"]
+         rmsle.mat[count,] <- output[[i]]$pred.rmsle[,"EBMA"]
+         mape.mat[count,] <- output[[i]]$pred.mape[,"EBMA"]
+         meape.mat[count,] <- output[[i]]$pred.meape[,"EBMA"]
+         mrae.mat[count,] <- output[[i]]$pred.mrae[,"EBMA"]
+         pw.mat[count,] <- output[[i]]$pred.pw[,"EBMA"]
+         crps.mat[count,] <- output[[i]]$model.crps
+ }
+ 
+ if(func=="med"){
+  error.all<-apply(abs(error.mat),1,FUN=median,na.rm=TRUE)
+  error<-(apply(error.mat,1,FUN=median, na.rm=TRUE))
+  rmse<-abs(apply(rmse.mat,1,FUN=median, na.rm=TRUE))
+  mae<-abs(apply(mae.mat,1,FUN=median, na.rm=TRUE))
+        mad<-abs(apply(mad.mat,1,FUN=median, na.rm=TRUE))
+         rmsle<-abs(apply(rmsle.mat,1,FUN=median, na.rm=TRUE))
+         mape<-abs(apply(mape.mat,1,FUN=median, na.rm=TRUE))
+         meape<-abs(apply(meape.mat,1,FUN=median, na.rm=TRUE))
+         mrae<-abs(apply(mrae.mat,1,FUN=median, na.rm=TRUE))
+         pw<-abs(apply(pw.mat,1,FUN=median, na.rm=TRUE))
+         crps<-abs(apply(crps.mat,1,FUN=median, na.rm=TRUE))
+       }
+ 
+ if(func=="mea"){
+  error.all<-apply(abs(error.mat),1,FUN=mean,na.rm=TRUE)
+  error<-(apply(error.mat,1,FUN=mean, na.rm=TRUE))
+  rmse<-abs(apply(rmse.mat,1,FUN=mean, na.rm=TRUE))
+  mae<-abs(apply(mae.mat,1,FUN=mean, na.rm=TRUE))
+        mad<-abs(apply(mad.mat,1,FUN=mean, na.rm=TRUE))
+         rmsle<-abs(apply(rmsle.mat,1,FUN=mean, na.rm=TRUE))
+         mape<-abs(apply(mape.mat,1,FUN=mean, na.rm=TRUE))
+         meape<-abs(apply(meape.mat,1,FUN=mean, na.rm=TRUE))
+         mrae<-abs(apply(mrae.mat,1,FUN=mean, na.rm=TRUE))
+         pw<-abs(apply(pw.mat,1,FUN=mean, na.rm=TRUE))
+         crps<-abs(apply(crps.mat,1,FUN=mean, na.rm=TRUE))
+       }
+ 
+ x.axis <- x.axis+my.adj
+ x.axis.new <- matrix(x.axis, nrow=length(slots), ncol=100, byrow=FALSE)
+ 
+ if(!my.line){
+ plot(x.axis.new, crps.mat, ylab="CRPS", xlab="C", main="CRPS by C", col=my.col)
+ }
+ if(my.line){
+ points(x.axis.new, crps.mat, ylim=c(3, 12), ylab="CRPS", xlab="K", main=paste("N_=", value2), col=my.col)
+ }
+ lines(loess(c(crps)~c(x.axis-my.adj)), col=my.col2) 
+ 
+ #par(mfrow=c(3,3))
+ #plot(c,error.all,pch=15,main="Weighted Weight Error (all)")
+ #lines(loess(error.all~c))
+ #plot(c,error,pch=15,main="Weight Error (largest weight model)")
+ #abline(h=0)
+ 
+ #plot(c,crps,pch=15,main="CRPS")
+ #lines(loess(crps~c))
+ #plot(c,mae,pch=15,main="MAE")
+ #lines(loess(mae~c))
+ #plot(c,rmse,pch=15,main="RMSE")
+ #lines(loess(rmse~c))
+ #plot(c,mape,pch=15,main="MAPE")
+ #lines(loess(mape~c))
+ #plot(c,meape,pch=15,main="MEAPE")
+ #lines(loess(meape~c))
+ #plot(c,mrae,pch=15,main="MRAE")
+ #lines(loess(mrae~c))
+ #plot(c,pw,pch=15,main="PW")
+ #lines(loess(pw~c))
+ 
+ 
+ 
+ }
> 
> 
> 
> par(mfrow=c(1,1), mar=c(3,2,2,1), mgp=c(1,0,0), tcl=.001)
> plot.fn(pos1=1, value1=5, pos2=2, value2=5, pos3=5, func="med", my.col="gray90")
[1] 24
[1] 171
[1] 318
[1] 465
[1] 612
[1] 759
[1] 906
[1] 1053
[1] 1200
[1] 1347
[1] 1494
[1] 1641
[1] 1788
> plot.fn(pos1=5, value1=0, pos2=1, value2=11, pos3=2, func="med", my.col="skyblue", my.line=TRUE, my.col2="blue", my.adj=.25)
[1] 9
[1] 30
[1] 51
[1] 72
[1] 93
[1] 114
[1] 135
> plot.fn(pos1=5, value1=0, pos2=1, value2=100, pos3=2, func="med", my.col="pink", my.line=TRUE, my.col2="red", my.adj=.5)
[1] 21
[1] 42
[1] 63
[1] 84
[1] 105
[1] 126
[1] 147
> legend(16, 10, c("N_T=5", "N_T=11","N_T=100"), col=c("black", "red", "blue"), lty=c(1,1,1), cex=.7) 
> #plot.fn(pos1=5, value1=0, pos2=2, value2=9, pos3=1)
> #plot.fn(pos1=5, value1=0, pos2=2, value2=15, pos3=1)
> 
> 
> #nTrain<-c(3:15,20,25,35,45,55,65,85,100)
> #nmod<-seq(3,15, by=2)
> #constant<-c(0,.01, 0.02,.025, 0.03, 0.04, .05, 0.075, 0.1, 0.15, 0.2, 0.3, .5)
> #iter<-100
> #outSample<-250
> 
> plot.fn(pos1=1, value1=5, pos2=2, value2=5, pos3=15, func="med", my.col="gray90")
[1] 24
[1] 171
[1] 318
[1] 465
[1] 612
[1] 759
[1] 906
[1] 1053
[1] 1200
[1] 1347
[1] 1494
[1] 1641
[1] 1788
Error in plot.window(...) : need finite 'xlim' values
In addition: Warning messages:
1: In min(x) : no non-missing arguments to min; returning Inf
2: In max(x) : no non-missing arguments to max; returning -Inf
> plot.fn(pos1=1, value1=5, pos2=2, value2=15, pos3=5, func="med", my.col="gray90")
[1] 129
[1] 276
[1] 423
[1] 570
[1] 717
[1] 864
[1] 1011
[1] 1158
[1] 1305
[1] 1452
[1] 1599
[1] 1746
[1] 1893
> plot.fn(pos1=1, value1=3, pos2=2, value2=15, pos3=5, func="med", my.col="gray90")
[1] 127
[1] 274
[1] 421
[1] 568
[1] 715
[1] 862
[1] 1009
[1] 1156
[1] 1303
[1] 1450
[1] 1597
[1] 1744
[1] 1891
> plot.fn(pos1=1, value1=5, pos2=2, value2=10, pos3=5, func="med", my.col="gray90", col="skyblue", my.adj=.25)
Error in plot.fn(pos1 = 1, value1 = 5, pos2 = 2, value2 = 10, pos3 = 5,  : 
  unused argument(s) (col = "skyblue")
> plot.fn(pos1=1, value1=5, pos2=2, value2=10, pos3=5, func="med", my.col="skyblue", my.adj=.25)
[1] NA
Error in x.axis[count] <- output[[i]]$theseParams[pos3] : 
  replacement has length zero
> plot.fn(pos1=1, value1=5, pos2=2, value2=9, pos3=5, func="med", my.col="skyblue", my.adj=.25)
[1] 66
[1] 213
[1] 360
[1] 507
[1] 654
[1] 801
[1] 948
[1] 1095
[1] 1242
[1] 1389
[1] 1536
[1] 1683
[1] 1830
> par(mfrow=c(1,1), mar=c(3,2,2,1), mgp=c(1,0,0), tcl=.001)
> plot.fn(pos1=1, value1=3, pos2=2, value2=15, pos3=5, func="med", my.col="gray90")
[1] 127
[1] 274
[1] 421
[1] 568
[1] 715
[1] 862
[1] 1009
[1] 1156
[1] 1303
[1] 1450
[1] 1597
[1] 1744
[1] 1891
> plot.fn(pos1=1, value1=5, pos2=2, value2=9, pos3=5, func="med", my.col="skyblue", my.adj=.25)
[1] 66
[1] 213
[1] 360
[1] 507
[1] 654
[1] 801
[1] 948
[1] 1095
[1] 1242
[1] 1389
[1] 1536
[1] 1683
[1] 1830
> plot.fn(pos1=1, value1=3, pos2=2, value2=15, pos3=5, func="med", my.col="gray90")
[1] 127
[1] 274
[1] 421
[1] 568
[1] 715
[1] 862
[1] 1009
[1] 1156
[1] 1303
[1] 1450
[1] 1597
[1] 1744
[1] 1891
> plot.fn(pos1=1, value1=5, pos2=2, value2=9, pos3=5, func="med", my.col="skyblue", my.adj=.25,my.line=TRUE)
[1] 66
[1] 213
[1] 360
[1] 507
[1] 654
[1] 801
[1] 948
[1] 1095
[1] 1242
[1] 1389
[1] 1536
[1] 1683
[1] 1830
> plot.fn(pos1=1, value1=3, pos2=2, value2=15, pos3=5, func="med", my.col="gray90")
[1] 127
[1] 274
[1] 421
[1] 568
[1] 715
[1] 862
[1] 1009
[1] 1156
[1] 1303
[1] 1450
[1] 1597
[1] 1744
[1] 1891
> plot.fn(pos1=1, value1=5, pos2=2, value2=9, pos3=5, func="med", my.col="skyblue", my.adj=.01,my.line=TRUE)
[1] 66
[1] 213
[1] 360
[1] 507
[1] 654
[1] 801
[1] 948
[1] 1095
[1] 1242
[1] 1389
[1] 1536
[1] 1683
[1] 1830
> par(mfrow=c(1,1), mar=c(3,2,2,1), mgp=c(1,0,0), tcl=.001)
> plot.fn(pos1=1, value1=3, pos2=2, value2=15, pos3=5, func="med", my.col="gray90")
[1] 127
[1] 274
[1] 421
[1] 568
[1] 715
[1] 862
[1] 1009
[1] 1156
[1] 1303
[1] 1450
[1] 1597
[1] 1744
[1] 1891
> plot.fn(pos1=1, value1=5, pos2=2, value2=9, pos3=5, func="med", my.col="skyblue", my.adj=.01,my.line=TRUE, my.col2="blue")
[1] 66
[1] 213
[1] 360
[1] 507
[1] 654
[1] 801
[1] 948
[1] 1095
[1] 1242
[1] 1389
[1] 1536
[1] 1683
[1] 1830
> plot.fn(pos1=1, value1=3, pos2=2, value2=15, pos3=5, func="med", my.col="gray99")
[1] 127
[1] 274
[1] 421
[1] 568
[1] 715
[1] 862
[1] 1009
[1] 1156
[1] 1303
[1] 1450
[1] 1597
[1] 1744
[1] 1891
> plot.fn(pos1=1, value1=5, pos2=2, value2=9, pos3=5, func="med", my.col="blue99", my.adj=.01,my.line=TRUE, my.col2="blue")
[1] 66
[1] 213
[1] 360
[1] 507
[1] 654
[1] 801
[1] 948
[1] 1095
[1] 1242
[1] 1389
[1] 1536
[1] 1683
[1] 1830
Error in plot.xy(xy.coords(x, y), type = type, ...) : 
  invalid color name 'blue99'
> plot.fn(pos1=1, value1=5, pos2=2, value2=9, pos3=5, func="med", my.col="skyblue", my.adj=.01,my.line=TRUE, my.col2="blue")
[1] 66
[1] 213
[1] 360
[1] 507
[1] 654
[1] 801
[1] 948
[1] 1095
[1] 1242
[1] 1389
[1] 1536
[1] 1683
[1] 1830
> plot.fn(pos1=1, value1=5, pos2=2, value2=9, pos3=5, func="med", my.col="gray99", my.adj=.01,my.line=TRUE, my.col2="blue")
[1] 66
[1] 213
[1] 360
[1] 507
[1] 654
[1] 801
[1] 948
[1] 1095
[1] 1242
[1] 1389
[1] 1536
[1] 1683
[1] 1830
> par(mfrow=c(1,1), mar=c(3,2,2,1), mgp=c(1,0,0), tcl=.001)
> plot.fn(pos1=1, value1=3, pos2=2, value2=15, pos3=5, func="med", my.col="gray99")
[1] 127
[1] 274
[1] 421
[1] 568
[1] 715
[1] 862
[1] 1009
[1] 1156
[1] 1303
[1] 1450
[1] 1597
[1] 1744
[1] 1891
> plot.fn(pos1=1, value1=5, pos2=2, value2=9, pos3=5, func="med", my.col="gray99", my.adj=.01,my.line=TRUE, my.col2="blue")
[1] 66
[1] 213
[1] 360
[1] 507
[1] 654
[1] 801
[1] 948
[1] 1095
[1] 1242
[1] 1389
[1] 1536
[1] 1683
[1] 1830
> plot.fn(pos1=1, value1=35, pos2=2, value2=5, pos3=5, func="med", my.col="gray99", my.adj=-.01,my.line=TRUE, my.col2="red")
[1] 37
[1] 184
[1] 331
[1] 478
[1] 625
[1] 772
[1] 919
[1] 1066
[1] 1213
[1] 1360
[1] 1507
[1] 1654
[1] 1801
> rm(list=ls(all=TRUE))
> 
> #setwd("~/Documents/GitHub/EBMAforecast/APSA_2012/Simulations")
> setwd("~/Github/EBMAforecast/APSA_2012/Simulations")
> 
> load("SecondRound")
> #objects()
> 
> #summary(output)
> 
> 
> ##### here is the function that plots seven points with a lowes line for each statistic
> plot.fn<-function(pos1=1, value1=5, pos2=2,value2=5,pos3=5,func="med", my.col="gray90", my.line=FALSE, my.adj=0, my.col2="black"){
+ 
+ 
+ #pos1=5; value1=0; pos2=2; value2=5; pos3=2
+ 
+ # alpha<-c(10,5,3)
+ #  if (models>3){alpha<-c(alpha, rep(1, models-3))}
+ # a.mean <- alpha/sum(alpha) # ?
+   
+ 
+ slots<-NA
+ count<-0
+ for(i in 1:1911){
+  if(output[[i]]$theseParams[pos1]==value1 & output[[i]]$theseParams[pos2]==value2){
+  count<-count+1
+  slots[count]<-i} 
+  }
+ error.mat<-mae.mat<-rmse.mat<-mad.mat<-rmsle.mat <- mape.mat <- meape.mat <- mrae.mat <- pw.mat <- crps.mat <- matrix(NA,nrow=length(slots),ncol=100)
+ 
+ x.axis <- rep(NA, length(slots))
+ count <- 1
+ for(i in slots){
+   print(i)
+   x.axis[count] <- output[[i]]$theseParams[pos3]
+   count <- count+1
+ }
+ 
+ for(i in slots){
+  count<-which(slots==i)
+         errror.all.mat<-abs(output[[i]]$error)#%*%a.mean
+  #error.all.mat<-rowSums(abs(output[[i]]$error))
+  error.mat[count,]<-output[[i]]$error[,1]
+  rmse.mat[count,]<-output[[i]]$pred.rmse[,"EBMA"]
+  mae.mat[count,]<-output[[i]]$pred.mae[,"EBMA"]
+         mad.mat[count,]<-output[[i]]$pred.mad[,"EBMA"]
+         rmsle.mat[count,] <- output[[i]]$pred.rmsle[,"EBMA"]
+         mape.mat[count,] <- output[[i]]$pred.mape[,"EBMA"]
+         meape.mat[count,] <- output[[i]]$pred.meape[,"EBMA"]
+         mrae.mat[count,] <- output[[i]]$pred.mrae[,"EBMA"]
+         pw.mat[count,] <- output[[i]]$pred.pw[,"EBMA"]
+         crps.mat[count,] <- output[[i]]$model.crps
+ }
+ 
+ if(func=="med"){
+  error.all<-apply(abs(error.mat),1,FUN=median,na.rm=TRUE)
+  error<-(apply(error.mat,1,FUN=median, na.rm=TRUE))
+  rmse<-abs(apply(rmse.mat,1,FUN=median, na.rm=TRUE))
+  mae<-abs(apply(mae.mat,1,FUN=median, na.rm=TRUE))
+        mad<-abs(apply(mad.mat,1,FUN=median, na.rm=TRUE))
+         rmsle<-abs(apply(rmsle.mat,1,FUN=median, na.rm=TRUE))
+         mape<-abs(apply(mape.mat,1,FUN=median, na.rm=TRUE))
+         meape<-abs(apply(meape.mat,1,FUN=median, na.rm=TRUE))
+         mrae<-abs(apply(mrae.mat,1,FUN=median, na.rm=TRUE))
+         pw<-abs(apply(pw.mat,1,FUN=median, na.rm=TRUE))
+         crps<-abs(apply(crps.mat,1,FUN=median, na.rm=TRUE))
+       }
+ 
+ if(func=="mea"){
+  error.all<-apply(abs(error.mat),1,FUN=mean,na.rm=TRUE)
+  error<-(apply(error.mat,1,FUN=mean, na.rm=TRUE))
+  rmse<-abs(apply(rmse.mat,1,FUN=mean, na.rm=TRUE))
+  mae<-abs(apply(mae.mat,1,FUN=mean, na.rm=TRUE))
+        mad<-abs(apply(mad.mat,1,FUN=mean, na.rm=TRUE))
+         rmsle<-abs(apply(rmsle.mat,1,FUN=mean, na.rm=TRUE))
+         mape<-abs(apply(mape.mat,1,FUN=mean, na.rm=TRUE))
+         meape<-abs(apply(meape.mat,1,FUN=mean, na.rm=TRUE))
+         mrae<-abs(apply(mrae.mat,1,FUN=mean, na.rm=TRUE))
+         pw<-abs(apply(pw.mat,1,FUN=mean, na.rm=TRUE))
+         crps<-abs(apply(crps.mat,1,FUN=mean, na.rm=TRUE))
+       }
+ 
+ x.axis <- x.axis+my.adj
+ x.axis.new <- matrix(x.axis, nrow=length(slots), ncol=100, byrow=FALSE)
+ 
+ if(!my.line){
+ plot(x.axis, crps, ylab="CRPS", xlab="C", main="CRPS by C", col=my.col)
+ }
+ if(my.line){
+ points(x.axis, crps, ylim=c(3, 12), ylab="CRPS", xlab="K", main=paste("N_=", value2), col=my.col)
+ }
+ lines(loess(c(crps)~c(x.axis-my.adj)), col=my.col2) 
+ 
+ #par(mfrow=c(3,3))
+ #plot(c,error.all,pch=15,main="Weighted Weight Error (all)")
+ #lines(loess(error.all~c))
+ #plot(c,error,pch=15,main="Weight Error (largest weight model)")
+ #abline(h=0)
+ 
+ #plot(c,crps,pch=15,main="CRPS")
+ #lines(loess(crps~c))
+ #plot(c,mae,pch=15,main="MAE")
+ #lines(loess(mae~c))
+ #plot(c,rmse,pch=15,main="RMSE")
+ #lines(loess(rmse~c))
+ #plot(c,mape,pch=15,main="MAPE")
+ #lines(loess(mape~c))
+ #plot(c,meape,pch=15,main="MEAPE")
+ #lines(loess(meape~c))
+ #plot(c,mrae,pch=15,main="MRAE")
+ #lines(loess(mrae~c))
+ #plot(c,pw,pch=15,main="PW")
+ #lines(loess(pw~c))
+ 
+ 
+ 
+ }
> 
> 
> 
> par(mfrow=c(1,1), mar=c(3,2,2,1), mgp=c(1,0,0), tcl=.001)
> plot.fn(pos1=1, value1=3, pos2=2, value2=15, pos3=5, func="med", my.col="gray99")
[1] 127
[1] 274
[1] 421
[1] 568
[1] 715
[1] 862
[1] 1009
[1] 1156
[1] 1303
[1] 1450
[1] 1597
[1] 1744
[1] 1891
> plot.fn(pos1=1, value1=5, pos2=2, value2=9, pos3=5, func="med", my.col="gray99", my.adj=.01,my.line=TRUE, my.col2="blue")
[1] 66
[1] 213
[1] 360
[1] 507
[1] 654
[1] 801
[1] 948
[1] 1095
[1] 1242
[1] 1389
[1] 1536
[1] 1683
[1] 1830
> plot.fn(pos1=1, value1=35, pos2=2, value2=5, pos3=5, func="med", my.col="gray99", my.adj=-.01,my.line=TRUE, my.col2="red")
[1] 37
[1] 184
[1] 331
[1] 478
[1] 625
[1] 772
[1] 919
[1] 1066
[1] 1213
[1] 1360
[1] 1507
[1] 1654
[1] 1801
> 
> plot.fn(pos1=5, value1=0, pos2=1, value2=100, pos3=2, func="med", my.col="pink", my.line=TRUE, my.col2="red", my.adj=.5)
[1] 21
[1] 42
[1] 63
[1] 84
[1] 105
[1] 126
[1] 147
> legend(16, 10, c("N_T=5", "N_T=11","N_T=100"), col=c("black", "red", "blue"), lty=c(1,1,1), cex=.7) 
> #plot.fn(pos1=5, value1=0, pos2=2, value2=9, pos3=1)
> #plot.fn(pos1=5, value1=0, pos2=2, value2=15, pos3=1)
> 
> 
> #nTrain<-c(3:15,20,25,35,45,55,65,85,100)
> #nmod<-seq(3,15, by=2)
> #constant<-c(0,.01, 0.02,.025, 0.03, 0.04, .05, 0.075, 0.1, 0.15, 0.2, 0.3, .5)
> #iter<-100
> #outSample<-250
> 
> rm(list=ls(all=TRUE))
> 
> #setwd("~/Documents/GitHub/EBMAforecast/APSA_2012/Simulations")
> setwd("~/Github/EBMAforecast/APSA_2012/Simulations")
> 
> load("SecondRound")
> #objects()
> 
> #summary(output)
> 
> 
> ##### here is the function that plots seven points with a lowes line for each statistic
> plot.fn<-function(pos1=1, value1=5, pos2=2,value2=5,pos3=5,func="med", my.col="gray90", my.line=FALSE, my.adj=0, my.col2="black"){
+ 
+ 
+ #pos1=5; value1=0; pos2=2; value2=5; pos3=2
+ 
+ # alpha<-c(10,5,3)
+ #  if (models>3){alpha<-c(alpha, rep(1, models-3))}
+ # a.mean <- alpha/sum(alpha) # ?
+   
+ 
+ slots<-NA
+ count<-0
+ for(i in 1:1911){
+  if(output[[i]]$theseParams[pos1]==value1 & output[[i]]$theseParams[pos2]==value2){
+  count<-count+1
+  slots[count]<-i} 
+  }
+ error.mat<-mae.mat<-rmse.mat<-mad.mat<-rmsle.mat <- mape.mat <- meape.mat <- mrae.mat <- pw.mat <- crps.mat <- matrix(NA,nrow=length(slots),ncol=100)
+ 
+ x.axis <- rep(NA, length(slots))
+ count <- 1
+ for(i in slots){
+   print(i)
+   x.axis[count] <- output[[i]]$theseParams[pos3]
+   count <- count+1
+ }
+ 
+ for(i in slots){
+  count<-which(slots==i)
+         errror.all.mat<-abs(output[[i]]$error)#%*%a.mean
+  #error.all.mat<-rowSums(abs(output[[i]]$error))
+  error.mat[count,]<-output[[i]]$error[,1]
+  rmse.mat[count,]<-output[[i]]$pred.rmse[,"EBMA"]
+  mae.mat[count,]<-output[[i]]$pred.mae[,"EBMA"]
+         mad.mat[count,]<-output[[i]]$pred.mad[,"EBMA"]
+         rmsle.mat[count,] <- output[[i]]$pred.rmsle[,"EBMA"]
+         mape.mat[count,] <- output[[i]]$pred.mape[,"EBMA"]
+         meape.mat[count,] <- output[[i]]$pred.meape[,"EBMA"]
+         mrae.mat[count,] <- output[[i]]$pred.mrae[,"EBMA"]
+         pw.mat[count,] <- output[[i]]$pred.pw[,"EBMA"]
+         crps.mat[count,] <- output[[i]]$model.crps
+ }
+ 
+ if(func=="med"){
+  error.all<-apply(abs(error.mat),1,FUN=median,na.rm=TRUE)
+  error<-(apply(error.mat,1,FUN=median, na.rm=TRUE))
+  rmse<-abs(apply(rmse.mat,1,FUN=median, na.rm=TRUE))
+  mae<-abs(apply(mae.mat,1,FUN=median, na.rm=TRUE))
+        mad<-abs(apply(mad.mat,1,FUN=median, na.rm=TRUE))
+         rmsle<-abs(apply(rmsle.mat,1,FUN=median, na.rm=TRUE))
+         mape<-abs(apply(mape.mat,1,FUN=median, na.rm=TRUE))
+         meape<-abs(apply(meape.mat,1,FUN=median, na.rm=TRUE))
+         mrae<-abs(apply(mrae.mat,1,FUN=median, na.rm=TRUE))
+         pw<-abs(apply(pw.mat,1,FUN=median, na.rm=TRUE))
+         crps<-abs(apply(crps.mat,1,FUN=median, na.rm=TRUE))
+       }
+ 
+ if(func=="mea"){
+  error.all<-apply(abs(error.mat),1,FUN=mean,na.rm=TRUE)
+  error<-(apply(error.mat,1,FUN=mean, na.rm=TRUE))
+  rmse<-abs(apply(rmse.mat,1,FUN=mean, na.rm=TRUE))
+  mae<-abs(apply(mae.mat,1,FUN=mean, na.rm=TRUE))
+        mad<-abs(apply(mad.mat,1,FUN=mean, na.rm=TRUE))
+         rmsle<-abs(apply(rmsle.mat,1,FUN=mean, na.rm=TRUE))
+         mape<-abs(apply(mape.mat,1,FUN=mean, na.rm=TRUE))
+         meape<-abs(apply(meape.mat,1,FUN=mean, na.rm=TRUE))
+         mrae<-abs(apply(mrae.mat,1,FUN=mean, na.rm=TRUE))
+         pw<-abs(apply(pw.mat,1,FUN=mean, na.rm=TRUE))
+         crps<-abs(apply(crps.mat,1,FUN=mean, na.rm=TRUE))
+       }
+ 
+ x.axis <- x.axis+my.adj
+ x.axis.new <- matrix(x.axis, nrow=length(slots), ncol=100, byrow=FALSE)
+ 
+ if(!my.line){
+ plot(x.axis, crps, ylab="CRPS", xlab="C", main="CRPS by C", col=my.col, ylim=c(4, 20))
+ }
+ if(my.line){
+ points(x.axis, crps, ylim=c(3, 12), ylab="CRPS", xlab="K", main=paste("N_=", value2), col=my.col)
+ }
+ lines(loess(c(crps)~c(x.axis-my.adj), span=20), col=my.col2) 
+ 
+ #par(mfrow=c(3,3))
+ #plot(c,error.all,pch=15,main="Weighted Weight Error (all)")
+ #lines(loess(error.all~c))
+ #plot(c,error,pch=15,main="Weight Error (largest weight model)")
+ #abline(h=0)
+ 
+ #plot(c,crps,pch=15,main="CRPS")
+ #lines(loess(crps~c))
+ #plot(c,mae,pch=15,main="MAE")
+ #lines(loess(mae~c))
+ #plot(c,rmse,pch=15,main="RMSE")
+ #lines(loess(rmse~c))
+ #plot(c,mape,pch=15,main="MAPE")
+ #lines(loess(mape~c))
+ #plot(c,meape,pch=15,main="MEAPE")
+ #lines(loess(meape~c))
+ #plot(c,mrae,pch=15,main="MRAE")
+ #lines(loess(mrae~c))
+ #plot(c,pw,pch=15,main="PW")
+ #lines(loess(pw~c))
+ 
+ 
+ 
+ }
> 
> 
> 
> par(mfrow=c(1,1), mar=c(3,2,2,1), mgp=c(1,0,0), tcl=.001)
> plot.fn(pos1=1, value1=3, pos2=2, value2=15, pos3=5, func="med", my.col="gray90")
[1] 127
[1] 274
[1] 421
[1] 568
[1] 715
[1] 862
[1] 1009
[1] 1156
[1] 1303
[1] 1450
[1] 1597
[1] 1744
[1] 1891
> plot.fn(pos1=1, value1=5, pos2=2, value2=9, pos3=5, func="med", my.col="gray90", my.adj=.01,my.line=TRUE, my.col2="blue")
[1] 66
[1] 213
[1] 360
[1] 507
[1] 654
[1] 801
[1] 948
[1] 1095
[1] 1242
[1] 1389
[1] 1536
[1] 1683
[1] 1830
> plot.fn(pos1=1, value1=35, pos2=2, value2=5, pos3=5, func="med", my.col="gray90", my.adj=-.01,my.line=TRUE, my.col2="red")
[1] 37
[1] 184
[1] 331
[1] 478
[1] 625
[1] 772
[1] 919
[1] 1066
[1] 1213
[1] 1360
[1] 1507
[1] 1654
[1] 1801
> 
> #plot.fn(pos1=5, value1=0, pos2=1, value2=100, pos3=2, func="med", my.col="pink", my.line=TRUE, my.col2="red", my.adj=.5)
> #legend(16, 10, c("N_T=5", "N_T=11","N_T=100"), col=c("black", "red", "blue"), lty=c(1,1,1), cex=.7) 
> #plot.fn(pos1=5, value1=0, pos2=2, value2=9, pos3=1)
> #plot.fn(pos1=5, value1=0, pos2=2, value2=15, pos3=1)
> 
> 
> #nTrain<-c(3:15,20,25,35,45,55,65,85,100)
> #nmod<-seq(3,15, by=2)
> #constant<-c(0,.01, 0.02,.025, 0.03, 0.04, .05, 0.075, 0.1, 0.15, 0.2, 0.3, .5)
> #iter<-100
> #outSample<-250
> 
> rm(list=ls(all=TRUE))
> 
> #setwd("~/Documents/GitHub/EBMAforecast/APSA_2012/Simulations")
> setwd("~/Github/EBMAforecast/APSA_2012/Simulations")
> 
> load("SecondRound")
> #objects()
> 
> #summary(output)
> 
> 
> ##### here is the function that plots seven points with a lowes line for each statistic
> plot.fn<-function(pos1=1, value1=5, pos2=2,value2=5,pos3=5,func="med", my.col="gray90", my.line=FALSE, my.adj=0, my.col2="black"){
+ 
+ 
+ #pos1=5; value1=0; pos2=2; value2=5; pos3=2
+ 
+ # alpha<-c(10,5,3)
+ #  if (models>3){alpha<-c(alpha, rep(1, models-3))}
+ # a.mean <- alpha/sum(alpha) # ?
+   
+ 
+ slots<-NA
+ count<-0
+ for(i in 1:1911){
+  if(output[[i]]$theseParams[pos1]==value1 & output[[i]]$theseParams[pos2]==value2){
+  count<-count+1
+  slots[count]<-i} 
+  }
+ error.mat<-mae.mat<-rmse.mat<-mad.mat<-rmsle.mat <- mape.mat <- meape.mat <- mrae.mat <- pw.mat <- crps.mat <- matrix(NA,nrow=length(slots),ncol=100)
+ 
+ x.axis <- rep(NA, length(slots))
+ count <- 1
+ for(i in slots){
+   print(i)
+   x.axis[count] <- output[[i]]$theseParams[pos3]
+   count <- count+1
+ }
+ 
+ for(i in slots){
+  count<-which(slots==i)
+         errror.all.mat<-abs(output[[i]]$error)#%*%a.mean
+  #error.all.mat<-rowSums(abs(output[[i]]$error))
+  error.mat[count,]<-output[[i]]$error[,1]
+  rmse.mat[count,]<-output[[i]]$pred.rmse[,"EBMA"]
+  mae.mat[count,]<-output[[i]]$pred.mae[,"EBMA"]
+         mad.mat[count,]<-output[[i]]$pred.mad[,"EBMA"]
+         rmsle.mat[count,] <- output[[i]]$pred.rmsle[,"EBMA"]
+         mape.mat[count,] <- output[[i]]$pred.mape[,"EBMA"]
+         meape.mat[count,] <- output[[i]]$pred.meape[,"EBMA"]
+         mrae.mat[count,] <- output[[i]]$pred.mrae[,"EBMA"]
+         pw.mat[count,] <- output[[i]]$pred.pw[,"EBMA"]
+         crps.mat[count,] <- output[[i]]$model.crps
+ }
+ 
+ if(func=="med"){
+  error.all<-apply(abs(error.mat),1,FUN=median,na.rm=TRUE)
+  error<-(apply(error.mat,1,FUN=median, na.rm=TRUE))
+  rmse<-abs(apply(rmse.mat,1,FUN=median, na.rm=TRUE))
+  mae<-abs(apply(mae.mat,1,FUN=median, na.rm=TRUE))
+        mad<-abs(apply(mad.mat,1,FUN=median, na.rm=TRUE))
+         rmsle<-abs(apply(rmsle.mat,1,FUN=median, na.rm=TRUE))
+         mape<-abs(apply(mape.mat,1,FUN=median, na.rm=TRUE))
+         meape<-abs(apply(meape.mat,1,FUN=median, na.rm=TRUE))
+         mrae<-abs(apply(mrae.mat,1,FUN=median, na.rm=TRUE))
+         pw<-abs(apply(pw.mat,1,FUN=median, na.rm=TRUE))
+         crps<-abs(apply(crps.mat,1,FUN=median, na.rm=TRUE))
+       }
+ 
+ if(func=="mea"){
+  error.all<-apply(abs(error.mat),1,FUN=mean,na.rm=TRUE)
+  error<-(apply(error.mat,1,FUN=mean, na.rm=TRUE))
+  rmse<-abs(apply(rmse.mat,1,FUN=mean, na.rm=TRUE))
+  mae<-abs(apply(mae.mat,1,FUN=mean, na.rm=TRUE))
+        mad<-abs(apply(mad.mat,1,FUN=mean, na.rm=TRUE))
+         rmsle<-abs(apply(rmsle.mat,1,FUN=mean, na.rm=TRUE))
+         mape<-abs(apply(mape.mat,1,FUN=mean, na.rm=TRUE))
+         meape<-abs(apply(meape.mat,1,FUN=mean, na.rm=TRUE))
+         mrae<-abs(apply(mrae.mat,1,FUN=mean, na.rm=TRUE))
+         pw<-abs(apply(pw.mat,1,FUN=mean, na.rm=TRUE))
+         crps<-abs(apply(crps.mat,1,FUN=mean, na.rm=TRUE))
+       }
+ 
+ x.axis <- x.axis+my.adj
+ x.axis.new <- matrix(x.axis, nrow=length(slots), ncol=100, byrow=FALSE)
+ 
+ if(!my.line){
+ plot(x.axis, crps, ylab="CRPS", xlab="C", main="CRPS by C", col=my.col, ylim=c(4, 20))
+ }
+ if(my.line){
+ points(x.axis, crps, ylim=c(3, 12), ylab="CRPS", xlab="K", main=paste("N_=", value2), col=my.col)
+ }
+ lines(loess(c(crps)~c(x.axis-my.adj), span=.01), col=my.col2) 
+ 
+ #par(mfrow=c(3,3))
+ #plot(c,error.all,pch=15,main="Weighted Weight Error (all)")
+ #lines(loess(error.all~c))
+ #plot(c,error,pch=15,main="Weight Error (largest weight model)")
+ #abline(h=0)
+ 
+ #plot(c,crps,pch=15,main="CRPS")
+ #lines(loess(crps~c))
+ #plot(c,mae,pch=15,main="MAE")
+ #lines(loess(mae~c))
+ #plot(c,rmse,pch=15,main="RMSE")
+ #lines(loess(rmse~c))
+ #plot(c,mape,pch=15,main="MAPE")
+ #lines(loess(mape~c))
+ #plot(c,meape,pch=15,main="MEAPE")
+ #lines(loess(meape~c))
+ #plot(c,mrae,pch=15,main="MRAE")
+ #lines(loess(mrae~c))
+ #plot(c,pw,pch=15,main="PW")
+ #lines(loess(pw~c))
+ 
+ 
+ 
+ }
> 
> 
> 
> par(mfrow=c(1,1), mar=c(3,2,2,1), mgp=c(1,0,0), tcl=.001)
> plot.fn(pos1=1, value1=3, pos2=2, value2=15, pos3=5, func="med", my.col="gray90")
[1] 127
[1] 274
[1] 421
[1] 568
[1] 715
[1] 862
[1] 1009
[1] 1156
[1] 1303
[1] 1450
[1] 1597
[1] 1744
[1] 1891
Error in simpleLoess(y, x, w, span, degree, parametric, drop.square, normalize,  : 
  span is too small
> plot.fn(pos1=1, value1=5, pos2=2, value2=9, pos3=5, func="med", my.col="gray90", my.adj=.01,my.line=TRUE, my.col2="blue")
[1] 66
[1] 213
[1] 360
[1] 507
[1] 654
[1] 801
[1] 948
[1] 1095
[1] 1242
[1] 1389
[1] 1536
[1] 1683
[1] 1830
Error in simpleLoess(y, x, w, span, degree, parametric, drop.square, normalize,  : 
  span is too small
> plot.fn(pos1=1, value1=35, pos2=2, value2=5, pos3=5, func="med", my.col="gray90", my.adj=-.01,my.line=TRUE, my.col2="red")
[1] 37
[1] 184
[1] 331
[1] 478
[1] 625
[1] 772
[1] 919
[1] 1066
[1] 1213
[1] 1360
[1] 1507
[1] 1654
[1] 1801
Error in simpleLoess(y, x, w, span, degree, parametric, drop.square, normalize,  : 
  span is too small
> 
> #plot.fn(pos1=5, value1=0, pos2=1, value2=100, pos3=2, func="med", my.col="pink", my.line=TRUE, my.col2="red", my.adj=.5)
> #legend(16, 10, c("N_T=5", "N_T=11","N_T=100"), col=c("black", "red", "blue"), lty=c(1,1,1), cex=.7) 
> #plot.fn(pos1=5, value1=0, pos2=2, value2=9, pos3=1)
> #plot.fn(pos1=5, value1=0, pos2=2, value2=15, pos3=1)
> 
> 
> #nTrain<-c(3:15,20,25,35,45,55,65,85,100)
> #nmod<-seq(3,15, by=2)
> #constant<-c(0,.01, 0.02,.025, 0.03, 0.04, .05, 0.075, 0.1, 0.15, 0.2, 0.3, .5)
> #iter<-100
> #outSample<-250
> 
> rm(list=ls(all=TRUE))
> 
> #setwd("~/Documents/GitHub/EBMAforecast/APSA_2012/Simulations")
> setwd("~/Github/EBMAforecast/APSA_2012/Simulations")
> 
> load("SecondRound")
> #objects()
> 
> #summary(output)
> 
> 
> ##### here is the function that plots seven points with a lowes line for each statistic
> plot.fn<-function(pos1=1, value1=5, pos2=2,value2=5,pos3=5,func="med", my.col="gray90", my.line=FALSE, my.adj=0, my.col2="black"){
+ 
+ 
+ #pos1=5; value1=0; pos2=2; value2=5; pos3=2
+ 
+ # alpha<-c(10,5,3)
+ #  if (models>3){alpha<-c(alpha, rep(1, models-3))}
+ # a.mean <- alpha/sum(alpha) # ?
+   
+ 
+ slots<-NA
+ count<-0
+ for(i in 1:1911){
+  if(output[[i]]$theseParams[pos1]==value1 & output[[i]]$theseParams[pos2]==value2){
+  count<-count+1
+  slots[count]<-i} 
+  }
+ error.mat<-mae.mat<-rmse.mat<-mad.mat<-rmsle.mat <- mape.mat <- meape.mat <- mrae.mat <- pw.mat <- crps.mat <- matrix(NA,nrow=length(slots),ncol=100)
+ 
+ x.axis <- rep(NA, length(slots))
+ count <- 1
+ for(i in slots){
+   print(i)
+   x.axis[count] <- output[[i]]$theseParams[pos3]
+   count <- count+1
+ }
+ 
+ for(i in slots){
+  count<-which(slots==i)
+         errror.all.mat<-abs(output[[i]]$error)#%*%a.mean
+  #error.all.mat<-rowSums(abs(output[[i]]$error))
+  error.mat[count,]<-output[[i]]$error[,1]
+  rmse.mat[count,]<-output[[i]]$pred.rmse[,"EBMA"]
+  mae.mat[count,]<-output[[i]]$pred.mae[,"EBMA"]
+         mad.mat[count,]<-output[[i]]$pred.mad[,"EBMA"]
+         rmsle.mat[count,] <- output[[i]]$pred.rmsle[,"EBMA"]
+         mape.mat[count,] <- output[[i]]$pred.mape[,"EBMA"]
+         meape.mat[count,] <- output[[i]]$pred.meape[,"EBMA"]
+         mrae.mat[count,] <- output[[i]]$pred.mrae[,"EBMA"]
+         pw.mat[count,] <- output[[i]]$pred.pw[,"EBMA"]
+         crps.mat[count,] <- output[[i]]$model.crps
+ }
+ 
+ if(func=="med"){
+  error.all<-apply(abs(error.mat),1,FUN=median,na.rm=TRUE)
+  error<-(apply(error.mat,1,FUN=median, na.rm=TRUE))
+  rmse<-abs(apply(rmse.mat,1,FUN=median, na.rm=TRUE))
+  mae<-abs(apply(mae.mat,1,FUN=median, na.rm=TRUE))
+        mad<-abs(apply(mad.mat,1,FUN=median, na.rm=TRUE))
+         rmsle<-abs(apply(rmsle.mat,1,FUN=median, na.rm=TRUE))
+         mape<-abs(apply(mape.mat,1,FUN=median, na.rm=TRUE))
+         meape<-abs(apply(meape.mat,1,FUN=median, na.rm=TRUE))
+         mrae<-abs(apply(mrae.mat,1,FUN=median, na.rm=TRUE))
+         pw<-abs(apply(pw.mat,1,FUN=median, na.rm=TRUE))
+         crps<-abs(apply(crps.mat,1,FUN=median, na.rm=TRUE))
+       }
+ 
+ if(func=="mea"){
+  error.all<-apply(abs(error.mat),1,FUN=mean,na.rm=TRUE)
+  error<-(apply(error.mat,1,FUN=mean, na.rm=TRUE))
+  rmse<-abs(apply(rmse.mat,1,FUN=mean, na.rm=TRUE))
+  mae<-abs(apply(mae.mat,1,FUN=mean, na.rm=TRUE))
+        mad<-abs(apply(mad.mat,1,FUN=mean, na.rm=TRUE))
+         rmsle<-abs(apply(rmsle.mat,1,FUN=mean, na.rm=TRUE))
+         mape<-abs(apply(mape.mat,1,FUN=mean, na.rm=TRUE))
+         meape<-abs(apply(meape.mat,1,FUN=mean, na.rm=TRUE))
+         mrae<-abs(apply(mrae.mat,1,FUN=mean, na.rm=TRUE))
+         pw<-abs(apply(pw.mat,1,FUN=mean, na.rm=TRUE))
+         crps<-abs(apply(crps.mat,1,FUN=mean, na.rm=TRUE))
+       }
+ 
+ x.axis <- x.axis+my.adj
+ x.axis.new <- matrix(x.axis, nrow=length(slots), ncol=100, byrow=FALSE)
+ 
+ if(!my.line){
+ plot(x.axis, crps, ylab="CRPS", xlab="C", main="CRPS by C", col=my.col, ylim=c(4, 20))
+ }
+ if(my.line){
+ points(x.axis, crps, ylim=c(3, 12), ylab="CRPS", xlab="K", main=paste("N_=", value2), col=my.col)
+ }
+ lines(loess(c(crps)~c(x.axis-my.adj), span=2), col=my.col2) 
+ 
+ #par(mfrow=c(3,3))
+ #plot(c,error.all,pch=15,main="Weighted Weight Error (all)")
+ #lines(loess(error.all~c))
+ #plot(c,error,pch=15,main="Weight Error (largest weight model)")
+ #abline(h=0)
+ 
+ #plot(c,crps,pch=15,main="CRPS")
+ #lines(loess(crps~c))
+ #plot(c,mae,pch=15,main="MAE")
+ #lines(loess(mae~c))
+ #plot(c,rmse,pch=15,main="RMSE")
+ #lines(loess(rmse~c))
+ #plot(c,mape,pch=15,main="MAPE")
+ #lines(loess(mape~c))
+ #plot(c,meape,pch=15,main="MEAPE")
+ #lines(loess(meape~c))
+ #plot(c,mrae,pch=15,main="MRAE")
+ #lines(loess(mrae~c))
+ #plot(c,pw,pch=15,main="PW")
+ #lines(loess(pw~c))
+ 
+ 
+ 
+ }
> 
> 
> 
> par(mfrow=c(1,1), mar=c(3,2,2,1), mgp=c(1,0,0), tcl=.001)
> plot.fn(pos1=1, value1=3, pos2=2, value2=15, pos3=5, func="med", my.col="gray90")
[1] 127
[1] 274
[1] 421
[1] 568
[1] 715
[1] 862
[1] 1009
[1] 1156
[1] 1303
[1] 1450
[1] 1597
[1] 1744
[1] 1891
> plot.fn(pos1=1, value1=5, pos2=2, value2=9, pos3=5, func="med", my.col="gray90", my.adj=.01,my.line=TRUE, my.col2="blue")
[1] 66
[1] 213
[1] 360
[1] 507
[1] 654
[1] 801
[1] 948
[1] 1095
[1] 1242
[1] 1389
[1] 1536
[1] 1683
[1] 1830
> plot.fn(pos1=1, value1=35, pos2=2, value2=5, pos3=5, func="med", my.col="gray90", my.adj=-.01,my.line=TRUE, my.col2="red")
[1] 37
[1] 184
[1] 331
[1] 478
[1] 625
[1] 772
[1] 919
[1] 1066
[1] 1213
[1] 1360
[1] 1507
[1] 1654
[1] 1801
> 
> #plot.fn(pos1=5, value1=0, pos2=1, value2=100, pos3=2, func="med", my.col="pink", my.line=TRUE, my.col2="red", my.adj=.5)
> #legend(16, 10, c("N_T=5", "N_T=11","N_T=100"), col=c("black", "red", "blue"), lty=c(1,1,1), cex=.7) 
> #plot.fn(pos1=5, value1=0, pos2=2, value2=9, pos3=1)
> #plot.fn(pos1=5, value1=0, pos2=2, value2=15, pos3=1)
> 
> 
> #nTrain<-c(3:15,20,25,35,45,55,65,85,100)
> #nmod<-seq(3,15, by=2)
> #constant<-c(0,.01, 0.02,.025, 0.03, 0.04, .05, 0.075, 0.1, 0.15, 0.2, 0.3, .5)
> #iter<-100
> #outSample<-250
> 
> legend(16, 10, c("N_T=3, K=15", "N_T=5, K=9","N_T=35, K=5"), col=c("black", "red", "blue"), lty=c(1,1,1), cex=.7)
> legend(.25, 10, c("N_T=3, K=15", "N_T=5, K=9","N_T=35, K=5"), col=c("black", "red", "blue"), lty=c(1,1,1), cex=.7)
> legend(.25, 15, c("N_T=3, K=15", "N_T=5, K=9","N_T=35, K=5"), col=c("black", "red", "blue"), lty=c(1,1,1), cex=.7)
> rm(list=ls(all=TRUE))
> 
> #setwd("~/Documents/GitHub/EBMAforecast/APSA_2012/Simulations")
> setwd("~/Github/EBMAforecast/APSA_2012/Simulations")
> 
> load("SecondRound")
> #objects()
> 
> #summary(output)
> 
> 
> ##### here is the function that plots seven points with a lowes line for each statistic
> plot.fn<-function(pos1=1, value1=5, pos2=2,value2=5,pos3=5,func="med", my.col="gray90", my.line=FALSE, my.adj=0, my.col2="black"){
+ 
+ 
+ #pos1=5; value1=0; pos2=2; value2=5; pos3=2
+ 
+ # alpha<-c(10,5,3)
+ #  if (models>3){alpha<-c(alpha, rep(1, models-3))}
+ # a.mean <- alpha/sum(alpha) # ?
+   
+ 
+ slots<-NA
+ count<-0
+ for(i in 1:1911){
+  if(output[[i]]$theseParams[pos1]==value1 & output[[i]]$theseParams[pos2]==value2){
+  count<-count+1
+  slots[count]<-i} 
+  }
+ error.mat<-mae.mat<-rmse.mat<-mad.mat<-rmsle.mat <- mape.mat <- meape.mat <- mrae.mat <- pw.mat <- crps.mat <- matrix(NA,nrow=length(slots),ncol=100)
+ 
+ x.axis <- rep(NA, length(slots))
+ count <- 1
+ for(i in slots){
+   print(i)
+   x.axis[count] <- output[[i]]$theseParams[pos3]
+   count <- count+1
+ }
+ 
+ for(i in slots){
+  count<-which(slots==i)
+         errror.all.mat<-abs(output[[i]]$error)#%*%a.mean
+  #error.all.mat<-rowSums(abs(output[[i]]$error))
+  error.mat[count,]<-output[[i]]$error[,1]
+  rmse.mat[count,]<-output[[i]]$pred.rmse[,"EBMA"]
+  mae.mat[count,]<-output[[i]]$pred.mae[,"EBMA"]
+         mad.mat[count,]<-output[[i]]$pred.mad[,"EBMA"]
+         rmsle.mat[count,] <- output[[i]]$pred.rmsle[,"EBMA"]
+         mape.mat[count,] <- output[[i]]$pred.mape[,"EBMA"]
+         meape.mat[count,] <- output[[i]]$pred.meape[,"EBMA"]
+         mrae.mat[count,] <- output[[i]]$pred.mrae[,"EBMA"]
+         pw.mat[count,] <- output[[i]]$pred.pw[,"EBMA"]
+         crps.mat[count,] <- output[[i]]$model.crps
+ }
+ 
+ if(func=="med"){
+  error.all<-apply(abs(error.mat),1,FUN=median,na.rm=TRUE)
+  error<-(apply(error.mat,1,FUN=median, na.rm=TRUE))
+  rmse<-abs(apply(rmse.mat,1,FUN=median, na.rm=TRUE))
+  mae<-abs(apply(mae.mat,1,FUN=median, na.rm=TRUE))
+        mad<-abs(apply(mad.mat,1,FUN=median, na.rm=TRUE))
+         rmsle<-abs(apply(rmsle.mat,1,FUN=median, na.rm=TRUE))
+         mape<-abs(apply(mape.mat,1,FUN=median, na.rm=TRUE))
+         meape<-abs(apply(meape.mat,1,FUN=median, na.rm=TRUE))
+         mrae<-abs(apply(mrae.mat,1,FUN=median, na.rm=TRUE))
+         pw<-abs(apply(pw.mat,1,FUN=median, na.rm=TRUE))
+         crps<-abs(apply(crps.mat,1,FUN=median, na.rm=TRUE))
+       }
+ 
+ if(func=="mea"){
+  error.all<-apply(abs(error.mat),1,FUN=mean,na.rm=TRUE)
+  error<-(apply(error.mat,1,FUN=mean, na.rm=TRUE))
+  rmse<-abs(apply(rmse.mat,1,FUN=mean, na.rm=TRUE))
+  mae<-abs(apply(mae.mat,1,FUN=mean, na.rm=TRUE))
+        mad<-abs(apply(mad.mat,1,FUN=mean, na.rm=TRUE))
+         rmsle<-abs(apply(rmsle.mat,1,FUN=mean, na.rm=TRUE))
+         mape<-abs(apply(mape.mat,1,FUN=mean, na.rm=TRUE))
+         meape<-abs(apply(meape.mat,1,FUN=mean, na.rm=TRUE))
+         mrae<-abs(apply(mrae.mat,1,FUN=mean, na.rm=TRUE))
+         pw<-abs(apply(pw.mat,1,FUN=mean, na.rm=TRUE))
+         crps<-abs(apply(crps.mat,1,FUN=mean, na.rm=TRUE))
+       }
+ 
+ x.axis <- x.axis+my.adj
+ x.axis.new <- matrix(x.axis, nrow=length(slots), ncol=100, byrow=FALSE)
+ 
+ if(!my.line){
+ plot(x.axis, crps, ylab="CRPS", xlab="C", main="CRPS by C", col=my.col, ylim=c(5, 12))
+ }
+ if(my.line){
+ points(x.axis, crps, ylim=c(3, 12), ylab="CRPS", xlab="K", main=paste("N_=", value2), col=my.col)
+ }
+ lines(loess(c(crps)~c(x.axis-my.adj), span=2), col=my.col2) # why the hell isn't this working right?
+ 
+ #par(mfrow=c(3,3))
+ #plot(c,error.all,pch=15,main="Weighted Weight Error (all)")
+ #lines(loess(error.all~c))
+ #plot(c,error,pch=15,main="Weight Error (largest weight model)")
+ #abline(h=0)
+ 
+ #plot(c,crps,pch=15,main="CRPS")
+ #lines(loess(crps~c))
+ #plot(c,mae,pch=15,main="MAE")
+ #lines(loess(mae~c))
+ #plot(c,rmse,pch=15,main="RMSE")
+ #lines(loess(rmse~c))
+ #plot(c,mape,pch=15,main="MAPE")
+ #lines(loess(mape~c))
+ #plot(c,meape,pch=15,main="MEAPE")
+ #lines(loess(meape~c))
+ #plot(c,mrae,pch=15,main="MRAE")
+ #lines(loess(mrae~c))
+ #plot(c,pw,pch=15,main="PW")
+ #lines(loess(pw~c))
+ 
+ 
+ 
+ }
> 
> 
> 
> par(mfrow=c(1,1), mar=c(3,2,2,1), mgp=c(1,0,0), tcl=.001)
> plot.fn(pos1=1, value1=3, pos2=2, value2=15, pos3=5, func="med", my.col="gray70")
[1] 127
[1] 274
[1] 421
[1] 568
[1] 715
[1] 862
[1] 1009
[1] 1156
[1] 1303
[1] 1450
[1] 1597
[1] 1744
[1] 1891
> plot.fn(pos1=1, value1=5, pos2=2, value2=9, pos3=5, func="med", my.col="skyblue", my.adj=0,my.line=TRUE, my.col2="blue")
[1] 66
[1] 213
[1] 360
[1] 507
[1] 654
[1] 801
[1] 948
[1] 1095
[1] 1242
[1] 1389
[1] 1536
[1] 1683
[1] 1830
> plot.fn(pos1=1, value1=35, pos2=2, value2=5, pos3=5, func="med", my.col="pink", my.adj=0,my.line=TRUE, my.col2="red")
[1] 37
[1] 184
[1] 331
[1] 478
[1] 625
[1] 772
[1] 919
[1] 1066
[1] 1213
[1] 1360
[1] 1507
[1] 1654
[1] 1801
> legend(.25, 12, c("N_T=3, K=15", "N_T=5, K=9","N_T=35, K=5"), col=c("black", "red", "blue"), lty=c(1,1,1), cex=.7)
> 
> #plot.fn(pos1=5, value1=0, pos2=1, value2=100, pos3=2, func="med", my.col="pink", my.line=TRUE, my.col2="red", my.adj=.5)
> 
> #plot.fn(pos1=5, value1=0, pos2=2, value2=9, pos3=1)
> #plot.fn(pos1=5, value1=0, pos2=2, value2=15, pos3=1)
> 
> 
> #nTrain<-c(3:15,20,25,35,45,55,65,85,100)
> #nmod<-seq(3,15, by=2)
> #constant<-c(0,.01, 0.02,.025, 0.03, 0.04, .05, 0.075, 0.1, 0.15, 0.2, 0.3, .5)
> #iter<-100
> #outSample<-250
> 
> rm(list=ls(all=TRUE))
> 
> #setwd("~/Documents/GitHub/EBMAforecast/APSA_2012/Simulations")
> setwd("~/Github/EBMAforecast/APSA_2012/Simulations")
> 
> load("SecondRound")
> #objects()
> 
> #summary(output)
> 
> 
> ##### here is the function that plots seven points with a lowes line for each statistic
> plot.fn<-function(pos1=1, value1=5, pos2=2,value2=5,pos3=5,func="med", my.col="gray90", my.line=FALSE, my.adj=0, my.col2="black"){
+ 
+ 
+ #pos1=5; value1=0; pos2=2; value2=5; pos3=2
+ 
+ # alpha<-c(10,5,3)
+ #  if (models>3){alpha<-c(alpha, rep(1, models-3))}
+ # a.mean <- alpha/sum(alpha) # ?
+   
+ 
+ slots<-NA
+ count<-0
+ for(i in 1:1911){
+  if(output[[i]]$theseParams[pos1]==value1 & output[[i]]$theseParams[pos2]==value2){
+  count<-count+1
+  slots[count]<-i} 
+  }
+ error.mat<-mae.mat<-rmse.mat<-mad.mat<-rmsle.mat <- mape.mat <- meape.mat <- mrae.mat <- pw.mat <- crps.mat <- matrix(NA,nrow=length(slots),ncol=100)
+ 
+ x.axis <- rep(NA, length(slots))
+ count <- 1
+ for(i in slots){
+   print(i)
+   x.axis[count] <- output[[i]]$theseParams[pos3]
+   count <- count+1
+ }
+ 
+ for(i in slots){
+  count<-which(slots==i)
+         errror.all.mat<-abs(output[[i]]$error)#%*%a.mean
+  #error.all.mat<-rowSums(abs(output[[i]]$error))
+  error.mat[count,]<-output[[i]]$error[,1]
+  rmse.mat[count,]<-output[[i]]$pred.rmse[,"EBMA"]
+  mae.mat[count,]<-output[[i]]$pred.mae[,"EBMA"]
+         mad.mat[count,]<-output[[i]]$pred.mad[,"EBMA"]
+         rmsle.mat[count,] <- output[[i]]$pred.rmsle[,"EBMA"]
+         mape.mat[count,] <- output[[i]]$pred.mape[,"EBMA"]
+         meape.mat[count,] <- output[[i]]$pred.meape[,"EBMA"]
+         mrae.mat[count,] <- output[[i]]$pred.mrae[,"EBMA"]
+         pw.mat[count,] <- output[[i]]$pred.pw[,"EBMA"]
+         crps.mat[count,] <- output[[i]]$model.crps
+ }
+ 
+ if(func=="med"){
+  error.all<-apply(abs(error.mat),1,FUN=median,na.rm=TRUE)
+  error<-(apply(error.mat,1,FUN=median, na.rm=TRUE))
+  rmse<-abs(apply(rmse.mat,1,FUN=median, na.rm=TRUE))
+  mae<-abs(apply(mae.mat,1,FUN=median, na.rm=TRUE))
+        mad<-abs(apply(mad.mat,1,FUN=median, na.rm=TRUE))
+         rmsle<-abs(apply(rmsle.mat,1,FUN=median, na.rm=TRUE))
+         mape<-abs(apply(mape.mat,1,FUN=median, na.rm=TRUE))
+         meape<-abs(apply(meape.mat,1,FUN=median, na.rm=TRUE))
+         mrae<-abs(apply(mrae.mat,1,FUN=median, na.rm=TRUE))
+         pw<-abs(apply(pw.mat,1,FUN=median, na.rm=TRUE))
+         crps<-abs(apply(crps.mat,1,FUN=median, na.rm=TRUE))
+       }
+ 
+ if(func=="mea"){
+  error.all<-apply(abs(error.mat),1,FUN=mean,na.rm=TRUE)
+  error<-(apply(error.mat,1,FUN=mean, na.rm=TRUE))
+  rmse<-abs(apply(rmse.mat,1,FUN=mean, na.rm=TRUE))
+  mae<-abs(apply(mae.mat,1,FUN=mean, na.rm=TRUE))
+        mad<-abs(apply(mad.mat,1,FUN=mean, na.rm=TRUE))
+         rmsle<-abs(apply(rmsle.mat,1,FUN=mean, na.rm=TRUE))
+         mape<-abs(apply(mape.mat,1,FUN=mean, na.rm=TRUE))
+         meape<-abs(apply(meape.mat,1,FUN=mean, na.rm=TRUE))
+         mrae<-abs(apply(mrae.mat,1,FUN=mean, na.rm=TRUE))
+         pw<-abs(apply(pw.mat,1,FUN=mean, na.rm=TRUE))
+         crps<-abs(apply(crps.mat,1,FUN=mean, na.rm=TRUE))
+       }
+ 
+ x.axis <- x.axis+my.adj
+ x.axis.new <- matrix(x.axis, nrow=length(slots), ncol=100, byrow=FALSE)
+ 
+ if(!my.line){
+ plot(x.axis, crps, ylab="Median CRPS", xlab="C", main="Median CRPS by C", col=my.col, ylim=c(5, 12))
+ }
+ if(my.line){
+ points(x.axis, crps, ylim=c(3, 12), ylab="CRPS", xlab="K", main=paste("N_=", value2), col=my.col)
+ }
+ lines(loess(c(crps)~c(x.axis-my.adj), span=2), col=my.col2) # why the hell isn't this working right?
+ 
+ #par(mfrow=c(3,3))
+ #plot(c,error.all,pch=15,main="Weighted Weight Error (all)")
+ #lines(loess(error.all~c))
+ #plot(c,error,pch=15,main="Weight Error (largest weight model)")
+ #abline(h=0)
+ 
+ #plot(c,crps,pch=15,main="CRPS")
+ #lines(loess(crps~c))
+ #plot(c,mae,pch=15,main="MAE")
+ #lines(loess(mae~c))
+ #plot(c,rmse,pch=15,main="RMSE")
+ #lines(loess(rmse~c))
+ #plot(c,mape,pch=15,main="MAPE")
+ #lines(loess(mape~c))
+ #plot(c,meape,pch=15,main="MEAPE")
+ #lines(loess(meape~c))
+ #plot(c,mrae,pch=15,main="MRAE")
+ #lines(loess(mrae~c))
+ #plot(c,pw,pch=15,main="PW")
+ #lines(loess(pw~c))
+ 
+ 
+ 
+ }
> 
> 
> 
> par(mfrow=c(1,1), mar=c(3,2,2,1), mgp=c(1,0,0), tcl=.001)
> plot.fn(pos1=1, value1=3, pos2=2, value2=15, pos3=5, func="med", my.col="gray70")
[1] 127
[1] 274
[1] 421
[1] 568
[1] 715
[1] 862
[1] 1009
[1] 1156
[1] 1303
[1] 1450
[1] 1597
[1] 1744
[1] 1891
> plot.fn(pos1=1, value1=5, pos2=2, value2=9, pos3=5, func="med", my.col="skyblue", my.adj=0,my.line=TRUE, my.col2="blue")
[1] 66
[1] 213
[1] 360
[1] 507
[1] 654
[1] 801
[1] 948
[1] 1095
[1] 1242
[1] 1389
[1] 1536
[1] 1683
[1] 1830
> plot.fn(pos1=1, value1=35, pos2=2, value2=5, pos3=5, func="med", my.col="pink", my.adj=0,my.line=TRUE, my.col2="red")
[1] 37
[1] 184
[1] 331
[1] 478
[1] 625
[1] 772
[1] 919
[1] 1066
[1] 1213
[1] 1360
[1] 1507
[1] 1654
[1] 1801
> legend(.25, 12, c("N_T=3, K=15", "N_T=5, K=9","N_T=35, K=5"), col=c("black", "red", "blue"), lty=c(1,1,1), cex=.7)
> 
> #plot.fn(pos1=5, value1=0, pos2=1, value2=100, pos3=2, func="med", my.col="pink", my.line=TRUE, my.col2="red", my.adj=.5)
> 
> #plot.fn(pos1=5, value1=0, pos2=2, value2=9, pos3=1)
> #plot.fn(pos1=5, value1=0, pos2=2, value2=15, pos3=1)
> 
> 
> #nTrain<-c(3:15,20,25,35,45,55,65,85,100)
> #nmod<-seq(3,15, by=2)
> #constant<-c(0,.01, 0.02,.025, 0.03, 0.04, .05, 0.075, 0.1, 0.15, 0.2, 0.3, .5)
> #iter<-100
> #outSample<-250
> 
> 