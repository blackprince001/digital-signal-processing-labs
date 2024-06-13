function  [xx,tt] = mychirp( f1, f2, dur, fsamp )
  %MYCHIRP      generate a linear-FM chirp signal
  %
  %  usage:   xx = mychirp( f1, f2, dur, fsamp )
  %
  %   f1 = starting frequency
  %   f2 = ending frequency
  %   dur = total time duration
  %   fsamp = sampling frequency  (OPTIONAL: default is 11025)
  %
  %      xx = (vector of) samples of the chirp signal
  %      tt = vector of time instants for t=0 to t=dur
  %
  if nargin < 5
    tstart = 0;
  end

  tt = 0: 1/fsamp : dur;

  m = ( f1-f2 ) / ( 2*dur );

  psi = 2*pi*( m*tt.*tt + f1*tt ) + 100;

  xx = real( 7.7*exp( j*psi ) );

  soundsc( xx, fsamp );
end
