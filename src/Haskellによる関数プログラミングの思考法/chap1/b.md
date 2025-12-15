(sin theta)^2 とsin (theta ^ 2)

おそらく sin :: Real -> Real 
(^) :: (Num a, Integral b) => a -> b -> a

なので、 sin^2 thetaは 
(sin) ^ 2 theta
((sin) ^ 2) theta
(^ (sin) 2) theta 
ここで、 aはNumの制約があるが、 Real -> Realなので、型エラー

sin theta^2 

sin (theta ^ 2)

ここで、 thetaはRealと仮定、2はRealなので、
sin (some real value)

よって、これは型は通る

(sin theta) ^ 2

(some real value) ^ 2 

(some real value)