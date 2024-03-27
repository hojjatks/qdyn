module add_noise
! This is the only module that should be changed in order to change the type of the noise.
! assumptions in the noise:

!-------- To remove in future versions:
! what do I need from other files.
! I need the location of the elements (x,y,z)
! I need the dimensionality of the problem
! I need to access to the states of the system (V,theta)
! I need the time step
! I need to use specific covariance function

!-------- To remove in future versions:
! 
!-------- To remove in future versions:
! What to do?
! 0- keep cool and do anything step by step!
! 1- import anything that you think might be needed
! 2- I need to think about to which function should I add_noise? solver.f90 or derivis_all.f90

! ------- To do, remove in future versions
! Based on what I understood, the time step is adjusted inside the derivis_rk45 function. This function is used inside the solver module
! when they call rkf45_d:
!    call rkf45_d( derivs_rk45, neqs, yt, pb%time, pb%tmax, &
!                  pb%acc, 0d0, pb%rk45%iflag, pb%rk45%work, pb%rk45%iwork) they update the current time step 
! when they call this line, they update pb%time. Then they say:
! pb%dt_did=pb%time-pb%t_prev
! So you have access dt inside the solver module

end module add_noise