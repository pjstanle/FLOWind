include("turbines.jl")

abstract type AbstractWakeModel end

struct Jensen <: AbstractWakeModel
    alpha
end

struct Multizone <: AbstractWakeModel
    me
    we
    aU
    bU
    mU
end

struct Gauss <: AbstractWakeModel
    ka
    kb
    alpha
    beta
    ad
    bd
end

function jensen_model(loc, model::Jensen, turbine::Turbine)
    dx = loc[1]-turbine.coord.x
    dy = loc[2]-turbine.coord.y
    dz = loc[3]-turbine.coord.z
end


function loss(x_locations, y_locations, z_locations, turbine::Turbine,
              deflection_field, flow_field, model::Multizone)
    #return the losses from the multizone FLORIS wake model
end

function loss(x_locations, y_locations, z_locations, turbine::Turbine,
              deflection_field, flow_field, model::Gauss)
    #return the losses using the Bastankhah Gaussian wake model
end
