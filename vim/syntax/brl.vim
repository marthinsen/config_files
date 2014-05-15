" Vim syntax file
" Language:      Brilliant code files
" Maintainer:    Eirik Marthinsen
" Latest Change: Aprinl 15, 2014
" Version:       1.1

if exists("b:current_syntax")
  finish
endif

setlocal iskeyword+=#,$,%,@-@,- "(,)
syn case ignore

" Equation errors
syn match brlError "\([=!><]\)\@<!=\(=\)\@!"


" 
" Equaiton
" 
syn match	brlEquation	"=[^=]\+;" contains=brlMath

" 
" Keywords
"
syn keyword brlMath contained
  \ acos
  \ asin
  \ atan
  \ cos
  \ exp
  \ log
  \ log10
  \ max
  \ min
  \ PI
  \ pow
  \ sin
  \ sqrt
  \ tan

syn keyword brlCommand 
  \ #adiabatic
  \ #adjust_size
  \ #allow_phase_change
  \ #apply_pressure_gradient
  \ #artificial_viscosity
  \ #average
  \ #block 
  \ #brf2_input_file
  \ #capturefile
  \ #cartesian
  \ #check_area_error
  \ #check_interface_connections
  \ #continuity_limit
  \ #copy 
  \ #copy_global_coordinate
  \ #copy_global_point
  \ #copyincremental
  \ #courant_number
  \ #current_model_area
  \ #cv_connection_tolerance
  \ #crack_define
  \ #cylinder
  \ #cylinder_angle
  \ #cylinder_center
  \ #cylinder_periphery
  \ #cylinder_resolution
  \ #cylinder_squer_size
  \ #database_file
  \ #database_name
  \ #database_path
  \ #differencing_scheme
  \ #displacement
  \ #end_of_file
  \ #endcopy
  \ #endcopyincremental
  \ #expandinnerring
  \ #expandouterring
  \ #extern_grid
  \ #extract
  \ #fan
  \ #fan_end
  \ #fixed_value
  \ #flame
  \ #flow_inactive
  \ #global_coordinates
  \ #glview_format
  \ #glview_name
  \ #graphicfile
  \ #gravity_direction
  \ #gravity_enabled
  \ #gridfile
  \ #heat_transfer
  \ #hexahedron
  \ #ignition_time
  \ #inactive_criteria
  \ #inactive_period
  \ #initial_conditions
  \ #integration_period
  \ #local_coordinates
  \ #material
  \ #matrix_gmres_parameter
  \ #max_area_error
  \ #max_timestep
  \ #maxstep
  \ #maxtime
  \ #move_cv_between_models
  \ #name
  \ #nowait_keyboard_active
  \ #num_threads
  \ #only_safe_parallelization
  \ #output_frequence
  \ #paste
  \ #paste_global
  \ #paste_global_point
  \ #paste_local
  \ #paste_mirror
  \ #phase_type
  \ #pipe
  \ #pipebend
  \ #pipemerge
  \ #point_load
  \ #polar
  \ #pressure
  \ #radiation_beams_azimuth
  \ #radiation_beams_azimuth_polar
  \ #radiation_beams_polar
  \ #radiation_calc_frequence
  \ #radiation_include
  \ #readfile
  \ #reference_coordinates
  \ #regular_graphic_grid
  \ #relaxation_factor
  \ #reset_part_name
  \ #residue_limit
  \ #return
  \ #scenariofile
  \ #screen_text
  \ #set_part_name
  \ #show_screen_results
  \ #sink
  \ #sink_end
  \ #source
  \ #source_end
  \ #source_sink
  \ #source_sink_end
  \ #sphere
  \ #split_cv
  \ #spot
  \ #store_regular_grid
  \ #store_results
  \ #strength_active
  \ #strength_include
  \ #surface_load
  \ #tank
  \ #test_termoprop
  \ #transform
  \ #transform_end
  \ #variable_value
  \ #write_frequence


" VessFire specific commands
syn keyword brlCommand
  \ #back_pressure
  \ #background_load
  \ #basic_load
  \ #bdv_valve_location
  \ #bend
  \ #blowdown_line
  \ #blowdown_valve
  \ #circumferential_split
  \ #connect_object_to
  \ #continueonthermocrash
  \ #densitybasedthermo
  \ #external_longitudinal_stress
  \ #flow_parameters
  \ #fluid
  \ #global_centre_divisor
  \ #global_flow_divisor
  \ #heat_load
  \ #initial_conditions_inventory
  \ #initial_conditions_shell
  \ #join_concentration_difference
  \ #join_maximal_volume
  \ #link
  \ #max_axial_split
  \ #max_radial_split
  \ #max_ruptured_pipes
  \ #mixedmultiphasestate
  \ #new_line
  \ #outlet
  \ #output_interpolated_velocities
  \ #pcrelax
  \ #peak_heat_length
  \ #peak_load
  \ #phase_type
  \ #pipe
  \ #process_safety_valve
  \ #psv_valve_location
  \ #rad_calc_frequence
  \ #reactivate_criteria
  \ #ref_point_current_model
  \ #ref_point_other_model
  \ #segment_definition_file
  \ #source
  \ #split_concentration_difference
  \ #split_concentration_material
  \ #split_debounce_steps
  \ #split_minimum_volume
  \ #strengthmodel
  \ #stressfactor
  \ #stresstype
  \ #test_pressure_profile
  \ #thermoprop_model
  \ #timestepwhenactivated
  \ #vessel
  \ #vessel_conditions
  \ #vessel_flame_file
  \ #vessel_orientation
  \ #vessel_outside_conditions
  \ #vessel_result_file
  \ #vessfire_result_file
  \ #deform_geometry

" 
" CoatSim specific commands
"
syn keyword brlCommand
  \ #global_load
  \ #inlet
  \ #radiativeheater
  \ #void

" 
" Subcommands
"
syn keyword brlSubCommand
  \ %ang
  \ %connect
  \ %coolerinletloc
  \ %copygroup
  \ %dia
  \ %displace
  \ %divisor
  \ %emissivity
  \ %environmenttemp
  \ %expandinnerring
  \ %expandouterring
  \ %fandirection
  \ %force
  \ %init
  \ %keepinitiation
  \ %len
  \ %lowpoint
  \ %model
  \ %newgraphname
  \ %newgroup
  \ %nozzel
  \ %part
  \ %phase
  \ %pipe
  \ %piprad
  \ %plugin
  \ %plugout
  \ %presplit
  \ %rad
  \ %radiationtemp
  \ %res
  \ %retrieve
  \ %rotang
  \ %rotax
  \ %rotpoint
  \ %roughnessHeight
  \ %setheattransfer
  \ %setpoint
  \ %showSpot
  \ %speed
  \ %split
  \ %store
  \ %thermostatloc
  \ %upperlimit
  \ %vec
  \ %vecpkt
  \ %vecup
  \ %verify
  \ %volumerate
  \ %wall
  \ %windspeed

" VessFire specific subcommands
syn keyword brlSubCommand
  \ %corTol
  \ %inventory
  \ %prodTol
  \ %shell

" CoatSim specific sub commands
syn keyword brlSubCommand
  \ %absorptioncoefficient
  \ %centredivisor
  \ %flowdivisor
  \ %heaterwall1
  \ %heatpercasette
  \ %initvelo
  \ %lossfactor
  \ %numberofcasettes
  \ %peaklength
  \ %reducerlength
  \ %reducerresolution
  \ %relloc
  \ %roughness
  \ %solid

"
" Global commands
"
syn keyword brlAlphaKroll 
  \ @@ 
  \ @calc 
  \ @cylinder_center 
  \ @cylinder_periphery 
  \ @cylinder_squer_size 
  \ @debug 
  \ @define 
  \ @do 
  \ @else
  \ @endif 
  \ @if 
  \ @printtrack 
  \ @readfile 
  \ @regular_grid_resolution
  \ @verify
  \ @while 

syn keyword brlDollar 
  \ $boundaryconditions
  \ $brf-1.00
  \ $brf-2.00
  \ $brilliantFormat
  \ $end_of_file
  \ $file_name 
  \ $model
  \ $vessFire
  \ $coatsim

"
" Variables (?) 
"
syn keyword brlVariables 
  \ absorption
  \ air_temperature
  \ continuityerror
  \ convheat
  \ crackincreasement
  \ crackpropagation
  \ darcy
  \ darcy-x
  \ darcy-y
  \ darcy-z
  \ density
  \ diki
  \ disipationterm
  \ eddydisipation
  \ eddyviscosity
  \ emissivity
  \ emittedradiation
  \ enthalpy
  \ exposedradiation
  \ false
  \ flowflux
  \ flowmodelname
  \ heattransfercoef
  \ initialopening
  \ injectflow
  \ jintegralsize
  \ kineticenergy
  \ mixlength
  \ netradiation
  \ numberoftriangles
  \ permeability
  \ permeability-x
  \ permeability-y
  \ porosity
  \ pressure
  \ pressure_correction
  \ pressurecorrection
  \ propagateangle
  \ radsinksource
  \ solidvfr
  \ stagnation_pressure
  \ static_temperature
  \ strength
  \ surfacetriangles
  \ temperature
  \ true
  \ valveinletrate
  \ valvereleaserate
  \ vaporvfr
  \ viscosity
  \ volumefraction
  \ vx-velocity
  \ vy-velocity
  \ vz-velocity
  \ wallfunk

"
" "Comments"
"
syn keyword brlComment
  \ (Information)
  \ (Modify)
  \ Active
  \ Relaxation-factor
  \ Store
  \ Variable-name
  \ Variable-type

" models
syn keyword brlVariables
  \ conduction
  \ dispersion
  \ fire
  \ flow
  \ multiphase
  \ porosityflow
  \ radiation
  \ strength

" materials
syn keyword brlVariables 
  \ air
  \ c1
  \ c10
  \ c2
  \ c3
  \ c4
  \ c5
  \ c6
  \ c7
  \ c8
  \ c9
  \ carbonsteel
  \ carbonwool_128
  \ carbonwool_64
  \ carbonwool_96
  \ chalk
  \ chartek_iii_t>35mm
  \ co2
  \ copper
  \ cs_235lt
  \ cs_360lt
  \ duplex_22cr
  \ duplexsaf2304
  \ earth
  \ f_icl_tymar_10k
  \ f_wkl_m444
  \ firemaster607_128
  \ firemaster607_160
  \ firemaster607_192
  \ firemaster607_64
  \ firemaster607_96
  \ foamglas
  \ gas
  \ h2o
  \ ic4
  \ ic5
  \ icl_tymar_10k
  \ kaowool_128
  \ liquid
  \ n2
  \ o2
  \ paroc_110
  \ polyurethane
  \ rockwool
  \ soil
  \ soilmodifiedmohr
  \ ss_316
  \ ss_6mo
  \ stainlessg003
  \ stainlessg301
  \ stainlessg401
  \ stainlessg462
  \ stainlessg571
  \ stainlessmgo
  \ supere_500
  \ wkl_m444
 
"
" Comments
"
syn region	brlComment	start="//" skip="\\$" end="$" keepend contains=brlTodo
syn region	brlComment	start="/\*" end="\*/" contains=brlTodo

" 
" integer number, or floating point number without a dot and with "f".
"
syn match	brlNumbers	display transparent "\<-\?\d\|-\?\.\d\?" contains=brlNumber,brlFloat
syn match	brlNumber		display contained "\-\?\d\+g\=\>"
syn match	brlFloat		display contained "\-\?\d\+\.\d*\(e[-+]\=\d\+\)\=g\="
syn match	brlFloat		display contained "\-\?\.\d\+\(e[-+]\=\d\+\)\=g\=\>"
syn match	brlFloat		display contained "\-\?\d\+e[-+]\=\d\+g\=\>"

set noignorecase 
syn keyword brlTodo contained TODO XXX FIXME

let b:current_syntax = "brl"

hi def link brlCommand    Type
hi def link brlSubCommand Function
hi def link brlNumbers    Number
hi def link brlNumber     Number  
hi def link brlFloat      Number
hi def link brlComment    Comment
hi def link brlEquation   Special
hi def link brlMath       Statement
hi def link brlAlphaKroll Define
hi def link brlDollar     Statement
hi def link brlError      Error
hi def link brlVariables  Statement
hi def link brlTodo       Todo
