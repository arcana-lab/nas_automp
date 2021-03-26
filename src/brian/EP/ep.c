/*--------------------------------------------------------------------

  NAS Parallel Benchmarks 3.0 structured OpenMP C versions - EP

  This benchmark is an OpenMP C version of the NPB EP code.

  The OpenMP C 2.3 versions are derived by RWCP from the serial Fortran versions 
  in "NPB 2.3-serial" developed by NAS. 3.0 translation is performed by the UVSQ.

  Permission to use, copy, distribute and modify this software for any
  purpose with or without fee is hereby granted.
  This software is provided "as is" without express or implied warranty.

  Information on OpenMP activities at RWCP is available at:

http://pdplab.trc.rwcp.or.jp/pdperf/Omni/

Information on NAS Parallel Benchmarks 2.3 is available at:

http://www.nas.nasa.gov/NAS/NPB/

--------------------------------------------------------------------*/
/*--------------------------------------------------------------------

Author: P. O. Frederickson 
D. H. Bailey
A. C. Woo

OpenMP C version: S. Satoh

3.0 structure translation: M. Popov  

--------------------------------------------------------------------*/

#include "npb-C.h"
#include "npbparams.h"

/*****************************************************************/
/******     C  _  P  R  I  N  T  _  R  E  S  U  L  T  S     ******/
/*****************************************************************/
#include <stdlib.h>
#include <stdio.h>

void c_print_results( char   *name,
    char   class,
    int    n1,
    int    n2,
    int    n3,
    int    niter,
    int    nthreads,
    double t,
    double mops,
    char   *optype,
    int    passed_verification,
    char   *npbversion,
    char   *compiletime,
    char   *cc,
    char   *clink,
    char   *c_lib,
    char   *c_inc,
    char   *cflags,
    char   *clinkflags,
    char   *rand)
{
  char *evalue="1000";

  printf( "\n\n %s Benchmark Completed\n", name );

  printf( " Class           =                        %c\n", class );

  if( n2 == 0 && n3 == 0 )
    printf( " Size            =             %12d\n", n1 );   /* as in IS */
  else
    printf( " Size            =              %3dx%3dx%3d\n", n1,n2,n3 );

  printf( " Iterations      =             %12d\n", niter );

  printf( " Threads         =             %12d\n", nthreads );

  printf( " Time in seconds =             %12.2f\n", t );

  printf( " Mop/s total     =             %12.2f\n", mops );

  printf( " Operation type  = %24s\n", optype);

  if( passed_verification )
    printf( " Verification    =               SUCCESSFUL\n" );
  else
    printf( " Verification    =             UNSUCCESSFUL\n" );
  printf( " Version         =           %12s\n", npbversion );

  printf( " Compile date    =             %12s\n", compiletime );

  printf( "\n Compile options:\n" );

  printf( "    CC           = %s\n", cc );

  printf( "    CLINK        = %s\n", clink );

  printf( "    C_LIB        = %s\n", c_lib );

  printf( "    C_INC        = %s\n", c_inc );

  printf( "    CFLAGS       = %s\n", cflags );

  printf( "    CLINKFLAGS   = %s\n", clinkflags );

  printf( "    RAND         = %s\n", rand );
#ifdef SMP
  evalue = getenv("MP_SET_NUMTHREADS");
  printf( "   MULTICPUS = %s\n", evalue );
#endif

  /*    printf( "\n\n" );
        printf( " Please send the results of this run to:\n\n" );
        printf( " NPB Development Team\n" );
        printf( " Internet: npb@nas.nasa.gov\n \n" );
        printf( " If email is not available, send this to:\n\n" );
        printf( " MS T27A-1\n" );
        printf( " NASA Ames Research Center\n" );
        printf( " Moffett Field, CA  94035-1000\n\n" );
        printf( " Fax: 415-604-3957\n\n" );*/
}

#if defined(USE_POW)
#define r23 pow(0.5, 23.0)
#define r46 (r23*r23)
#define t23 pow(2.0, 23.0)
#define t46 (t23*t23)
#else
#define r23 (0.5*0.5*0.5*0.5*0.5*0.5*0.5*0.5*0.5*0.5*0.5*0.5*0.5*0.5*0.5*0.5*0.5*0.5*0.5*0.5*0.5*0.5*0.5)
#define r46 (r23*r23)
#define t23 (2.0*2.0*2.0*2.0*2.0*2.0*2.0*2.0*2.0*2.0*2.0*2.0*2.0*2.0*2.0*2.0*2.0*2.0*2.0*2.0*2.0*2.0*2.0)
#define t46 (t23*t23)
#endif

/*c---------------------------------------------------------------------
  c---------------------------------------------------------------------*/

double randlc (double *x, double a) {

#pragma note noelle independent = 1
  {
    /*c---------------------------------------------------------------------
      c---------------------------------------------------------------------*/

    /*c---------------------------------------------------------------------
      c
      c   This routine returns a uniform pseudorandom double precision number in the
      c   range (0, 1) by using the linear congruential generator
      c
      c   x_{k+1} = a x_k  (mod 2^46)
      c
      c   where 0 < x_k < 2^46 and 0 < a < 2^46.  This scheme generates 2^44 numbers
      c   before repeating.  The argument A is the same as 'a' in the above formula,
      c   and X is the same as x_0.  A and X must be odd double precision integers
      c   in the range (1, 2^46).  The returned value RANDLC is normalized to be
      c   between 0 and 1, i.e. RANDLC = 2^(-46) * x_1.  X is updated to contain
      c   the new seed x_1, so that subsequent calls to RANDLC using the same
      c   arguments will generate a continuous sequence.
      c
      c   This routine should produce the same results on any computer with at least
      c   48 mantissa bits in double precision floating point data.  On 64 bit
      c   systems, double precision should be disabled.
      c
      c   David H. Bailey     October 26, 1990
      c
      c---------------------------------------------------------------------*/

    double t1,t2,t3,t4,a1,a2,x1,x2,z;

    /*c---------------------------------------------------------------------
      c   Break A into two parts such that A = 2^23 * A1 + A2.
      c---------------------------------------------------------------------*/
    t1 = r23 * a;
    a1 = (int)t1;
    a2 = a - t23 * a1;

    /*c---------------------------------------------------------------------
      c   Break X into two parts such that X = 2^23 * X1 + X2, compute
      c   Z = A1 * X2 + A2 * X1  (mod 2^23), and then
      c   X = 2^23 * Z + A2 * X2  (mod 2^46).
      c---------------------------------------------------------------------*/
    t1 = r23 * (*x);
    x1 = (int)t1;
    x2 = (*x) - t23 * x1;
    t1 = a1 * x2 + a2 * x1;
    t2 = (int)(r23 * t1);
    z = t1 - t23 * t2;
    t3 = t23 * z + a2 * x2;
    t4 = (int)(r46 * t3);
    (*x) = t3 - t46 * t4;

    return (r46 * (*x));
  }
}

/*c---------------------------------------------------------------------
  c---------------------------------------------------------------------*/

void vranlc (int n, double *x_seed, double a, double y[]) {
  /*c---------------------------------------------------------------------
    c---------------------------------------------------------------------*/

  /*c---------------------------------------------------------------------
    c
    c   This routine generates N uniform pseudorandom double precision numbers in
    c   the range (0, 1) by using the linear congruential generator
    c
    c   x_{k+1} = a x_k  (mod 2^46)
    c
    c   where 0 < x_k < 2^46 and 0 < a < 2^46.  This scheme generates 2^44 numbers
    c   before repeating.  The argument A is the same as 'a' in the above formula,
    c   and X is the same as x_0.  A and X must be odd double precision integers
    c   in the range (1, 2^46).  The N results are placed in Y and are normalized
    c   to be between 0 and 1.  X is updated to contain the new seed, so that
    c   subsequent calls to VRANLC using the same arguments will generate a
    c   continuous sequence.  If N is zero, only initialization is performed, and
    c   the variables X, A and Y are ignored.
    c
    c   This routine is the standard version designed for scalar or RISC systems.
    c   However, it should produce the same results on any single processor
    c   computer with at least 48 mantissa bits in double precision floating point
    c   data.  On 64 bit systems, double precision should be disabled.
    c
    c---------------------------------------------------------------------*/

  int i;
  double x,t1,t2,t3,t4,a1,a2,x1,x2,z;

  /*c---------------------------------------------------------------------
    c   Break A into two parts such that A = 2^23 * A1 + A2.
    c---------------------------------------------------------------------*/
  t1 = r23 * a;
  a1 = (int)t1;
  a2 = a - t23 * a1;
  x = *x_seed;

  /*c---------------------------------------------------------------------
    c   Generate N results.   This loop is not vectorizable.
    c---------------------------------------------------------------------*/
  for (i = 1; i <= n; i++) {

    /*c---------------------------------------------------------------------
      c   Break X into two parts such that X = 2^23 * X1 + X2, compute
      c   Z = A1 * X2 + A2 * X1  (mod 2^23), and then
      c   X = 2^23 * Z + A2 * X2  (mod 2^46).
      c---------------------------------------------------------------------*/
    t1 = r23 * x;
    x1 = (int)t1;
    x2 = x - t23 * x1;
    t1 = a1 * x2 + a2 * x1;
    t2 = (int)(r23 * t1);
    z = t1 - t23 * t2;
    t3 = t23 * z + a2 * x2;
    t4 = (int)(r46 * t3);
    x = t3 - t46 * t4;
    y[i] = r46 * x;
  }
  *x_seed = x;
}

#include "wtime.h"
#include <stdlib.h>

/*  Prototype  */
void wtime( double * );


/*****************************************************************/
/******         E  L  A  P  S  E  D  _  T  I  M  E          ******/
/*****************************************************************/
double elapsed_time( void )
{
  double t;

  wtime( &t );
  return( t );
}

double start[64], elapsed[64];

/*****************************************************************/
/******            T  I  M  E  R  _  C  L  E  A  R          ******/
/*****************************************************************/
void timer_clear( int n )
{
  elapsed[n] = 0.0;
}


/*****************************************************************/
/******            T  I  M  E  R  _  S  T  A  R  T          ******/
/*****************************************************************/
void timer_start( int n )
{
  start[n] = elapsed_time();
}


/*****************************************************************/
/******            T  I  M  E  R  _  S  T  O  P             ******/
/*****************************************************************/
void timer_stop( int n )
{
  double t, now;

  now = elapsed_time();
  t = now - start[n];
  elapsed[n] += t;

}


/*****************************************************************/
/******            T  I  M  E  R  _  R  E  A  D             ******/
/*****************************************************************/
double timer_read( int n )
{
  return( elapsed[n] );
}

#include "wtime.h"
#include <sys/time.h>

void wtime(double *t)
{
  static int sec = -1;
  struct timeval tv;
  gettimeofday(&tv, (void *)0);
  if (sec < 0) sec = tv.tv_sec;
  *t = (tv.tv_sec - sec) + 1.0e-6*tv.tv_usec;
}


/* parameters */
#define	MK		16
#define	MM		(M - MK)
#define	NN		(1 << MM)
#define	NK		(1 << MK)
#define	NQ		10
#define EPSILON		1.0e-8
#define	A		1220703125.0
#define	S		271828183.0
#define	TIMERS_ENABLED	FALSE

/* global variables */
/* common /storage/ */
static double x[2*NK];
#pragma omp threadprivate(x)
static double q[NQ];

/*--------------------------------------------------------------------
  program EMBAR
  c-------------------------------------------------------------------*/
/*
   c   This is the serial version of the APP Benchmark 1,
   c   the "embarassingly parallel" benchmark.
   c
   c   M is the Log_2 of the number of complex pairs of uniform (0, 1) random
   c   numbers.  MK is the Log_2 of the size of each batch of uniform random
   c   numbers.  MK can be set for convenience on a given system, since it does
   c   not affect the results.
   */
int main(int argc, char **argv) {

  double Mops, t1, t2, t3, t4, x1, x2, sx, sy, tm, an, tt, gc;
  double dum[3] = { 1.0, 1.0, 1.0 };
  int np, ierr, node, no_nodes, i, ik, kk, l, k, nit, ierrcode,
      no_large_nodes, np_add, k_offset, j;
  int nthreads = 1;
  boolean verified;
  char size[13+1];	/* character*13 */

  /*
     c   Because the size of the problem is too large to store in a 32-bit
     c   integer for some classes, we put it into a string (for printing).
     c   Have to strip off the decimal point put in there by the floating
     c   point print statement (internal file)
     */

  printf("\n\n NAS Parallel Benchmarks 3.0 structured OpenMP C version"
      " - EP Benchmark\n");
  sprintf(size, "%12.0f", pow(2.0, M+1));
  for (j = 13; j >= 1; j--) {
    if (size[j] == '.') size[j] = ' ';
  }
  printf(" Number of random numbers generated: %13s\n", size);

  verified = FALSE;

  /*
     c   Compute the number of "batches" of random number pairs generated 
     c   per processor. Adjust if the number of processors does not evenly 
     c   divide the total number
     */
  np = NN;

  /*
     c   Call the random number generator functions and initialize
     c   the x-array to reduce the effects of paging on the timings.
     c   Also, call all mathematical functions that are used. Make
     c   sure these initializations cannot be eliminated as dead code.
     */
  vranlc(0, &(dum[0]), dum[1], &(dum[2]));
  dum[0] = randlc(&(dum[1]), dum[2]);

#pragma omp parallel for default(shared) private(i)
#pragma note noelle independent = 1 selected = 1 label = 1
    for (i = 0; i < 2*NK; i++) x[i] = -1.0e99;

  Mops = log(sqrt(fabs(max(1.0, 1.0))));

  timer_clear(1);
  timer_clear(2);
  timer_clear(3);
  timer_start(1);

  vranlc(0, &t1, A, x);

  /*   Compute AN = A ^ (2 * NK) (mod 2^46). */

  t1 = A;

  for ( i = 1; i <= MK+1; i++) {
    t2 = randlc(&t1, t1);
  }

  an = t1;
  tt = S;
  gc = 0.0;
  sx = 0.0;
  sy = 0.0;

  for ( i = 0; i <= NQ - 1; i++) {
    q[i] = 0.0;
  }

  /*
     c   Each instance of this loop may be performed independently. We compute
     c   the k offsets separately to take into account the fact that some nodes
     c   have more numbers to generate than others
     */
  k_offset = -1;

#pragma omp parallel copyin(x)
#pragma note noelle independent = 1
  {
    //    double qq[NQ];		/* private copy of q[0:NQ-1] */
    double v0 = 0.0;
    double v1 = 0.0;
    double v2 = 0.0;
    double v3 = 0.0;
    double v4 = 0.0;
    double v5 = 0.0;
    double v6 = 0.0;
    double v7 = 0.0;
    double v8 = 0.0;
    double v9 = 0.0;
    /*    , v1, v2, v3, v4, v5, v6, v7, v8, v9;
          for (i = 0; i < NQ; i++) {
    //qq[i] = 0.0;
    switch (i) {
    case 0:
    v0 = 0.0;
    break;
    case 1:
    v1 = 0.0;
    break;
    case 2:
    v2 = 0.0;
    break;
    case 3:
    v3 = 0.0;
    break;
    case 4:
    v4 = 0.0;
    break;
    case 5:
    v5 = 0.0;
    break;
    case 6:
    v6 = 0.0;
    break;     
    case 7:
    v7 = 0.0;
    break;
    case 8:
    v8 = 0.0;
    break;     
    case 9:
    v9 = 0.0;
    break;    
    default:
    break;
    }
    }
    */
#pragma omp for reduction(+:sx,sy) schedule(static)  
#pragma note noelle selected = 1 label = 2
    for (k = 1; k <= np; k++) {

      // BRIAN: BELOW;
      double t1, t2, t3, t4, x1, x2;
      int kk, i, ik, l;
      double xBrian[2*NK];
      for (i = 0; i < 2*NK; i++) xBrian[i] = x[i]; //x[i] = -1.0e99;
      // BRIAN ABOVE

      kk = k_offset + k;
      t1 = S;
      t2 = an;

      /*      Find starting seed t1 for this kk. */

      for (i = 1; i <= 100; i++) {
        ik = kk / 2;
        if (2 * ik != kk)  t3 = randlc(&t1, t2);
        if (ik == 0) break;
        t3 = randlc(&t2, t2);
        kk = ik;
      }

      /*      Compute uniform pseudorandom numbers. */

      if (TIMERS_ENABLED == TRUE) timer_start(3);
      /// BRIAN BELOW VRANLC inline
      {
        int i;
        double xNew,t1New,t2,t3,t4,a1,a2,x1,x2,z;

        t1New = r23 * A;
        a1 = (int)t1New;
        a2 = A - t23 * a1; 
        xNew = t1;

        for (i = 0; i < 2*NK; i++) {

          t1New = r23 * xNew;
          x1 = (int)t1New;
          x2 = xNew - t23 * x1; 
          t1New = a1 * x2 + a2 * x1; 
          t2 = (int)(r23 * t1New);
          z = t1New - t23 * t2; 
          t3 = t23 * z + a2 * x2; 
          t4 = (int)(r46 * t3);
          xNew = t3 - t46 * t4; 
          xBrian[i] = r46 * xNew;
        }
        t1 = xNew;
      }
      //BRIAN  ABOVE VRANLC inline
//            vranlc(2*NK, &t1, A, x-1);
      if (TIMERS_ENABLED == TRUE) timer_stop(3);

      /*
         c       Compute Gaussian deviates by acceptance-rejection method and 
         c       tally counts in concentric square annuli.  This loop is not 
         c       vectorizable.
         */
      if (TIMERS_ENABLED == TRUE) timer_start(2);

      for ( i = 0; i < NK; i++) {
        x1 = 2.0 * xBrian[2*i] - 1.0;
        x2 = 2.0 * xBrian[2*i+1] - 1.0;
        t1 = pow2(x1) + pow2(x2);
        if (t1 <= 1.0) {
          t2 = sqrt(-2.0 * log(t1) / t1);
          t3 = (x1 * t2);				/* Xi */
          t4 = (x2 * t2);				/* Yi */
          l = max(fabs(t3), fabs(t4));

          double vv0 = 0.0;
          double vv1 = 0.0;
          double vv2 = 0.0;
          double vv3 = 0.0;
          double vv4 = 0.0;
          double vv5 = 0.0;
          double vv6 = 0.0;
          double vv7 = 0.0;
          double vv8 = 0.0;
          double vv9 = 0.0;
          switch (l) {
            case 0:
              vv0 += 1.0;
              break;
            case 1:
              vv1 += 1.0;
              break;
            case 2:
              vv2 += 1.0;
              break;
            case 3:
              vv3 += 1.0;
              break;
            case 4:
              vv4 += 1.0;
              break;
            case 5:
              vv5 += 1.0;
              break;
            case 6:
              vv6 += 1.0;
              break;     
            case 7:
              vv7 += 1.0;
              break;
            case 8:
              vv8 += 1.0;
              break;     
            case 9:
              vv9 += 1.0;
              break;    
            default:
              break;
          }

          v0 += vv0;
          v1 += vv1;
          v2 += vv2;
          v3 += vv3;
          v4 += vv4;
          v5 += vv5;
          v6 += vv6;
          v7 += vv7;
          v8 += vv8;
          v9 += vv9;

          //          qq[l] += 1.0;				/* counts */
          sx = sx + t3;				/* sum of Xi */
          sy = sy + t4;				/* sum of Yi */
        }
      }
      if (TIMERS_ENABLED == TRUE) timer_stop(2);
    }
#pragma omp critical
    {
      q[0] += v0;
      q[1] += v1;
      q[2] += v2;
      q[3] += v3;
      q[4] += v4;
      q[5] += v5;
      q[6] += v6;
      q[7] += v7;
      q[8] += v8;
      q[9] += v9;
      /*      for (i = 0; i <= NQ - 1; i++) {
              q[i] += qq[i];
              }*/
      /*      switch (i) {
              case 0:
              q[i] += v0;
              break;
              case 1:
              q[i] += v1;
              break; 
              case 2:
              q[i] += v2;
              break; 
              case 3:
              q[i] += v3; 
              break;
              case 4:
              q[i] += v4; 
              break; 
              case 5:
              q[i] += v5; 
              break; 
              case 6:
              q[i] += v6; 
              break;
              case 7:
              q[i] += v7; 
              break; 
              case 8:
              q[i] += v8; 
              break;  
              case 9:
              q[i] += v9; 
              break;
              default:
              break;
              }
              }*/
  }
#if defined(_OPENMP)
#pragma omp master
  nthreads = omp_get_num_threads();
#endif /* _OPENMP */    
} /* end of parallel region */    

for (i = 0; i <= NQ-1; i++) {
  gc = gc + q[i];
}

timer_stop(1);
tm = timer_read(1);

nit = 0;
if (M == 24) {
  if((fabs((sx- (-3.247834652034740e3))/sx) <= EPSILON) &&
      (fabs((sy- (-6.958407078382297e3))/sy) <= EPSILON)) {
    verified = TRUE;
  }
} else if (M == 25) {
  if ((fabs((sx- (-2.863319731645753e3))/sx) <= EPSILON) &&
      (fabs((sy- (-6.320053679109499e3))/sy) <= EPSILON)) {
    verified = TRUE;
  }
} else if (M == 28) {
  if ((fabs((sx- (-4.295875165629892e3))/sx) <= EPSILON) &&
      (fabs((sy- (-1.580732573678431e4))/sy) <= EPSILON)) {
    verified = TRUE;
  }
} else if (M == 30) {
  if ((fabs((sx- (4.033815542441498e4))/sx) <= EPSILON) &&
      (fabs((sy- (-2.660669192809235e4))/sy) <= EPSILON)) {
    verified = TRUE;
  }
} else if (M == 32) {
  if ((fabs((sx- (4.764367927995374e4))/sx) <= EPSILON) &&
      (fabs((sy- (-8.084072988043731e4))/sy) <= EPSILON)) {
    verified = TRUE;
  }
}

Mops = pow(2.0, M+1)/tm/1000000.0;

printf("EP Benchmark Results: \n"
    "CPU Time = %10.4f\n"
    "N = 2^%5d\n"
    "No. Gaussian Pairs = %15.0f\n"
    "Sums = %25.15e %25.15e\n"
    "Counts:\n",
    tm, M, gc, sx, sy);
for (i = 0; i  <= NQ-1; i++) {
  printf("%3d %15.0f\n", i, q[i]);
}

c_print_results("EP", CLASS, M+1, 0, 0, nit, nthreads,
    tm, Mops, 	
    "Random numbers generated",
    verified, NPBVERSION, COMPILETIME,
    CS1, CS2, CS3, CS4, CS5, CS6, CS7);

if (TIMERS_ENABLED == TRUE) {
  printf("Total time:     %f", timer_read(1));
  printf("Gaussian pairs: %f", timer_read(2));
  printf("Random numbers: %f", timer_read(3));
}
}
