#  Copyright 2017, V.Leclere, H.Gerard, F.Pacaud, T.Rigaut
#  This Source Code Form is subject to the terms of the Mozilla Public
#  License, v. 2.0. If a copy of the MPL was not distributed with this
#  file, You can obtain one at http://mozilla.org/MPL/2.0/.
#############################################################################
# SDDP is an implementation of the Stochastic Dual Dynamic Programming
# algorithm for multi-stage stochastic convex optimization problem
#############################################################################

__precompile__()

module StochDynamicProgramming

using MathProgBase, JuMP, Distributions, StochasticDualDynamicProgramming
using DocStringExtensions
using CutPruners

export solve_SDDP,
        NoiseLaw, simulate_scenarios,
        SDDPparameters, StochDynModel, set_state_bounds,
        extensive_formulation,
        PolyhedralFunction, forward_simulations,
        StochDynProgModel, SDPparameters, solve_dp,
        sampling, get_control, get_bellman_value,
        benchmark_parameters, SDDPInterface

include("bellmansolvers.jl")
include("noises.jl")
include("objects.jl")
include("params.jl")
include("regularization.jl")
include("interface.jl")
include("utils.jl")
include("oneStepOneAleaProblem.jl")
include("forwardBackwardIterations.jl")
include("SDDPoptimize.jl")
include("extensiveFormulation.jl")
include("sdp.jl")
include("compare.jl")
include("cutpruning.jl")
include("stoppingtest.jl")
end
