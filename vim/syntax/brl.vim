" Vim syntax file
" Language:     Brilliant code files
" Maintainer:    Eirik Marthinsen
" Latest Change: August 9, 2012
" Version:       1

if exists("b:current_syntax")
  finish
endif

setlocal iskeyword+=#,$,%,@-@,-,(,)
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
  \ cos
  \ max
  \ min
  \ pi
  \ sin
  \ sqrt
  \ tan
  \ pow
  \ exp
  \ if
  \ log
  \ log10
  \ asin
  \ acos
  \ atan
syn keyword brlCommand 
  \ #adiabatic
  \ #adjust_size
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
  \ #cylinder
  \ #cylinder_angle
  \ #cylinder_center
  \ #cylinder_periphery
  \ #cylinder_resolution
  \ #cylinder_squer_size
  \ #database_file
  \ #database_path
  \ #displacement
  \ #end_of_file
  \ #endcopy
  \ #endcopyincremental
  \ #extern_grid
  \ #extract
  \ #fan
  \ #fan_end
  \ #fixed_value
  \ #flame
  \ #global_coordinates
  \ #glview_format
  \ #glview_name
  \ #graphicfile
  \ #gridfile
  \ #heat_transfer
  \ #hexahedron
  \ #initial_conditions
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
  \ #readfile
  \ #reference_coordinates
  \ #regular_graphic_grid
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
  \ #split_cv
  \ #spot
  \ #store_regular_grid
  \ #surface_load
  \ #tank
  \ #test_termoprop
  \ #transform
  \ #transform_end
  \ #variable_value
  \ #write_frequence
  \ #strength_include
  \ #radiation_calc_frequence
  \ #radiation_beams_azimuth_polar
  \ #gravity_include
  \ #apply_pressure_gradient
  \ #allow_phase_change
  \ #differencing_scheme
  \ #artificial_viscosity
  \ #integration_period
  \ #inactive_period
  \ #inactive_criteria
  \ #ignition_time
  \ #flow_inactive
  \ #relaxation_factor
  \ #store_results


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
  \ #external_longitudinal_stress
  \ #flow_parameters
  \ #fluid
  \ #global_centre_divisor
  \ #global_flow_divisor
  \ #heat_load
  \ #initial_conditions_inventory
  \ #initial_conditions_shell
  \ #link
  \ #max_axial_split
  \ #max_radial_split
  \ #max_ruptured_pipes
  \ #new_line
  \ #outlet
  \ #pcrelax
  \ #peak_heat_length
  \ #peak_load
  \ #phase_type
  \ #pipe
  \ #process_safety_valve
  \ #psv_valve_location
  \ #rad_calc_frequence
  \ #radiation_include
  \ #segment_definition_file
  \ #source
  \ #stressFactor
  \ #stressType
  \ #stressfactor
  \ #stresstype
  \ #test_pressure_profile
  \ #vessel
  \ #vessel_conditions
  \ #vessel_flame_file
  \ #vessel_orientation
  \ #vessel_outside_conditions
  \ #vessel_result_file
  \ #vessfire_result_file

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

"
" Global commands
"
syn keyword brlAlphaKroll @define @readfile @while @if @do @debug @@ @calc @endif @verify
syn keyword brlAlphaKroll @printtrack @cylinder_center @cylinder_squer_size @cylinder_periphery @regular_grid_resolution
syn keyword brlDollar 
  \ $boundaryconditions
  \ $brf-1.00
  \ $brf-2.00
  \ $brilliantFormat
  \ $end_of_file
  \ $file_name 
  \ $model
  \ $vessFire

"
" Variables (?) 
"
syn keyword brlVariables 
  \ Pressure
  \ Vx-velocity
  \ Vy-velocity
  \ Vz-velocity
  \ absorption
  \ air_temperature
  \ emissivity
  \ temperature
  \ porosity
  \ permeability
  \ permeability-x
  \ permeability-y
  \ permeability-x
  \ darcy
  \ darcy-x
  \ darcy-y
  \ darcy-z
  \ emittedradiation
  \ enthalpy
  \ exposedradiation
  \ true
  \ false
  \ pressure_correction
  \ eddydisipation
  \ kineticEnergy
  \ density
  \ eddyViscosity
  \ pressureCorrection
  \ DisipationTerm
  \ HeatTransferCoef
  \ convHeat
  \ diKi
  \ FlowFlux
  \ static_temperature
  \ stagnation_pressure
  \ mixLength
  \ wallFunk
  \ RadSinkSource
  \ NetRadiation
  \ continuityError

"
" "Comments"
"
syn keyword brlComment
  \ Variable-name
  \ Relaxation-factor
  \ Active
  \ (Modify\)
  \ (Information)
  \ Store
  \ Variable-type

" materials
syn keyword brlVariables 
  \ air
  \ c1
  \ c2
  \ c3
  \ c4
  \ c5
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
syn match	brlNumbers	display transparent "\<\d\|\.\d" contains=brlNumber,brlFloat 
syn match	brlNumber		display contained "\d\+\(u\=l\{0,2}\|ll\=u\)\>"
syn match	brlFloat		display contained "\d\+\.\d*\(e[-+]\=\d\+\)\=[fl]\="
syn match	brlFloat		display contained "\.\d\+\(e[-+]\=\d\+\)\=[fl]\=\>"
syn match	brlFloat		display contained "\d\+e[-+]\=\d\+[fl]\=\>"

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
