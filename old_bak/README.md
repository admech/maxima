# Omni-wheel Vehicle

The work is being done using wxMaxima -- many thanks to creators and supporters.

## Files:

This is the dependency tree in order of importing (order does matter!). If a node is a directory, then children are contents, not dependencies.

* `8_solving_old_and_new.wxm` -- main file so far, the comparison of three-wheeled symmetric vehicle for roller-bearing and no-roller cases is done here.
  * `helper.mac` -- utility functions.
  * `3_sol` -- helpers for numerical solving and graphs:
    * `2_num_int.wxm` -- numerical solving,
    * `3_plot.wxm` -- graphs for the roller-bearing case,
    * `3_plot_old.wxm` -- graphs for the no-rollers case.
  * `11_solve_batch.wxm` -- numerical solving separating the whole time period into parts so that a failure did not render all the previous time useless (for computationally intensive cases).
  * `8_new_sol` -- output directory:
    * `.lisp` - values for importing to Maxima,
    * `.svg,*.eps` - figures
    * name coding:
      * `(_old)?_sol__(nu1_0)_(nu2_0)_(nu3_0)__(t0)__(t1)__(step)(_value)?(.eps|.lisp)`
      * examples: `_old_sol__0_0_1__0__10__1e2_kin_en.eps` -- graph of kinetic energy for no-roller case (`_old`), initial conditions: `nu = (0, 0, 1)`, `t0 = 0`, `t1 = 10`, step for 4th order Runge-Kutta -- `0.01`; `_old_sol__0_0_1__0__10__1e2.lisp` -- whole solution for these parameters.

  * `6_eqs_struct_no_rollers.wxm` -- obtains equations of motion for the no-roller case using only `helper.mac` and the explicit form of `M` and `V` - kinetic energy and constraints' matrices.
  * `5_eqs_struct.wxm` -- same for the roller-bearing case. Order of imports seems to matter here.
* Other:
  * `1_kin_en.wxm` -- obtaining the formula for kinetic energy.
    * `omni_vect.mac` -- some utils for vectors.
  * `2_eqs.wxm` -- obtaining the equations of motion the same way it was done on paper (using three-index symbols).
  * `7_eqs_struct_diff.wxm` -- comparison of the "old" and "new" equations in a human-readable form (uses 5 and 6).
  * `README.md` -- this document
* All the stuff that appears to be non-critical: `0_0_foundation.wxmz`
`0_omni.wxm`
`10_yet_another_params_calc.wxm`
`4_exp`
`8_0_foundation.wxm`
`9_exp_compare`
`9_solving.wxm`
`omni.wxmx`
`sandbox.wxmx`
`tmp.wxm`
