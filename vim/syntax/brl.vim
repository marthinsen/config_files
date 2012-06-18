" Vim syntax file
" Language: Brilliant code files
" Maintainer: Eirik Marthinsen
" Latest Revision: 29 April 2012

if exists("b:current_syntax")
  finish
endif

setlocal iskeyword+=#,$,%,@
syn case ignore

" Equation errors
syn match brlError "\(=\)\@<!=\(=\)\@!"


" Equaiton 
syn match	brlEquation	"=[^=]\+;" contains=brlMath

" Keywords
syn keyword brlMath sin cos tan sqrt PI max min contained
syn keyword brlCommand #block #copy #block #copy #endcopy #paste #transform_end #transform #set_part_name #reference_coordinates #gridfile #scenariofile #maxtime #graphicfile #output_frequence #max_timestep #courant_number #show_screen_results #end_of_file #name #material #initial_conditions #cylinder_resolution #average #write_frequence #spot #extern_grid #cylinder_angle #cylinder_periphery #cylinder_squer_size #cylinder_center #return #tank #pipemerge #pipebend #pipe #cylinder #hexahedron #extract #split_cv #move_cv_between_models #paste_global_point #copy_global_coordinate #copy_global_point #local_coordinates #global_coordinates #readfile #reset_part_name #endcopyincremental #copyincremental #paste_global #paste_mirror #paste_local #paste #displacement #adjust_size #polar #cartesian #store_regular_grid #fan_end #fan #source_sink_end #source_sink #sink_end #sink #source_end #source #current_model_area #initial_conditions #phase_type #material #current_model_area #global_coordinates #heat_transfer #fixed_value #fan #source_sink #sink #source #variable_value #point_load #surface_load #displacement #pressure #adiabatic #flame #check_area_error #capturefile #database_path

syn keyword brlSubCommand %displace %rotax %rotang %rotpoint %newgroup %model %retrieve %copygroup %keepinitiation %init %presplit %split %newgraphname %verify %res %part %vec %ang %rad %len %connect %dia %wall %pipe %nozzel %vecup %vecpkt %piprad %store %expandinnerring %expandouterring %divisor %RoughnessHeight %phase %setpoint %upperlimit %lowpoint %plugin %plugout %thermostatloc %coolerinletloc %volumerate %force %speed %fandirection %setheattransfer %environmenttemp %windspeed %radiationtemp %emissivity %ShowSpot

syn match   brlAlphaKroll "@\(Define\|Readfile\|while\|if\|do\|debug\|@\|calc\|endif\)"
syn keyword brlDollar     $end_of_file $brilliantFormat $model $brf-2.00 $brf-1.00 $boundaryconditions $file_name

syn keyword brlVariables  temperature emissivity absorption Vx-velocity Vy-velocity Vz-velocity Pressure air_temperature
syn keyword brlVariables  temperature emittedradiation exposedradiation enthalpy
 
syn region	brlComment	start="//" skip="\\$" end="$" keepend
syn region	brlComment	start="/\*" end="\*/"

"integer number, or floating point number without a dot and with "f".
syn match	brlNumbers	display transparent "\<\d\|\.\d" contains=brlNumber,brlFloat 
syn match	brlNumber		display contained "\d\+\(u\=l\{0,2}\|ll\=u\)\>"
syn match	brlFloat		display contained "\d\+\.\d*\(e[-+]\=\d\+\)\=[fl]\="
syn match	brlFloat		display contained "\.\d\+\(e[-+]\=\d\+\)\=[fl]\=\>"
syn match	brlFloat		display contained "\d\+e[-+]\=\d\+[fl]\=\>"

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
