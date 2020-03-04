# FDM Printer Base Description

## settings

### machine_settings

- machine_name: 3D 프린터 모델의 이름
- machine_show_variants: 이 프린터의 다른 변종을 별도의 json 파일로 설명하는지 여부를 보여주는지 여부
- machine_start_gcode: 맨 처음 실행할 G-code
- machine_end_gcode: 맨 마지막 실행할 G-code
- material_guid: 재료의 GUID. 자동 설정됨. 
- material_diameter: 사용할 필라멘트의 지름을 조정. 이 값은 사용된 필라멘트의 지름에 부합해야 함
- material_bed_temp_wait: 빌드플레이트 온도가 시작에 도달할때까지 기다리는 명령을 넣을지 여부
- material_print_temp_wait: 노즐 온도가 시작에 도달할때까지 기다릴지 여부
- material_print_temp_prepend: gcode 시작에 노즐 온도 명령을 포함할지 여부. start_gcode가 이미 노즐 온도 명령을 포함하면 Cura는 이 설정을 자동으로 불가로 만든다.
- material_bed_temp_prepend: 제작판 온도 명령을 gcode 시작에 포함할지 여부. 이미 start_gcode에 빌드플레이트 온도 명령이 있으면 이 설정은 자동으로 불가로 된다. 
- machine_width: 프린트 영역의 너비(X-direction).
- machine_depth: 프린트 영역의 깊이(Y-direction)
- machine_shape: 비 프린트 영역을 고려하지 않은 빌드플레이트의 모양
- machine_buildplate_type: 프린터에 설치된 빌드플레이트의 재료 (유지, 알루미늄 등)
- machine_height: 프린트 영역의 높이(Z-direction)
- machine_heated_bed: 프린터에 가영된 제작판이 있는지 여부
- machine_heated_build_volume: 프린터가 빌드 볼륨 온도의 안정화 기능이 있는지 여부
- machine_center_is_zero: 프린터의 제로 위치의 X/Y 좌표가 프린트 영역의 중심인지의 여부
- machine_extruder_count: 압출기 트레인의 개수. 압출기 트레인은 공급기, 바닥 튜브, 노즐의 조합.
- extruders_enabled_count: 활성화돤 압출기 트레인의 수; 코드에서 자동으로 설정됨
- machine_nozzle_tip_outer_diameter: 노즐 팁의 바깥 지름
- machine_nozzle_head_distance: 노즐 팁과 프린트 헤드 하단과의 높이 차이
- machine_nozzle_expansion_angle: 수평면과 노즐팁 바로 위의 원뿔 부분 사이의 각도
- machine_heat_zone_length: 노즐에서 열이 필라멘트로 전달되는 노즐 끝으로부터의 거리
- machine_filament_park_distance: 압출기를 더 이상 사용하지 않을 때 필라멘트를 파킹 할 노즐 끝으로부터의 거리
- machine_nozzle_temp_enabled: Cura에서 온도를 제어할지 여부. Cura 외부에서 노즐 온도를 제어하려면 이 기능을 끔
- machine_nozzle_heat_up_speed: 노즐이 가열되는 속도 (°C/s)는 일반 인쇄 온도와 대기 온도의 창에서 평균을 나타냄
- machine_nozzle_cool_down_speed: 노즐이 냉각되는 속도 (°C/s)는 일반 인쇄 온도와 대기 온도의 창에서 평균을 나타냄.
- machine_min_cool_heat_time_window: 노즐이 냉각되기 전에 압출기가 비활성 상태여야하는 최소 시간. 이 시간보다 오랫동안 압출기를 사용하지 않을 경우에만 대기 온도까지 냉각 될 수 있다.
- machine_gcode_flavor: 생성할 g-code 타입
   + RepRap (Marlin/Sprinter): Marlin,
   + RepRap (Volumetric): Marlin (Volumetric),
   + RepRap (RepRap): RepRap,
   + Repetier: Repetier
                    
- machine_firmware_retract: 재료 수축 명령으로 G1 명령의 E 값 대신 펌웨어 취소 명령 (G10/G11)을 사용할지 여부
- machine_extruders_share_heater: 압출기가 가열기를 각각 사용하는 대신 공유하는지 여부
- machine_disallowed_areas: 프린트 헤드가 들어갈 수 없는 영역을 가진 다각형 리스트
- nozzle_disallowed_areas: 노즐이 들어갈 수 없는 영역이 있는 다각형 리스트
- machine_head_with_fans_polygon:프린트 헤드의 2차원 실루엣(팬 뚜껑 포함됨)
- gantry_height: 노즐의 팁과 gantry 시스템 사이의 높이(X와 Y 축)
- machine_nozzle_id: AA 0.4와 BB 0.8 과 같은 압출기 트레인의 노즐 ID
- machine_nozzle_size: 노즐의 내부 지름. 표준이 아닌 노즐 크기를 사용할 때 이 설정을 바꿈
- machine_use_extruder_offset_to_offset_coords: 좌표계에 압출기 옵셋을 적용
- extruder_prime_pos_z: 인쇄 시작시 노즐이 프라이밍되는 위치의 Z 좌표
- extruder_prime_pos_abs: 압출기 주 위치를 마지막으로 알려진 헤드 위치가 아니라 절대 위치로 만듬
- machine_max_feedrate_x: X 방향의 모터 최대 속도
- machine_max_feedrate_y: Y 방향의 모터 최대 속도
- machine_max_feedrate_z: X 방향의 모터 최대 속도
- machine_max_feedrate_e: 필라멘트의 최대 속도
- machine_max_acceleration_x: X 방향의 모터 최대 가속도
- machine_max_acceleration_y: Y 방향의 모터 최대 가속도
- machine_max_acceleration_z: Z 방향의 모터 최대 가속도,
- machine_max_acceleration_e: 필라멘트 모터의 최대 가속도
- machine_acceleration: 프린트 헤드 이동의 기본 가속도
- machine_max_jerk_xy: 수평면에서의 이동을 위한 기본 jerk
- machine_max_jerk_z: Z 방향의 모터의 기본 jerk
- machine_max_jerk_e: 필라먼트 모터의 기본 jerk,  
- machine_steps_per_mm_x: X축으로 1mm 이동에 필요한 모터의 스텝 수
- machine_steps_per_mm_y: Y축으로 1mm 이동에 필요한 모터의 스텝 수
- machine_steps_per_mm_z: Z축으로 1mm 이동에 필요한 모터의 스텝 수
- machine_steps_per_mm_e: 1mm 압출에 필요한 모터의 스텝 수
- machine_endstop_positive_direction_x: X축의 끝 점이 양의 방향인지 음의 방향인지 여부
- machine_endstop_positive_direction_y: Y축의 끝 점이 양의 방향인지 음의 방향인지 여부
- machine_endstop_positive_direction_z: Z축의 끝 점이 양의 방향인지 음의 방향인지 여부
- machine_minimum_feedrate: 프린트 헤드의 최저 속도
- machine_feeder_wheel_diameter: 공급기에서 재료를 드라이브하는 바퀴의 지름

### 해상도: Quality

프린트의 해상도에 영향을 주는 모든 설정. 이 설정은 품질과 프린트 시간에 큰 영향을 준다.
        
- layer_height: 각 레이어의 높이(mm). 값이 클수록 저해상도로 빠르게 프린트 함
- layer_height_0: 첫 레이어의 높이. 두꺼울수록 재작판의 접착이 더 쉽다.
- line_width: 한 선분의 두께. 선 두께는 노즐의 너비에 해당해야 하지만 이 값을 약간 줄이면 더 낫게 프린트할 수 있다.
   + wall_line_width: 벽의 한 선분의 두께
   + wall_line_width_0: 벽의 가장 바깥 선분의 두께. 이 값을 낮추면 더 높은 수준의 디테일을 프린트 할 수 있음
   + wall_line_width_x: Width of a single wall line for all wall lines except the outermost one.,
   + skin_line_width: Width of a single top/bottom line.,
   + infill_line_width: Width of a single infill line.,
   + skirt_brim_line_width: Width of a single skirt or brim line.,
   + support_line_width: Width of a single support structure line.,
   + support_interface_line_width: Width of a single line of support roof or floor.,
   + prime_tower_line_width: Width of a single prime tower line.,
- initial_layer_line_width_factor: 처음 층의 선 두께에 곱할 인자. 이 값이 크면 베드 접착을 개선할 수 있다

### shell

- wall_extruder_nr: 벽을 인쇄하는데 사용할 압출기 트레인. 멀티 압출기에서 사용됨
    + wall_0_extruder_nr: 외벽을 인쇄하는데 사용할 압출기 트레인
    + wall_x_extruder_nr: 내벽 프린트 용 압출기 트레인
- wall_thickness: 수평 방향의 벽의 두께. 아 값은 벽의 수에서 정의한 벽 선분 두께로 나뉨
    + wall_line_count: 벽의 갯수. When calculated by the wall thickness, this value is rounded to a whole number.,
- wall_0_wipe_dist: Distance of a travel move inserted after the outer wall, to hide the Z seam better.,
    + roofing_extruder_nr: The extruder train used for printing the top most skin. This is used in multi-extrusion.,
    + roofing_layer_count: The number of top most skin layers. Usually only one top most layer is sufficient to generate higher quality top surfaces.,
    + top_bottom_extruder_nr: The extruder train used for printing the top and bottom skin. This is used in multi-extrusion.,
    + top_bottom_thickness: The thickness of the top/bottom layers in the print. This value divided by the layer height defines the number of top/bottom layers.,
    + top_thickness: The thickness of the top layers in the print. This value divided by the layer height defines the number of top layers.,
    + top_layers: The number of top layers. When calculated by the top thickness, this value is rounded to a whole number.,
    + bottom_thickness: The thickness of the bottom layers in the print. This value divided by the layer height defines the number of bottom layers.,
    + bottom_layers: The number of bottom layers. When calculated by the bottom thickness, this value is rounded to a whole number.,
    + initial_bottom_layers: The number of initial bottom layers, from the build-plate upwards. When calculated by the bottom thickness, this value is rounded to a whole number.,
- top_bottom_pattern: 상단/하단 층의 패턴,
- top_bottom_pattern_0: 첫번 층에서 프린트 바닥의 패턴
- connect_skin_polygons: Connect top/bottom skin paths where they run next to each other. For the concentric pattern enabling this setting greatly reduces the travel time, but because the connections can happen midway over infill this feature can reduce the top surface quality.,
- skin_angles: A list of integer line directions to use when the top/bottom layers use the lines or zig zag pattern. Elements from the list are used sequentially as the layers progress and when the end of the list is reached, it starts at the beginning again. The list items are separated by commas and the whole list is contained in square brackets. Default is an empty list which means use the traditional default angles (45 and 135 degrees).,
- wall_0_inset: Inset applied to the path of the outer wall. If the outer wall is smaller than the nozzle, and printed after the inner walls, use this offset to get the hole in the nozzle to overlap with the inner walls instead of the outside of the model.,
- optimize_wall_printing_order: Optimize the order in which walls are printed so as to reduce the number of retractions and the distance travelled. Most parts will benefit from this being enabled but some may actually take longer so please compare the print time estimates with and without optimization. First layer is not optimized when choosing brim as build plate adhesion type.,
- outer_inset_first: Prints walls in order of outside to inside when enabled. This can help improve dimensional accuracy in X and Y when using a high viscosity plastic like ABS; however it can decrease outer surface print quality, especially on overhangs.,
- alternate_extra_perimeter: Prints an extra wall at every other layer. This way infill gets caught between these extra walls, resulting in stronger prints.,
- travel_compensate_overlapping_walls_enabled: Compensate the flow for parts of a wall being printed where there is already a wall in place
- wall_min_flow: Minimum allowed percentage flow for a wall line. The wall overlap compensation reduces a wall's flow when it lies close to an existing wall. Walls whose flow is less than this value will be replaced with a travel move. When using this setting, you must enable the wall overlap compensation and print the outer wall before inner walls.,
- wall_min_flow_retract: If enabled, retraction is used rather than combing for travel moves that replace walls whose flow is below the minimum flow threshold.,

- fill_perimeter_gaps: Fills the gaps between walls where no walls fit.,
- filter_out_tiny_gaps: Filter out tiny gaps to reduce blobs on outside of model.,
- fill_outline_gaps: Print pieces of the model which are horizontally thinner than the nozzle size
- xy_offset: Amount of offset applied to all polygons in each layer. Positive values can compensate for too big holes; negative values can compensate for too small holes.
- xy_offset_layer_0: Amount of offset applied to all polygons in the first layer. A negative value can compensate for squishing of the first layer known as \elephant's foot
- hole_xy_offset: Amount of offset applied to all holes in each layer. Positive values increase the size of the holes, negative values reduce the size of the holes.
- z_seam_type: Starting point of each path in a layer. When paths in consecutive layers start at the same point a vertical seam may show on the print. When aligning these near a user specified location, the seam is easiest to remove. When placed randomly the inaccuracies at the paths' start will be less noticeable. When taking the shortest path the print will be quicker.,
- z_seam_position: The position near where to start printing each part in a layer.,
- z_seam_corner: Control whether corners on the model outline influence the position of the seam. None means that corners have no influence on the seam position. Hide Seam makes the seam more likely to occur on an inside corner. Expose Seam makes the seam more likely to occur on an outside corner. Hide or Expose Seam makes the seam more likely to occur at an inside or outside corner. Smart Hiding allows both inside and outside corners, but chooses inside corners more frequently, if appropriate.,
- z_seam_relative:  When enabled, the z seam coordinates are relative to each part's centre. When disabled, the coordinates define an absolute position on the build plate.
- skin_no_small_gaps_heuristic:  When the model has small vertical gaps of only a few layers, there should normally be skin around those layers in the narrow space. Enable this setting to not generate skin if the vertical gap is very small. This improves printing time and slicing time, but technically leaves infill exposed to the air.
- skin_outline_count: Replaces the outermost part of the top/bottom pattern with a number of concentric lines. Using one or two lines improves roofs that start on infill material.
- ironing_enabled: Go over the top surface one additional time, but this time extruding very little material. This is meant to melt the plastic on top further, creating a smoother surface. The pressure in the nozzle chamber is kept high so that the creases in the surface are filled with material.,
- ironing_only_highest_layer: Only perform ironing on the very last layer of the mesh. This saves time if the lower layers don't need a smooth surface finish.,
- ironing_pattern: The pattern to use for ironing top surfaces.
- ironing_line_spacing: The distance between the lines of ironing.,
- ironing_flow: The amount of material, relative to a normal skin line, to extrude during ironing. Keeping the nozzle filled helps filling some of the crevices of the top surface, but too much results in overextrusion and blips on the side of the surface.
- ironing_inset: A distance to keep from the edges of the model. Ironing all the way to the edge of the mesh may result in a jagged edge on your print.
- speed_ironing: The speed at which to pass over the top surface.
- acceleration_ironing: The acceleration with which ironing is performed.,
- jerk_ironing: The maximum instantaneous velocity change while performing ironing.,
- skin_overlap: Adjust the amount of overlap between the walls and (the endpoints of) the skin-centerlines, as a percentage of the line widths of the skin lines and the innermost wall. A slight overlap allows the walls to connect firmly to the skin. Note that, given an equal skin and wall line-width, any percentage over 50% may already cause any skin to go past the wall, because at that point the position of the nozzle of the skin-extruder may already reach past the middle of the wall.,

### Infill

- infill_extruder_nr: The extruder train used for printing infill. This is used in multi-extrusion.,
- infill_sparse_density: Adjusts the density of infill of the print.
- infill_pattern: he pattern of the infill material of the print. The line and zig zag infill swap direction on alternate layers, reducing material cost. The grid, triangle, tri-hexagon, cubic, octet, quarter cubic, cross and concentric patterns are fully printed every layer. Gyroid, cubic, quarter cubic and octet infill change with every layer to provide a more equal distribution of strength over each direction.,

    grid: Grid,
    lines: Lines,
    triangles: Triangles,
    trihexagon: Tri-Hexagon,
    cubic: Cubic,
    cubicsubdiv: Cubic Subdivision,
    tetrahedral: Octet,
    quarter_cubic: Quarter Cubic,
    concentric: Concentric,
    zigzag: Zig Zag,
    cross: Cross,
    cross_3d: Cross 3D,
    gyroid: Gyroid

- zig_zaggify_infill: Connect the ends where the infill pattern meets the inner wall using a line which follows the shape of the inner wall. Enabling this setting can make the infill adhere to the walls better and reduce the effects of infill on the quality of vertical surfaces. Disabling this setting reduces the amount of material used.,
- connect_infill_polygons: Connect infill paths where they run next to each other. For infill patterns which consist of several closed polygons, enabling this setting greatly reduces the travel time.,
- infill_angles: A list of integer line directions to use. Elements from the list are used sequentially as the layers progress and when the end of the list is reached, it starts at the beginning again. The list items are separated by commas and the whole list is contained in square brackets. Default is an empty list which means use the traditional default angles (45 and 135 degrees for the lines and zig zag patterns and 45 degrees for all other patterns).,
- infill_offset_x: The infill pattern is moved this distance along the X axis.,
- infill_offset_y: The infill pattern is moved this distance along the Y axis.,
- infill_randomize_start_location: Randomize which infill line is printed first. This prevents one segment becoming the strongest, but it does so at the cost of an additional travel move.
- infill_multiplier: Convert each infill line to this many lines. The extra lines do not cross over each other, but avoid each other. This makes the infill stiffer, but increases print time and material usage.,
- infill_wall_line_count: Add extra walls around the infill area. Such walls can make top/bottom skin lines sag down less which means you need less top/bottom skin layers for the same quality at the cost of some extra material.\nThis feature can combine with the Connect Infill Polygons to connect all the infill into a single extrusion path without the need for travels or retractions if configured right.,
- sub_div_rad_add: An addition to the radius from the center of each cube to check for the boundary of the model, as to decide whether this cube should be subdivided. Larger values lead to a thicker shell of small cubes near the boundary of the model.,
- infill_overlap: The amount of overlap between the infill and the walls as a percentage of the infill line width. A slight overlap allows the walls to connect firmly to the infill.
                   
- infill_wipe_dist: Distance of a travel move inserted after every infill line, to make the infill stick to the walls better. This option is similar to infill overlap, but without extrusion and only on one end of the infill line.,
- infill_sparse_thickness: The thickness per layer of infill material. This value should always be a multiple of the layer height and is otherwise rounded.,
- gradual_infill_steps: Number of times to reduce the infill density by half when getting further below top surfaces. Areas which are closer to top surfaces get a higher density, up to the Infill Density.,
- gradual_infill_step_height: The height of infill of a given density before switching to half the density.,
- infill_before_walls: Print the infill before printing the walls. Printing the walls first may lead to more accurate walls, but overhangs print worse. Printing the infill first leads to sturdier walls, but the infill pattern might sometimes show through the surface.
- min_infill_area: Don't generate areas of infill smaller than this (use skin instead).,
- infill_support_enabled: Print infill structures only where tops of the model should be supported. Enabling this reduces print time and material usage, but leads to ununiform object strength
- infill_support_angle: The minimum angle of internal overhangs for which infill is added. At a value of 0° objects are totally filled with infill, 90° will not provide any infill.,
- skin_preshrink: The largest width of skin areas which are to be removed. Every skin area smaller than this value will disappear. This can help in limiting the amount of time and material spent on printing top/bottom skin at slanted surfaces in the model.
- expand_skins_expand_distance: The distance the skins are expanded into the infill. Higher values makes the skin attach better to the infill pattern and makes the walls on neighboring layers adhere better to the skin. Lower values save amount of material used.,
- max_skin_angle_for_expansion: Top and/or bottom surfaces of your object with an angle larger than this setting, won't have their top/bottom skin expanded. This avoids expanding the narrow skin areas that are created when the model surface has a near vertical slope. An angle of 0° is horizontal, while an angle of 90° is vertical.
- skin_edge_support_thickness: The thickness of the extra infill that supports skin edges
     
### Material

- default_material_print_temperature: 프린팅에 사용되는 기본 온도. 이것이 재료의 기본 온도가 되어여 함. 다른 모든 프린트 온도는 이 값을 기본으로 차이값을 사용해야 한다.
- build_volume_temperature: 프린트되는 환경의 온도. 0일면 빌드 볼륨 온도는 조정되지 않는다.
- material_print_temperature: 프린팅에 사용될 온도
- material_print_temperature_layer_0: 첫번 레이어를 프린트할 때 사용될 온도. 초기 레이어를 특별하게 처리하지 않으려면 0으로 설정
- material_initial_print_temperature: 인쇄가 이미 시작될 수 있는 인쇄 온도까지 가열하는 동안 최소 온도
- material_final_print_temperature: 인쇄가 끝나기 직전에 이미 냉각되기 시작하는 온도
- material_extrusion_cool_down_speed: 압출하는 동안 노즐이 냉각되는 추가 속도. 압출하는 동안 가열 할 때 손실되는 가열 속도를 나타내는 데 동일한 값이 사용된다.
- default_material_bed_temperature: 가열 된 제작 판에 사용되는 기본 온도. 제작판의 기본 온도이어야 한다. 다른 모든 인쇄 온도는 이 값을 기준으로 차이값을 사용해야 한다.
- material_bed_temperature: 가열된 제작판에 사용될 온도. 0일면 판 온도는 조절되지 않음
- material_bed_temperature_layer_0: 첫번째 층에서 가열된 제작판에 사용될 온도
- material_adhesion_tendency: Surface adhesion tendency.,
- material_surface_energy: Surface energy.,
- material_shrinkage_percentage: Shrinkage ratio in percentage.,
- material_crystallinity: 이 재료는 가열되면 깔끔하게 끊어지는 유형인가? (결정질) 아니면 긴 고리로 연결된 중합체 사슬을 만드는 유형인가?(비결정질)
- material_anti_ooze_retracted_position: 재료가 튀어나오기 전에 수축해야 하는 거리
- material_anti_ooze_retraction_speed: 필라멘트 교체 동안 재료를 얼마나 빨리 수축시켜야 할지
- material_break_preparation_retracted_position: 가열되는 동안 필라멘트를 얼마나 늘어나게 할 수 있는지
- material_break_preparation_speed: How fast the filament needs to be retracted just before breaking it off in a retraction
- material_break_preparation_temperature: The temperature used to purge material, should be roughly equal to the highest possible printing temperature.,
- material_break_retracted_position: How far to retract the filament in order to break it cleanly.,
- material_break_speed: The speed at which to retract the filament in order to break it cleanly.,
- material_break_temperature: The temperature at which the filament is broken for a clean break.,
- material_flush_purge_speed: Material Station internal value,
- material_flush_purge_length: Material Station internal value,
- material_end_of_filament_purge_speed: Material Station internal value,
- material_end_of_filament_purge_length: Material Station internal value,
- material_maximum_park_duration: Material Station internal value,
- material_no_load_move_factor: Material Station internal value,
- material_flow: Flow compensation: the amount of material extruded is multiplied by this value.,
                    
- material_flow_layer_0: Flow compensation for the first layer: the amount of material extruded on the initial layer is multiplied by this value.,
- material_standby_temperature: The temperature of the nozzle when another nozzle is currently used for printing.

### Speed

- speed_print: The speed at which printing happens.
   + speed_infill: The speed at which infill is printed.,
   + speed_wall: The speed at which the walls are printed.,
   + speed_roofing: The speed at which top surface skin layers are printed.,
   + speed_topbottom: The speed at which top/bottom layers are printed.,
   + speed_support: The speed at which the support structure is printed. Printing support at higher speeds can greatly reduce printing time. The surface quality of the support structure is not important since it is removed after printing.,
   + speed_prime_tower: The speed at which the prime tower is printed. Printing the prime tower slower can make it more stable when the adhesion between the different filaments is suboptimal.,
   + speed_travel: The speed at which travel moves are made.,
- speed_layer_0: The speed for the initial layer. A lower value is advised to improve adhesion to the build plate.
               
- skirt_brim_speed: The speed at which the skirt and brim are printed. Normally this is done at the initial layer speed, but sometimes you might want to print the skirt or brim at a different speed.
- speed_z_hop: The speed at which the vertical Z movement is made for Z Hops. This is typically lower than the print speed since the build plate or machine's gantry is harder to move.
- speed_slowdown_layers: The first few layers are printed slower than the rest of the model, to get better adhesion to the build plate and improve the overall success rate of prints. The speed is gradually increased over these layers.
- speed_equalize_flow_enabled: Print thinner than normal lines faster so that the amount of material extruded per second remains the same. Thin pieces in your model might require lines printed with smaller line width than provided in the settings. This setting controls the speed changes for such lines.
- speed_equalize_flow_max: Maximum print speed when adjusting the print speed in order to equalize flow.
- acceleration_enabled: Enables adjusting the print head acceleration. Increasing the accelerations can reduce printing time at the cost of print quality.,
- acceleration_print: The acceleration with which printing happens.
- acceleration_travel: The acceleration with which travel moves are made.,
- acceleration_layer_0: The acceleration for the initial layer.,
- acceleration_skirt_brim: The acceleration with which the skirt and brim are printed. Normally this is done with the initial layer acceleration, but sometimes you might want to print the skirt or brim at a different acceleration.
- jerk_enabled: Enables adjusting the jerk of print head when the velocity in the X or Y axis changes. Increasing the jerk can reduce printing time at the cost of print quality.
-  jerk_print:
                {
                    label: Print Jerk,
                    description: The maximum instantaneous velocity change of the print head.,
                    unit: mm/s,
                    type: float,
                    minimum_value: 0,
                    maximum_value_warning: 50,
                    default_value: 20,
                    enabled: resolveOrValue('jerk_enabled'),
                    settable_per_mesh: true,
                    children:
                    {
                        jerk_infill:
                        {
                            label: Infill Jerk,
                            description: The maximum instantaneous velocity change with which infill is printed.,
                            unit: mm/s,
                            type: float,
                            minimum_value: 0,
                            maximum_value_warning: 50,
                            default_value: 20,
                            value: jerk_print,
                            enabled: resolveOrValue('jerk_enabled') and infill_sparse_density > 0,
                            limit_to_extruder: infill_extruder_nr,
                            settable_per_mesh: true
                        },
                        jerk_wall:
                        {
                            label: Wall Jerk,
                            description: The maximum instantaneous velocity change with which the walls are printed.,
                            unit: mm/s,
                            type: float,
                            minimum_value: 0,
                            maximum_value_warning: 50,
                            default_value: 20,
                            value: jerk_print,
                            enabled: resolveOrValue('jerk_enabled'),
                            settable_per_mesh: true,
                            children:
                            {
                                jerk_wall_0:
                                {
                                    label: Outer Wall Jerk,
                                    description: The maximum instantaneous velocity change with which the outermost walls are printed.,
                                    unit: mm/s,
                                    type: float,
                                    minimum_value: 0,
                                    maximum_value_warning: 50,
                                    default_value: 20,
                                    value: jerk_wall,
                                    enabled: resolveOrValue('jerk_enabled'),
                                    limit_to_extruder: wall_0_extruder_nr,
                                    settable_per_mesh: true
                                },
                                jerk_wall_x:
                                {
                                    label: Inner Wall Jerk,
                                    description: The maximum instantaneous velocity change with which all inner walls are printed.,
                                    unit: mm/s,
                                    type: float,
                                    minimum_value: 0,
                                    maximum_value_warning: 50,
                                    default_value: 20,
                                    value: jerk_wall,
                                    enabled: resolveOrValue('jerk_enabled'),
                                    limit_to_extruder: wall_x_extruder_nr,
                                    settable_per_mesh: true
                                }
                            }
                        },
                        jerk_roofing:
                        {
                            label: Top Surface Skin Jerk,
                            description: The maximum instantaneous velocity change with which top surface skin layers are printed.,
                            unit: mm/s,
                            type: float,
                            minimum_value: 0,
                            maximum_value_warning: 50,
                            default_value: 20,
                            value: jerk_topbottom,
                            enabled: resolveOrValue('jerk_enabled') and roofing_layer_count > 0 and top_layers > 0,
                            limit_to_extruder: roofing_extruder_nr,
                            settable_per_mesh: true
                        },
                        jerk_topbottom:
                        {
                            label: Top/Bottom Jerk,
                            description: The maximum instantaneous velocity change with which top/bottom layers are printed.,
                            unit: mm/s,
                            type: float,
                            minimum_value: 0,
                            maximum_value_warning: 50,
                            default_value: 20,
                            value: jerk_print,
                            enabled: (top_layers > 0 or bottom_layers > 0) and resolveOrValue('jerk_enabled'),
                            limit_to_extruder: top_bottom_extruder_nr,
                            settable_per_mesh: true
                        },
                        jerk_support:
                        {
                            label: Support Jerk,
                            description: The maximum instantaneous velocity change with which the support structure is printed.,
                            unit: mm/s,
                            type: float,
                            minimum_value: 0,
                            maximum_value_warning: 50,
                            default_value: 20,
                            value: jerk_print,
                            enabled: resolveOrValue('jerk_enabled') and (support_enable or support_tree_enable),
                            settable_per_mesh: false,
                            settable_per_extruder: true,
                            limit_to_extruder: support_extruder_nr,
                            children:
                            {
                                jerk_support_infill:
                                {
                                    label: Support Infill Jerk,
                                    description: The maximum instantaneous velocity change with which the infill of support is printed.,
                                    unit: mm/s,
                                    type: float,
                                    default_value: 20,
                                    value: jerk_support,
                                    minimum_value: 0,
                                    maximum_value_warning: 50,
                                    enabled: resolveOrValue('jerk_enabled') and (support_enable or support_tree_enable),
                                    limit_to_extruder: support_infill_extruder_nr,
                                    settable_per_mesh: false,
                                    settable_per_extruder: true
                                },
                                jerk_support_interface:
                                {
                                    label: Support Interface Jerk,
                                    description: The maximum instantaneous velocity change with which the roofs and floors of support are printed.,
                                    unit: mm/s,
                                    type: float,
                                    default_value: 20,
                                    value: jerk_support,
                                    minimum_value: 0,
                                    maximum_value_warning: 50,
                                    enabled: resolveOrValue('jerk_enabled') and support_interface_enable and (support_enable or support_tree_enable),
                                    limit_to_extruder: support_interface_extruder_nr,
                                    settable_per_mesh: false,
                                    settable_per_extruder: true,
                                    children:
                                    {
                                        jerk_support_roof:
                                        {
                                            label: Support Roof Jerk,
                                            description: The maximum instantaneous velocity change with which the roofs of support are printed.,
                                            unit: mm/s,
                                            type: float,
                                            default_value: 20,
                                            value: extruderValue(support_roof_extruder_nr, 'jerk_support_interface'),
                                            minimum_value: 0,
                                            maximum_value_warning: 50,
                                            enabled: resolveOrValue('jerk_enabled') and support_roof_enable and (support_enable or support_tree_enable),
                                            limit_to_extruder: support_roof_extruder_nr,
                                            settable_per_mesh: false,
                                            settable_per_extruder: true
                                        },
                                        jerk_support_bottom:
                                        {
                                            label: Support Floor Jerk,
                                            description: The maximum instantaneous velocity change with which the floors of support are printed.,
                                            unit: mm/s,
                                            type: float,
                                            default_value: 20,
                                            value: extruderValue(support_roof_extruder_nr, 'jerk_support_interface'),
                                            minimum_value: 0,
                                            maximum_value_warning: 50,
                                            enabled: resolveOrValue('jerk_enabled') and support_bottom_enable and (support_enable or support_tree_enable),
                                            limit_to_extruder: support_bottom_extruder_nr,
                                            settable_per_mesh: false,
                                            settable_per_extruder: true
                                        }
                                    }
                                }
                            }
                        },
                        jerk_prime_tower:
                        {
                            label: Prime Tower Jerk,
                            description: The maximum instantaneous velocity change with which the prime tower is printed.,
                            unit: mm/s,
                            type: float,
                            minimum_value: 0,
                            maximum_value_warning: 50,
                            default_value: 20,
                            value: jerk_print,
                            enabled: resolveOrValue('prime_tower_enable') and resolveOrValue('jerk_enabled'),
                            settable_per_mesh: false
                        }
                    }
                },
                jerk_travel:
                {
                    label: Travel Jerk,
                    description: The maximum instantaneous velocity change with which travel moves are made.,
                    unit: mm/s,
                    type: float,
                    default_value: 30,
                    minimum_value: 0,
                    maximum_value_warning: 50,
                    value: jerk_print if magic_spiralize else 30,
                    enabled: resolveOrValue('jerk_enabled'),
                    settable_per_mesh: false
                },
                jerk_layer_0:
                {
                    label: Initial Layer Jerk,
                    description: The print maximum instantaneous velocity change for the initial layer.,
                    unit: mm/s,
                    type: float,
                    default_value: 20,
                    value: jerk_print,
                    minimum_value: 0,
                    maximum_value_warning: 50,
                    enabled: resolveOrValue('jerk_enabled'),
                    settable_per_mesh: true,
                    children:
                    {
                        jerk_print_layer_0:
                        {
                            label: Initial Layer Print Jerk,
                            description: The maximum instantaneous velocity change during the printing of the initial layer.,
                            unit: mm/s,
                            type: float,
                            default_value: 20,
                            value: jerk_layer_0,
                            minimum_value: 0,
                            maximum_value_warning: 50,
                            enabled: resolveOrValue('jerk_enabled'),
                            settable_per_mesh: true
                        },
                        jerk_travel_layer_0:
                        {
                            label: Initial Layer Travel Jerk,
                            description: The acceleration for travel moves in the initial layer.,
                            unit: mm/s,
                            type: float,
                            default_value: 20,
                            value: jerk_layer_0 * jerk_travel / jerk_print,
                            minimum_value: 0,
                            maximum_value_warning: 50,
                            enabled: resolveOrValue('jerk_enabled'),
                            settable_per_extruder: true,
                            settable_per_mesh: false
                        }
                    }
                },
                jerk_skirt_brim:
                {
                    label: Skirt/Brim Jerk,
                    description: The maximum instantaneous velocity change with which the skirt and brim are printed.,
                    unit: mm/s,
                    type: float,
                    default_value: 20,
                    minimum_value: 0,
                    maximum_value_warning: 50,
                    value: jerk_layer_0,
                    enabled: resolveOrValue('jerk_enabled') and (resolveOrValue('adhesion_type') == 'skirt' or resolveOrValue('adhesion_type') == 'brim' or resolveOrValue('draft_shield_enabled') or resolveOrValue('ooze_shield_enabled')),
                    settable_per_mesh: false,
                    limit_to_extruder: adhesion_extruder_nr
                }
            }
        },
        travel:
        {
            label: Travel,
            icon: category_travel,
            description: travel,
            type: category,
            children:
            {
                retraction_enable:
                {
                    label: Enable Retraction,
                    description: Retract the filament when the nozzle is moving over a non-printed area. ,
                    type: bool,
                    default_value: true,
                    settable_per_mesh: false,
                    settable_per_extruder: true
                },
                retract_at_layer_change:
                {
                    label: Retract at Layer Change,
                    description: Retract the filament when the nozzle is moving to the next layer.,
                    type: bool,
                    default_value: false,
                    settable_per_mesh: false,
                    settable_per_extruder: true
                },
                retraction_amount:
                {
                    label: Retraction Distance,
                    description: The length of material retracted during a retraction move.,
                    unit: mm,
                    type: float,
                    default_value: 6.5,
                    minimum_value_warning: -0.0001,
                    maximum_value_warning: 10.0,
                    enabled: retraction_enable and machine_gcode_flavor != \UltiGCode\,
                    settable_per_mesh: false,
                    settable_per_extruder: true
                },
                retraction_speed:
                {
                    label: Retraction Speed,
                    description: The speed at which the filament is retracted and primed during a retraction move.,
                    unit: mm/s,
                    type: float,
                    default_value: 25,
                    minimum_value: 0.0001,
                    minimum_value_warning: 1,
                    maximum_value: machine_max_feedrate_e if retraction_enable else float('inf'),
                    maximum_value_warning: 70,
                    enabled: retraction_enable and machine_gcode_flavor != \UltiGCode\,
                    settable_per_mesh: false,
                    settable_per_extruder: true,
                    children:
                    {
                        retraction_retract_speed:
                        {
                            label: Retraction Retract Speed,
                            description: The speed at which the filament is retracted during a retraction move.,
                            unit: mm/s,
                            type: float,
                            default_value: 25,
                            minimum_value: 0.0001,
                            maximum_value: machine_max_feedrate_e if retraction_enable else float('inf'),
                            minimum_value_warning: 1,
                            maximum_value_warning: 70,
                            enabled: retraction_enable and machine_gcode_flavor != \UltiGCode\,
                            value: retraction_speed,
                            settable_per_mesh: false,
                            settable_per_extruder: true
                        },
                        retraction_prime_speed:
                        {
                            label: Retraction Prime Speed,
                            description: The speed at which the filament is primed during a retraction move.,
                            unit: mm/s,
                            type: float,
                            default_value: 25,
                            minimum_value: 0.0001,
                            maximum_value: machine_max_feedrate_e if retraction_enable else float('inf'),
                            minimum_value_warning: 1,
                            maximum_value_warning: 70,
                            enabled: retraction_enable and machine_gcode_flavor != \UltiGCode\,
                            value: retraction_speed,
                            settable_per_mesh: false,
                            settable_per_extruder: true
                        }
                    }
                },
                retraction_extra_prime_amount:
                {
                    label: Retraction Extra Prime Amount,
                    description: Some material can ooze away during a travel move, which can be compensated for here.,
                    unit: mm³,
                    type: float,
                    default_value: 0,
                    minimum_value_warning: -0.0001,
                    maximum_value_warning: 5.0,
                    enabled: retraction_enable,
                    settable_per_mesh: false,
                    settable_per_extruder: true
                },
                retraction_min_travel:
                {
                    label: Retraction Minimum Travel,
                    description: The minimum distance of travel needed for a retraction to happen at all. This helps to get fewer retractions in a small area.,
                    unit: mm,
                    type: float,
                    default_value: 1.5,
                    value: line_width * 2,
                    minimum_value: 0,
                    minimum_value_warning: line_width * 1.5,
                    maximum_value_warning: 10,
                    settable_per_mesh: false,
                    settable_per_extruder: true
                },
                retraction_count_max:
                {
                    label: Maximum Retraction Count,
                    description: This setting limits the number of retractions occurring within the minimum extrusion distance window. Further retractions within this window will be ignored. This avoids retracting repeatedly on the same piece of filament, as that can flatten the filament and cause grinding issues.,
                    default_value: 90,
                    minimum_value: 0,
                    maximum_value_warning: 100,
                    type: int,
                    enabled: retraction_enable,
                    settable_per_mesh: false,
                    settable_per_extruder: true
                },
                retraction_extrusion_window:
                {
                    label: Minimum Extrusion Distance Window,
                    description: The window in which the maximum retraction count is enforced. This value should be approximately the same as the retraction distance, so that effectively the number of times a retraction passes the same patch of material is limited.,
                    unit: mm,
                    type: float,
                    default_value: 4.5,
                    minimum_value: 0,
                    maximum_value_warning: retraction_amount * 2,
                    value: retraction_amount,
                    enabled: retraction_enable,
                    settable_per_mesh: false,
                    settable_per_extruder: true
                },
                limit_support_retractions:
                {
                    label: Limit Support Retractions,
                    description: Omit retraction when moving from support to support in a straight line. Enabling this setting saves print time, but can lead to excessive stringing within the support structure.,
                    type: bool,
                    default_value: true,
                    enabled: retraction_enable and (support_enable or support_tree_enable),
                    settable_per_mesh: false,
                    settable_per_extruder: true
                },
                retraction_combing:
                {
                    label: Combing Mode,
                    description: Combing keeps the nozzle within already printed areas when traveling. This results in slightly longer travel moves but reduces the need for retractions. If combing is off, the material will retract and the nozzle moves in a straight line to the next point. It is also possible to avoid combing over top/bottom skin areas or to only comb within the infill.,
                    type: enum,
                    options:
                    {
                        off: Off,
                        all: All,
                        noskin: Not in Skin,
                        infill: Within Infill
                    },
                    default_value: all,
                    resolve: 'noskin' if 'noskin' in extruderValues('retraction_combing') else ('infill' if 'infill' in extruderValues('retraction_combing') else ('all' if 'all' in extruderValues('retraction_combing') else 'off')),
                    settable_per_mesh: false,
                    settable_per_extruder: false
                },
                retraction_combing_max_distance:
                {
                    label: Max Comb Distance With No Retract,
                    description: When non-zero, combing travel moves that are longer than this distance will use retraction.,
                    unit: mm,
                    type: float,
                    default_value: 0,
                    minimum_value: 0,
                    enabled: resolveOrValue('retraction_combing') != 'off',
                    settable_per_mesh: false,
                    settable_per_extruder: true
                },
                travel_retract_before_outer_wall:
                {
                    label: Retract Before Outer Wall,
                    description: Always retract when moving to start an outer wall.,
                    type: bool,
                    default_value: false,
                    enabled: retraction_enable,
                    settable_per_mesh: false,
                    settable_per_extruder: false
                },
                travel_avoid_other_parts:
                {
                    label: Avoid Printed Parts When Traveling,
                    description: The nozzle avoids already printed parts when traveling. This option is only available when combing is enabled.,
                    type: bool,
                    default_value: true,
                    enabled: resolveOrValue('retraction_combing') != 'off',
                    settable_per_mesh: false,
                    settable_per_extruder: true
                },
                travel_avoid_supports:
                {
                    label: Avoid Supports When Traveling,
                    description: The nozzle avoids already printed supports when traveling. This option is only available when combing is enabled.,
                    type: bool,
                    default_value: false,
                    enabled: resolveOrValue('retraction_combing') != 'off' and travel_avoid_other_parts,
                    settable_per_mesh: false,
                    settable_per_extruder: true
                },
                travel_avoid_distance:
                {
                    label: Travel Avoid Distance,
                    description: The distance between the nozzle and already printed parts when avoiding during travel moves.,
                    unit: mm,
                    type: float,
                    default_value: 0.625,
                    value: machine_nozzle_tip_outer_diameter / 2 * 1.25,
                    minimum_value: 0,
                    minimum_value_warning: machine_nozzle_tip_outer_diameter * 0.5,
                    maximum_value_warning: machine_nozzle_tip_outer_diameter * 5,
                    enabled: resolveOrValue('retraction_combing') != 'off' and travel_avoid_other_parts,
                    settable_per_mesh: false,
                    settable_per_extruder: true
                },
                layer_start_x:
                {
                    label: Layer Start X,
                    description: The X coordinate of the position near where to find the part to start printing each layer.,
                    unit: mm,
                    type: float,
                    default_value: 0.0,
                    minimum_value: machine_width / -2 if machine_center_is_zero else 0,
                    settable_per_mesh: false,
                    settable_per_extruder: true,
                    settable_per_meshgroup: true
                },
                layer_start_y:
                {
                    label: Layer Start Y,
                    description: The Y coordinate of the position near where to find the part to start printing each layer.,
                    unit: mm,
                    type: float,
                    default_value: 0.0,
                    minimum_value: machine_depth / -2 if machine_center_is_zero else 0,
                    settable_per_mesh: false,
                    settable_per_extruder: true,
                    settable_per_meshgroup: true
                },
                retraction_hop_enabled: {
                    label: Z Hop When Retracted,
                    description: Whenever a retraction is done, the build plate is lowered to create clearance between the nozzle and the print. It prevents the nozzle from hitting the print during travel moves, reducing the chance to knock the print from the build plate.,
                    type: bool,
                    default_value: false,
                    enabled: retraction_enable,
                    settable_per_mesh: false,
                    settable_per_extruder: true
                },
                retraction_hop_only_when_collides: {
                    label: Z Hop Only Over Printed Parts,
                    description: Only perform a Z Hop when moving over printed parts which cannot be avoided by horizontal motion by Avoid Printed Parts when Traveling.,
                    type: bool,
                    default_value: false,
                    enabled: retraction_enable and retraction_hop_enabled and travel_avoid_other_parts,
                    settable_per_mesh: false,
                    settable_per_extruder: true
                },
                retraction_hop: {
                    label: Z Hop Height,
                    description: The height difference when performing a Z Hop.,
                    unit: mm,
                    type: float,
                    default_value: 1,
                    minimum_value_warning: 0,
                    maximum_value_warning: 10,
                    enabled: retraction_enable and retraction_hop_enabled,
                    settable_per_mesh: false,
                    settable_per_extruder: true
                },
                retraction_hop_after_extruder_switch: {
                    label: Z Hop After Extruder Switch,
                    description: After the machine switched from one extruder to the other, the build plate is lowered to create clearance between the nozzle and the print. This prevents the nozzle from leaving oozed material on the outside of a print.,
                    type: bool,
                    default_value: true,
                    enabled: retraction_hop_enabled and extruders_enabled_count > 1,
                    settable_per_mesh: false,
                    settable_per_extruder: true
                },
                retraction_hop_after_extruder_switch_height: 
                {
                    label: Z Hop After Extruder Switch Height,
                    description: The height difference when performing a Z Hop after extruder switch.,
                    unit: mm,
                    type: float,
                    default_value: 1,
                    value: retraction_hop,
                    minimum_value_warning: 0,
                    maximum_value_warning: 10,
                    enabled: retraction_enable and retraction_hop_after_extruder_switch and extruders_enabled_count > 1,
                    settable_per_mesh: false,
                    settable_per_extruder: true
                }
            }
        },
        cooling:
        {
            label: Cooling,
            icon: category_cool,
            description: Cooling,
            type: category,
            children:
            {
                cool_fan_enabled:
                {
                    label: Enable Print Cooling,
                    description: Enables the print cooling fans while printing. The fans improve print quality on layers with short layer times and bridging / overhangs.,
                    type: bool,
                    default_value: true,
                    settable_per_mesh: false,
                    settable_per_extruder: true
                },
                cool_fan_speed:
                {
                    label: Fan Speed,
                    description: The speed at which the print cooling fans spin.,
                    unit: %,
                    type: float,
                    minimum_value: 0,
                    maximum_value: 100,
                    default_value: 100,
                    value: 100.0 if cool_fan_enabled else 0.0,
                    enabled: cool_fan_enabled,
                    settable_per_mesh: false,
                    settable_per_extruder: true,
                    children:
                    {
                        cool_fan_speed_min:
                        {
                            label: Regular Fan Speed,
                            description: The speed at which the fans spin before hitting the threshold. When a layer prints faster than the threshold, the fan speed gradually inclines towards the maximum fan speed.,
                            unit: %,
                            type: float,
                            minimum_value: 0,
                            maximum_value: 100,
                            value: cool_fan_speed,
                            default_value: 100,
                            enabled: cool_fan_enabled,
                            settable_per_mesh: false,
                            settable_per_extruder: true
                        },
                        cool_fan_speed_max:
                        {
                            label: Maximum Fan Speed,
                            description: The speed at which the fans spin on the minimum layer time. The fan speed gradually increases between the regular fan speed and maximum fan speed when the threshold is hit.,
                            unit: %,
                            type: float,
                            minimum_value: max(0, cool_fan_speed_min),
                            maximum_value: 100,
                            default_value: 100,
                            enabled: cool_fan_enabled,
                            value: cool_fan_speed,
                            settable_per_mesh: false,
                            settable_per_extruder: true
                        }
                    }
                },
                cool_min_layer_time_fan_speed_max:
                {
                    label: Regular/Maximum Fan Speed Threshold,
                    description: The layer time which sets the threshold between regular fan speed and maximum fan speed. Layers that print slower than this time use regular fan speed. For faster layers the fan speed gradually increases towards the maximum fan speed.,
                    unit: s,
                    type: float,
                    default_value: 10,
                    maximum_value_warning: 600,
                    settable_per_mesh: false,
                    settable_per_extruder: true
                },
                cool_fan_speed_0:
                {
                    label: Initial Fan Speed,
                    description: The speed at which the fans spin at the start of the print. In subsequent layers the fan speed is gradually increased up to the layer corresponding to Regular Fan Speed at Height.,
                    unit: %,
                    type: float,
                    minimum_value: 0,
                    maximum_value: 100,
                    default_value: 0,
                    enabled: cool_fan_enabled,
                    settable_per_mesh: false,
                    settable_per_extruder: true
                },
                cool_fan_full_at_height:
                {
                    label: Regular Fan Speed at Height,
                    description: The height at which the fans spin on regular fan speed. At the layers below the fan speed gradually increases from Initial Fan Speed to Regular Fan Speed.,
                    unit: mm,
                    type: float,
                    default_value: 0.5,
                    value: 0 if resolveOrValue('adhesion_type') == 'raft' else resolveOrValue('layer_height_0'),
                    minimum_value: 0,
                    maximum_value_warning: 10.0,
                    settable_per_mesh: false,
                    settable_per_extruder: true,
                    children:
                    {
                        cool_fan_full_layer:
                        {
                            label: Regular Fan Speed at Layer,
                            description: The layer at which the fans spin on regular fan speed. If regular fan speed at height is set, this value is calculated and rounded to a whole number.,
                            type: int,
                            default_value: 2,
                            minimum_value: 1,
                            maximum_value_warning: 10 / resolveOrValue('layer_height'),
                            value: max(1, int(math.floor((cool_fan_full_at_height - resolveOrValue('layer_height_0')) / resolveOrValue('layer_height')) + 2)),
                            settable_per_mesh: false,
                            settable_per_extruder: true
                        }
                    }
                },
                cool_min_layer_time:
                {
                    label: Minimum Layer Time,
                    description: The minimum time spent in a layer. This forces the printer to slow down, to at least spend the time set here in one layer. This allows the printed material to cool down properly before printing the next layer. Layers may still take shorter than the minimal layer time if Lift Head is disabled and if the Minimum Speed would otherwise be violated.,
                    unit: s,
                    type: float,
                    default_value: 5,
                    minimum_value: 0,
                    maximum_value_warning: 600,
                    settable_per_mesh: false,
                    settable_per_extruder: true
                },
                cool_min_speed:
                {
                    label: Minimum Speed,
                    description: The minimum print speed, despite slowing down due to the minimum layer time. When the printer would slow down too much, the pressure in the nozzle would be too low and result in bad print quality.,
                    unit: mm/s,
                    type: float,
                    default_value: 10,
                    minimum_value: 0,
                    maximum_value_warning: 100,
                    settable_per_mesh: false,
                    settable_per_extruder: true
                },
                cool_lift_head:
                {
                    label: Lift Head,
                    description: When the minimum speed is hit because of minimum layer time, lift the head away from the print and wait the extra time until the minimum layer time is reached.,
                    type: bool,
                    default_value: false,
                    settable_per_mesh: false,
                    settable_per_extruder: true
                }
            }
        },
        support:
        {
            label: Support,
            type: category,
            icon: category_support,
            description: Support,
            children:
            {
                support_enable:
                {
                    label: Generate Support,
                    description: Generate structures to support parts of the model which have overhangs. Without these structures, such parts would collapse during printing.,
                    type: bool,
                    default_value: false,
                    settable_per_mesh: true,
                    settable_per_extruder: false
                },
                support_extruder_nr:
                {
                    label: Support Extruder,
                    description: The extruder train to use for printing the support. This is used in multi-extrusion.,
                    type: extruder,
                    default_value: 0,
                    value: int(defaultExtruderPosition()),
                    enabled: (support_enable or support_tree_enable) and extruders_enabled_count > 1,
                    settable_per_mesh: false,
                    settable_per_extruder: false,
                    children: {
                        support_infill_extruder_nr:
                        {
                            label: Support Infill Extruder,
                            description: The extruder train to use for printing the infill of the support. This is used in multi-extrusion.,
                            type: extruder,
                            default_value: 0,
                            value: support_extruder_nr,
                            enabled: (support_enable or support_tree_enable) and extruders_enabled_count > 1,
                            settable_per_mesh: false,
                            settable_per_extruder: false
                        },
                        support_extruder_nr_layer_0:
                        {
                            label: First Layer Support Extruder,
                            description: The extruder train to use for printing the first layer of support infill. This is used in multi-extrusion.,
                            type: extruder,
                            default_value: 0,
                            value: support_extruder_nr,
                            enabled: (support_enable or support_tree_enable) and extruders_enabled_count > 1,
                            settable_per_mesh: false,
                            settable_per_extruder: false
                        },
                        support_interface_extruder_nr:
                        {
                            label: Support Interface Extruder,
                            description: The extruder train to use for printing the roofs and floors of the support. This is used in multi-extrusion.,
                            type: extruder,
                            default_value: 0,
                            value: support_extruder_nr,
                            enabled: (support_enable or support_tree_enable) and extruders_enabled_count > 1,
                            settable_per_mesh: false,
                            settable_per_extruder: false,
                            children:
                            {
                                support_roof_extruder_nr:
                                {
                                    label: Support Roof Extruder,
                                    description: The extruder train to use for printing the roofs of the support. This is used in multi-extrusion.,
                                    type: extruder,
                                    default_value: 0,
                                    value: support_interface_extruder_nr,
                                    enabled: (support_enable or support_tree_enable) and extruders_enabled_count > 1,
                                    settable_per_mesh: false,
                                    settable_per_extruder: false
                                },
                                support_bottom_extruder_nr:
                                {
                                    label: Support Floor Extruder,
                                    description: The extruder train to use for printing the floors of the support. This is used in multi-extrusion.,
                                    type: extruder,
                                    default_value: 0,
                                    value: support_interface_extruder_nr,
                                    enabled: (support_enable or support_tree_enable) and extruders_enabled_count > 1,
                                    settable_per_mesh: false,
                                    settable_per_extruder: false
                                }
                            }
                        }
                    }
                },
                support_type:
                {
                    label: Support Placement,
                    description: Adjusts the placement of the support structures. The placement can be set to touching build plate or everywhere. When set to everywhere the support structures will also be printed on the model.,
                    type: enum,
                    options:
                    {
                        buildplate: Touching Buildplate,
                        everywhere: Everywhere
                    },
                    default_value: everywhere,
                    resolve: 'everywhere' if 'everywhere' in extruderValues('support_type') else 'buildplate',
                    enabled: support_enable or support_tree_enable,
                    settable_per_mesh: false,
                    settable_per_extruder: false
                },
                support_angle:
                {
                    label: Support Overhang Angle,
                    description: The minimum angle of overhangs for which support is added. At a value of 0° all overhangs are supported, 90° will not provide any support.,
                    unit: °,
                    type: float,
                    minimum_value: 0,
                    maximum_value: 90,
                    maximum_value_warning: 80,
                    default_value: 50,
                    limit_to_extruder: support_roof_extruder_nr if support_roof_enable else support_infill_extruder_nr,
                    enabled: support_enable or support_tree_enable,
                    settable_per_mesh: true
                },
                support_pattern:
                {
                    label: Support Pattern,
                    description: The pattern of the support structures of the print. The different options available result in sturdy or easy to remove support.,
                    type: enum,
                    options:
                    {
                        lines: Lines,
                        grid: Grid,
                        triangles: Triangles,
                        concentric: Concentric,
                        zigzag: Zig Zag,
                        cross: Cross,
                        gyroid: Gyroid
                    },
                    default_value: zigzag,
                    enabled: support_enable or support_tree_enable,
                    limit_to_extruder: support_infill_extruder_nr,
                    settable_per_mesh: false,
                    settable_per_extruder: true
                },
                support_wall_count:
                {
                    label: Support Wall Line Count,
                    description: The number of walls with which to surround support infill. Adding a wall can make support print more reliably and can support overhangs better, but increases print time and material used.,
                    default_value: 1,
                    minimum_value: 0,
                    minimum_value_warning: 1 if support_pattern == 'concentric' else 0,
                    maximum_value_warning: 3,
                    type: int,
                    value: 1 if support_tree_enable else (1 if (support_pattern == 'grid' or support_pattern == 'triangles' or support_pattern == 'concentric') else 0),
                    enabled: support_enable or support_tree_enable,
                    limit_to_extruder: support_infill_extruder_nr,
                    settable_per_mesh: false,
                    settable_per_extruder: true
                },
                zig_zaggify_support:
                {
                    label: Connect Support Lines,
                    description: Connect the ends of the support lines together. Enabling this setting can make your support more sturdy and reduce underextrusion, but it will cost more material.,
                    type: bool,
                    default_value: false,
                    value: support_pattern == 'cross' or support_pattern == 'gyroid',
                    enabled: (support_enable or support_tree_enable) and (support_pattern == 'grid' or support_pattern == 'triangles' or support_pattern == 'cross' or support_pattern == 'gyroid'),
                    limit_to_extruder: support_infill_extruder_nr,
                    settable_per_mesh: false,
                    settable_per_extruder: true
                },
                support_connect_zigzags:
                {
                    label: Connect Support ZigZags,
                    description: Connect the ZigZags. This will increase the strength of the zig zag support structure.,
                    type: bool,
                    default_value: true,
                    enabled: (support_enable or support_tree_enable) and support_pattern == 'zigzag',
                    limit_to_extruder: support_infill_extruder_nr,
                    settable_per_mesh: false,
                    settable_per_extruder: true
                },
                support_infill_rate:
                {
                    label: Support Density,
                    description: Adjusts the density of the support structure. A higher value results in better overhangs, but the supports are harder to remove.,
                    unit: %,
                    type: float,
                    minimum_value: 0,
                    maximum_value_warning: 100,
                    default_value: 15,
                    value: 15 if support_enable else 0 if support_tree_enable else 15,
                    enabled: support_enable or support_tree_enable,
                    limit_to_extruder: support_infill_extruder_nr,
                    settable_per_mesh: false,
                    settable_per_extruder: true,
                    children:
                    {
                        support_line_distance:
                        {
                            label: Support Line Distance,
                            description: Distance between the printed support structure lines. This setting is calculated by the support density.,
                            unit: mm,
                            type: float,
                            minimum_value: 0,
                            minimum_value_warning: support_line_width,
                            default_value: 2.66,
                            enabled: support_enable or support_tree_enable,
                            value: 0 if support_infill_rate == 0 else (support_line_width * 100) / support_infill_rate * (2 if support_pattern == 'grid' else (3 if support_pattern == 'triangles' else 1)),
                            limit_to_extruder: support_infill_extruder_nr,
                            settable_per_mesh: false,
                            settable_per_extruder: true
                        },
                        support_initial_layer_line_distance:
                        {
                            label: Initial Layer Support Line Distance,
                            description: Distance between the printed initial layer support structure lines. This setting is calculated by the support density.,
                            unit: mm,
                            type: float,
                            minimum_value: 0,
                            minimum_value_warning: support_line_width,
                            default_value: 2.66,
                            enabled: support_enable or support_tree_enable,
                            value: support_line_distance,
                            limit_to_extruder: support_infill_extruder_nr,
                            settable_per_mesh: false,
                            settable_per_extruder: true
                        }
                    }
                },
                support_infill_angles:
                {
                    label: Support Infill Line Directions,
                    description: A list of integer line directions to use. Elements from the list are used sequentially as the layers progress and when the end of the list is reached, it starts at the beginning again. The list items are separated by commas and the whole list is contained in square brackets. Default is an empty list which means use the default angle 0 degrees.,
                    type: [int],
                    default_value: [ ],
                    enabled: (support_enable or support_tree_enable) and support_pattern != 'concentric' and support_infill_rate > 0,
                    limit_to_extruder: support_infill_extruder_nr,
                    settable_per_mesh: false,
                    settable_per_extruder: true
                },
                support_brim_enable:
                {
                    label: Enable Support Brim,
                    description: Generate a brim within the support infill regions of the first layer. This brim is printed underneath the support, not around it. Enabling this setting increases the adhesion of support to the build plate.,
                    type: bool,
                    default_value: false,
                    enabled: support_enable or support_tree_enable,
                    limit_to_extruder: support_infill_extruder_nr,
                    settable_per_mesh: false,
                    settable_per_extruder: true
                },
                support_brim_width:
                {
                    label: Support Brim Width,
                    description: The width of the brim to print underneath the support. A larger brim enhances adhesion to the build plate, at the cost of some extra material.,
                    type: float,
                    unit: mm,
                    default_value: 8.0,
                    minimum_value: 0.0,
                    maximum_value_warning: 50.0,
                    enabled: (support_enable or support_tree_enable) and support_brim_enable,
                    settable_per_mesh: false,
                    settable_per_extruder: true,
                    limit_to_extruder: support_infill_extruder_nr,
                    children:
                    {
                        support_brim_line_count:
                        {
                            label: Support Brim Line Count,
                            description: The number of lines used for the support brim. More brim lines enhance adhesion to the build plate, at the cost of some extra material.,
                            type: int,
                            default_value: 20,
                            minimum_value: 0,
                            maximum_value_warning: 50 / skirt_brim_line_width,
                            value: math.ceil(support_brim_width / (skirt_brim_line_width * initial_layer_line_width_factor / 100.0)),
                            enabled: (support_enable or support_tree_enable) and support_brim_enable,
                            settable_per_mesh: false,
                            settable_per_extruder: true,
                            limit_to_extruder: support_infill_extruder_nr
                        }
                    }
                },
                support_z_distance:
                {
                    label: Support Z Distance,
                    description: Distance from the top/bottom of the support structure to the print. This gap provides clearance to remove the supports after the model is printed. This value is rounded up to a multiple of the layer height.,
                    unit: mm,
                    type: float,
                    minimum_value: 0,
                    maximum_value_warning: machine_nozzle_size,
                    default_value: 0.1,
                    limit_to_extruder: support_interface_extruder_nr if support_interface_enable else support_infill_extruder_nr,
                    enabled: support_enable or support_tree_enable,
                    settable_per_mesh: true,
                    children:
                    {
                        support_top_distance:
                        {
                            label: Support Top Distance,
                            description: Distance from the top of the support to the print.,
                            unit: mm,
                            minimum_value: 0,
                            maximum_value_warning: machine_nozzle_size,
                            default_value: 0.1,
                            type: float,
                            enabled: support_enable or support_tree_enable,
                            value: extruderValue(support_roof_extruder_nr if support_roof_enable else support_infill_extruder_nr, 'support_z_distance'),
                            limit_to_extruder: support_roof_extruder_nr if support_roof_enable else support_infill_extruder_nr,
                            settable_per_mesh: true
                        },
                        support_bottom_distance:
                        {
                            label: Support Bottom Distance,
                            description: Distance from the print to the bottom of the support.,
                            unit: mm,
                            minimum_value: 0,
                            maximum_value_warning: machine_nozzle_size,
                            default_value: 0.1,
                            value: extruderValue(support_bottom_extruder_nr if support_bottom_enable else support_infill_extruder_nr, 'support_z_distance') if support_type == 'everywhere' else 0,
                            limit_to_extruder: support_bottom_extruder_nr if support_bottom_enable else support_infill_extruder_nr,
                            type: float,
                            enabled: (support_enable or support_tree_enable) and resolveOrValue('support_type') == 'everywhere',
                            settable_per_mesh: true
                        }
                    }
                },
                support_xy_distance:
                {
                    label: Support X/Y Distance,
                    description: Distance of the support structure from the print in the X/Y directions.,
                    unit: mm,
                    type: float,
                    minimum_value: 0,
                    maximum_value_warning: 1.5 * machine_nozzle_tip_outer_diameter,
                    default_value: 0.7,
                    limit_to_extruder: support_infill_extruder_nr,
                    enabled: support_enable or support_tree_enable,
                    settable_per_mesh: true
                },
                support_xy_overrides_z:
                {
                    label: Support Distance Priority,
                    description: Whether the Support X/Y Distance overrides the Support Z Distance or vice versa. When X/Y overrides Z the X/Y distance can push away the support from the model, influencing the actual Z distance to the overhang. We can disable this by not applying the X/Y distance around overhangs.,
                    type: enum,
                    options:
                    {
                        xy_overrides_z: X/Y overrides Z,
                        z_overrides_xy: Z overrides X/Y
                    },
                    default_value: z_overrides_xy,
                    limit_to_extruder: support_infill_extruder_nr,
                    enabled: support_enable,
                    settable_per_mesh: true
                },
                support_xy_distance_overhang:
                {
                    label: Minimum Support X/Y Distance,
                    description: Distance of the support structure from the overhang in the X/Y directions. ,
                    unit: mm,
                    type: float,
                    minimum_value: 0,
                    minimum_value_warning: support_xy_distance - support_line_width * 2,
                    maximum_value_warning: support_xy_distance,
                    default_value: 0.2,
                    value: machine_nozzle_size / 2,
                    limit_to_extruder: support_infill_extruder_nr,
                    enabled: support_enable and support_xy_overrides_z == 'z_overrides_xy',
                    settable_per_mesh: true
                },
                support_bottom_stair_step_height:
                {
                    label: Support Stair Step Height,
                    description: The height of the steps of the stair-like bottom of support resting on the model. A low value makes the support harder to remove, but too high values can lead to unstable support structures. Set to zero to turn off the stair-like behaviour.,
                    unit: mm,
                    type: float,
                    default_value: 0.3,
                    limit_to_extruder: support_bottom_extruder_nr if support_bottom_enable else support_infill_extruder_nr,
                    minimum_value: 0,
                    maximum_value_warning: 1.0,
                    enabled: support_enable,
                    settable_per_mesh: true
                },
                support_bottom_stair_step_width:
                {
                    label: Support Stair Step Maximum Width,
                    description: The maximum width of the steps of the stair-like bottom of support resting on the model. A low value makes the support harder to remove, but too high values can lead to unstable support structures.,
                    unit: mm,
                    type: float,
                    default_value: 5.0,
                    limit_to_extruder: support_interface_extruder_nr if support_interface_enable else support_infill_extruder_nr,
                    minimum_value: 0,
                    maximum_value_warning: 10.0,
                    enabled: support_enable,
                    settable_per_mesh: true
                },
                support_join_distance:
                {
                    label: Support Join Distance,
                    description: The maximum distance between support structures in the X/Y directions. When separate structures are closer together than this value, the structures merge into one.,
                    unit: mm,
                    type: float,
                    default_value: 2.0,
                    limit_to_extruder: support_infill_extruder_nr,
                    minimum_value_warning: 0,
                    maximum_value_warning: 10,
                    enabled: support_enable,
                    settable_per_mesh: true
                },
                support_offset:
                {
                    label: Support Horizontal Expansion,
                    description: Amount of offset applied to all support polygons in each layer. Positive values can smooth out the support areas and result in more sturdy support.,
                    unit: mm,
                    type: float,
                    default_value: 0,
                    limit_to_extruder: support_infill_extruder_nr,
                    minimum_value_warning: -1 * machine_nozzle_size,
                    maximum_value_warning: 10 * machine_nozzle_size,
                    enabled: support_enable,
                    settable_per_mesh: true
                },
                support_infill_sparse_thickness:
                {
                    label: Support Infill Layer Thickness,
                    description: The thickness per layer of support infill material. This value should always be a multiple of the layer height and is otherwise rounded.,
                    unit: mm,
                    type: float,
                    default_value: 0.1,
                    minimum_value: resolveOrValue('layer_height'),
                    maximum_value_warning: 0.75 * machine_nozzle_size,
                    maximum_value: resolveOrValue('layer_height') * 8,
                    value: resolveOrValue('layer_height'),
                    enabled: (support_enable or support_tree_enable) and support_infill_rate > 0,
                    limit_to_extruder: support_infill_extruder_nr,
                    settable_per_mesh: false
                },
                gradual_support_infill_steps:
                {
                    label: Gradual Support Infill Steps,
                    description: Number of times to reduce the support infill density by half when getting further below top surfaces. Areas which are closer to top surfaces get a higher density, up to the Support Infill Density.,
                    default_value: 0,
                    type: int,
                    minimum_value: 0,
                    maximum_value_warning: 1 if (support_pattern == 'cross' or support_pattern == 'lines' or support_pattern == 'zigzag' or support_pattern == 'concentric') else 5,
                    maximum_value: 999999 if support_line_distance == 0 else (20 - math.log(support_line_distance) / math.log(2)),
                    enabled: (support_enable or support_tree_enable) and support_infill_rate > 0,
                    limit_to_extruder: support_infill_extruder_nr,
                    settable_per_mesh: false
                },
                gradual_support_infill_step_height:
                {
                    label: Gradual Support Infill Step Height,
                    description: The height of support infill of a given density before switching to half the density.,
                    unit: mm,
                    type: float,
                    default_value: 1,
                    minimum_value: 0.0001,
                    minimum_value_warning: 3 * resolveOrValue('layer_height'),
                    enabled: (support_enable or support_tree_enable) and support_infill_rate > 0 and gradual_support_infill_steps > 0,
                    limit_to_extruder: support_infill_extruder_nr,
                    settable_per_mesh: false
                },
                minimum_support_area: 
                {
                    label: Minimum Support Area,
                    description: Minimum area size for support polygons. Polygons which have an area smaller than this value will not be generated.,
                    unit: mm²,
                    type: float,
                    default_value: 0.0,
                    minimum_value: 0,
                    maximum_value_warning: 5,
                    enabled: support_enable,
                    limit_to_extruder: support_infill_extruder_nr,
                    settable_per_mesh: true
                },
                support_interface_enable:
                {
                    label: Enable Support Interface,
                    description: Generate a dense interface between the model and the support. This will create a skin at the top of the support on which the model is printed and at the bottom of the support, where it rests on the model.,
                    type: bool,
                    default_value: false,
                    limit_to_extruder: support_interface_extruder_nr,
                    enabled: support_enable or support_tree_enable,
                    settable_per_mesh: true,
                    children:
                    {
                        support_roof_enable:
                        {
                            label: Enable Support Roof,
                            description: Generate a dense slab of material between the top of support and the model. This will create a skin between the model and support.,
                            type: bool,
                            default_value: false,
                            value: extruderValue(support_roof_extruder_nr, 'support_interface_enable'),
                            limit_to_extruder: support_roof_extruder_nr,
                            enabled: support_enable or support_tree_enable,
                            settable_per_mesh: true
                        },
                        support_bottom_enable:
                        {
                            label: Enable Support Floor,
                            description: Generate a dense slab of material between the bottom of the support and the model. This will create a skin between the model and support.,
                            type: bool,
                            default_value: false,
                            value: extruderValue(support_bottom_extruder_nr, 'support_interface_enable'),
                            limit_to_extruder: support_bottom_extruder_nr,
                            enabled: support_enable or support_tree_enable,
                            settable_per_mesh: true
                        }
                    }
                },
                support_interface_height:
                {
                    label: Support Interface Thickness,
                    description: The thickness of the interface of the support where it touches with the model on the bottom or the top.,
                    unit: mm,
                    type: float,
                    default_value: 1,
                    minimum_value: 0,
                    minimum_value_warning: 0.2 + layer_height,
                    maximum_value_warning: 10,
                    limit_to_extruder: support_interface_extruder_nr,
                    enabled: support_interface_enable and (support_enable or support_tree_enable),
                    settable_per_mesh: true,
                    children:
                    {
                        support_roof_height:
                        {
                            label: Support Roof Thickness,
                            description: The thickness of the support roofs. This controls the amount of dense layers at the top of the support on which the model rests.,
                            unit: mm,
                            type: float,
                            default_value: 1,
                            minimum_value: 0,
                            minimum_value_warning: 0.2 + layer_height,
                            maximum_value_warning: 10,
                            value: extruderValue(support_roof_extruder_nr, 'support_interface_height'),
                            limit_to_extruder: support_roof_extruder_nr,
                            enabled: support_roof_enable and (support_enable or support_tree_enable),
                            settable_per_mesh: true
                        },
                        support_bottom_height:
                        {
                            label: Support Floor Thickness,
                            description: The thickness of the support floors. This controls the number of dense layers that are printed on top of places of a model on which support rests.,
                            unit: mm,
                            type: float,
                            default_value: 1,
                            value: extruderValue(support_bottom_extruder_nr, 'support_interface_height'),
                            minimum_value: 0,
                            minimum_value_warning: min(0.2 + layer_height, support_bottom_stair_step_height),
                            maximum_value_warning: 10,
                            limit_to_extruder: support_bottom_extruder_nr,
                            enabled: support_bottom_enable and (support_enable or support_tree_enable),
                            settable_per_mesh: true
                        }
                    }
                },
                support_interface_skip_height: {
                    label: Support Interface Resolution,
                    description: When checking where there's model above and below the support, take steps of the given height. Lower values will slice slower, while higher values may cause normal support to be printed in some places where there should have been support interface.,
                    unit: mm,
                    type: float,
                    default_value: 0.3,
                    minimum_value: 0,
                    maximum_value_warning: support_interface_height,
                    limit_to_extruder: support_interface_extruder_nr,
                    enabled: support_interface_enable and (support_enable or support_tree_enable),
                    settable_per_mesh: true
                },
                support_interface_density:
                {
                    label: Support Interface Density,
                    description: Adjusts the density of the roofs and floors of the support structure. A higher value results in better overhangs, but the supports are harder to remove.,
                    unit: %,
                    type: float,
                    default_value: 100,
                    minimum_value: 0,
                    maximum_value_warning: 100,
                    limit_to_extruder: support_interface_extruder_nr,
                    enabled: support_interface_enable and (support_enable or support_tree_enable),
                    settable_per_mesh: false,
                    settable_per_extruder: true,
                    children:
                    {
                        support_roof_density:
                        {
                            label: Support Roof Density,
                            description: The density of the roofs of the support structure. A higher value results in better overhangs, but the supports are harder to remove.,
                            unit: %,
                            type: float,
                            default_value: 100,
                            minimum_value: 0,
                            maximum_value: 100,
                            limit_to_extruder: support_roof_extruder_nr,
                            enabled: support_roof_enable and (support_enable or support_tree_enable),
                            value: extruderValue(support_roof_extruder_nr, 'support_interface_density'),
                            settable_per_mesh: false,
                            settable_per_extruder: true,
                            children:
                            {
                                support_roof_line_distance:
                                {
                                    label: Support Roof Line Distance,
                                    description: Distance between the printed support roof lines. This setting is calculated by the Support Roof Density, but can be adjusted separately.,
                                    unit: mm,
                                    type: float,
                                    default_value: 0.4,
                                    minimum_value: 0,
                                    minimum_value_warning: support_roof_line_width - 0.0001,
                                    value: 0 if support_roof_density == 0 else (support_roof_line_width * 100) / support_roof_density * (2 if support_roof_pattern == 'grid' else (3 if support_roof_pattern == 'triangles' else 1)),
                                    limit_to_extruder: support_roof_extruder_nr,
                                    enabled: support_roof_enable and (support_enable or support_tree_enable),
                                    settable_per_mesh: false,
                                    settable_per_extruder: true
                                }
                            }
                        },
                        support_bottom_density:
                        {
                            label: Support Floor Density,
                            description: The density of the floors of the support structure. A higher value results in better adhesion of the support on top of the model.,
                            unit: %,
                            type: float,
                            default_value: 100,
                            minimum_value: 0,
                            maximum_value: 100,
                            limit_to_extruder: support_bottom_extruder_nr,
                            enabled: support_bottom_enable and (support_enable or support_tree_enable),
                            value: extruderValue(support_bottom_extruder_nr, 'support_interface_density'),
                            settable_per_mesh: false,
                            settable_per_extruder: true,
                            children:
                            {
                                support_bottom_line_distance:
                                {
                                    label: Support Floor Line Distance,
                                    description: Distance between the printed support floor lines. This setting is calculated by the Support Floor Density, but can be adjusted separately.,
                                    unit: mm,
                                    type: float,
                                    default_value: 0.4,
                                    minimum_value: 0,
                                    minimum_value_warning: support_bottom_line_width - 0.0001,
                                    value: 0 if support_bottom_density == 0 else (support_bottom_line_width * 100) / support_bottom_density * (2 if support_bottom_pattern == 'grid' else (3 if support_bottom_pattern == 'triangles' else 1)),
                                    limit_to_extruder: support_bottom_extruder_nr,
                                    enabled: support_bottom_enable and (support_enable or support_tree_enable),
                                    settable_per_mesh: false,
                                    settable_per_extruder: true
                                }
                            }
                        }
                    }
                },
                support_interface_pattern:
                {
                    label: Support Interface Pattern,
                    description: The pattern with which the interface of the support with the model is printed.,
                    type: enum,
                    options:
                    {
                        lines: Lines,
                        grid: Grid,
                        triangles: Triangles,
                        concentric: Concentric,
                        zigzag: Zig Zag
                    },
                    default_value: concentric,
                    limit_to_extruder: support_interface_extruder_nr,
                    enabled: support_interface_enable and (support_enable or support_tree_enable),
                    settable_per_mesh: false,
                    settable_per_extruder: true,
                    children:
                    {
                        support_roof_pattern:
                        {
                            label: Support Roof Pattern,
                            description: The pattern with which the roofs of the support are printed.,
                            type: enum,
                            options:
                            {
                                lines: Lines,
                                grid: Grid,
                                triangles: Triangles,
                                concentric: Concentric,
                                zigzag: Zig Zag
                            },
                            default_value: concentric,
                            value: extruderValue(support_roof_extruder_nr, 'support_interface_pattern'),
                            limit_to_extruder: support_roof_extruder_nr,
                            enabled: support_roof_enable and (support_enable or support_tree_enable),
                            settable_per_mesh: false,
                            settable_per_extruder: true
                        },
                        support_bottom_pattern:
                        {
                            label: Support Floor Pattern,
                            description: The pattern with which the floors of the support are printed.,
                            type: enum,
                            options:
                            {
                                lines: Lines,
                                grid: Grid,
                                triangles: Triangles,
                                concentric: Concentric,
                                zigzag: Zig Zag
                            },
                            default_value: concentric,
                            value: extruderValue(support_bottom_extruder_nr, 'support_interface_pattern'),
                            limit_to_extruder: support_bottom_extruder_nr,
                            enabled: support_bottom_enable and (support_enable or support_tree_enable),
                            settable_per_mesh: false,
                            settable_per_extruder: true
                        }
                    }
                },
                minimum_interface_area: 
                {
                    label: Minimum Support Interface Area,
                    description: Minimum area size for support interface polygons. Polygons which have an area smaller than this value will be printed as normal support.,
                    unit: mm²,
                    type: float,
                    default_value: 1.0,
                    minimum_value: 0,
                    minimum_value_warning: minimum_support_area,
                    limit_to_extruder: support_interface_extruder_nr,
                    enabled: support_interface_enable and (support_enable or support_tree_enable),
                    settable_per_mesh: true,
                    children:
                    {
                        minimum_roof_area: 
                        {
                            label: Minimum Support Roof Area,
                            description: Minimum area size for the roofs of the support. Polygons which have an area smaller than this value will be printed as normal support.,
                            unit: mm²,
                            type: float,
                            default_value: 1.0,
                            value: extruderValue(support_roof_extruder_nr, 'minimum_interface_area'),
                            minimum_value: 0,
                            minimum_value_warning: minimum_support_area,
                            limit_to_extruder: support_roof_extruder_nr,
                            enabled: support_roof_enable and (support_enable or support_tree_enable),
                            settable_per_mesh: true
                        },
                        minimum_bottom_area: 
                        {
                            label: Minimum Support Floor Area,
                            description: Minimum area size for the floors of the support. Polygons which have an area smaller than this value will be printed as normal support.,
                            unit: mm²,
                            type: float,
                            default_value: 1.0,
                            value: extruderValue(support_bottom_extruder_nr, 'minimum_interface_area'),
                            minimum_value: 0,
                            minimum_value_warning: minimum_support_area,
                            limit_to_extruder: support_bottom_extruder_nr,
                            enabled: support_bottom_enable and (support_enable or support_tree_enable),
                            settable_per_mesh: true
                        }
                    }
                },
                support_interface_offset: 
                {
                    label: Support Interface Horizontal Expansion,
                    description: Amount of offset applied to the support interface polygons.,
                    unit: mm,
                    type: float,
                    default_value: 0.0,
                    maximum_value: extruderValue(support_extruder_nr, 'support_offset'),
                    limit_to_extruder: support_interface_extruder_nr,
                    enabled: support_interface_enable and (support_enable or support_tree_enable),
                    settable_per_mesh: false,
                    settable_per_extruder: true,
                    children:
                    {
                        support_roof_offset: 
                        {
                            label: Support Roof Horizontal Expansion,
                            description: Amount of offset applied to the roofs of the support.,
                            unit: mm,
                            type: float,
                            default_value: 0.0,
                            value: extruderValue(support_roof_extruder_nr, 'support_interface_offset'),
                            maximum_value: extruderValue(support_extruder_nr, 'support_offset'),
                            limit_to_extruder: support_roof_extruder_nr,
                            enabled: support_roof_enable and (support_enable or support_tree_enable),
                            settable_per_mesh: false,
                            settable_per_extruder: true
                        },
                        support_bottom_offset: 
                        {
                            label: Support Floor Horizontal Expansion,
                            description: Amount of offset applied to the floors of the support.,
                            unit: mm,
                            type: float,
                            default_value: 0.0,
                            value: extruderValue(support_bottom_extruder_nr, 'support_interface_offset'),
                            maximum_value: extruderValue(support_extruder_nr, 'support_offset'),
                            limit_to_extruder: support_bottom_extruder_nr,
                            enabled: support_bottom_enable and (support_enable or support_tree_enable),
                            settable_per_mesh: false,
                            settable_per_extruder: true
                        }
                    }
                },
                support_interface_angles:
                {
                    label: Support Interface Line Directions,
                    description: A list of integer line directions to use. Elements from the list are used sequentially as the layers progress and when the end of the list is reached, it starts at the beginning again. The list items are separated by commas and the whole list is contained in square brackets. Default is an empty list which means use the default angles (alternates between 45 and 135 degrees if interfaces are quite thick or 90 degrees).,
                    type: [int],
                    default_value: [ ],
                    limit_to_extruder: support_interface_extruder_nr,
                    enabled: (support_enable or support_tree_enable) and support_interface_enable and support_interface_pattern != 'concentric',
                    settable_per_mesh: false,
                    settable_per_extruder: true,
                    children:
                    {
                        support_roof_angles:
                        {
                            label: Support Roof Line Directions,
                            description: A list of integer line directions to use. Elements from the list are used sequentially as the layers progress and when the end of the list is reached, it starts at the beginning again. The list items are separated by commas and the whole list is contained in square brackets. Default is an empty list which means use the default angles (alternates between 45 and 135 degrees if interfaces are quite thick or 90 degrees).,
                            type: [int],
                            default_value: [ ],
                            value: support_interface_angles,
                            limit_to_extruder: support_roof_extruder_nr,
                            enabled: (support_enable or support_tree_enable) and support_roof_enable and support_roof_pattern != 'concentric',
                            settable_per_mesh: false,
                            settable_per_extruder: true
                        },
                        support_bottom_angles:
                        {
                            label: Support Floor Line Directions,
                            description: A list of integer line directions to use. Elements from the list are used sequentially as the layers progress and when the end of the list is reached, it starts at the beginning again. The list items are separated by commas and the whole list is contained in square brackets. Default is an empty list which means use the default angles (alternates between 45 and 135 degrees if interfaces are quite thick or 90 degrees).,
                            type: [int],
                            default_value: [ ],
                            value: support_interface_angles,
                            limit_to_extruder: support_bottom_extruder_nr,
                            enabled: (support_enable or support_tree_enable) and support_bottom_enable and support_bottom_pattern != 'concentric',
                            settable_per_mesh: false,
                            settable_per_extruder: true
                        }
                    }
                },
                support_fan_enable:
                {
                    label: Fan Speed Override,
                    description: When enabled, the print cooling fan speed is altered for the skin regions immediately above the support.,
                    type: bool,
                    default_value: false,
                    enabled: support_enable or support_tree_enable,
                    settable_per_mesh: false
                },
                support_supported_skin_fan_speed:
                {
                    label: Supported Skin Fan Speed,
                    description: Percentage fan speed to use when printing the skin regions immediately above the support. Using a high fan speed can make the support easier to remove.,
                    unit: %,
                    minimum_value: 0,
                    maximum_value: 100,
                    default_value: 100,
                    type: float,
                    enabled: (support_enable or support_tree_enable) and support_fan_enable,
                    settable_per_mesh: false
                },
                support_use_towers:
                {
                    label: Use Towers,
                    description: Use specialized towers to support tiny overhang areas. These towers have a larger diameter than the region they support. Near the overhang the towers' diameter decreases, forming a roof.,
                    type: bool,
                    default_value: true,
                    limit_to_extruder: support_infill_extruder_nr,
                    enabled: support_enable,
                    settable_per_mesh: true
                },
                support_tower_diameter:
                {
                    label: Tower Diameter,
                    description: The diameter of a special tower.,
                    unit: mm,
                    type: float,
                    default_value: 3.0,
                    limit_to_extruder: support_infill_extruder_nr,
                    minimum_value: 0,
                    minimum_value_warning: 2 * machine_nozzle_size,
                    maximum_value_warning: 20,
                    enabled: support_enable and support_use_towers,
                    settable_per_mesh: true
                },
                support_tower_maximum_supported_diameter:
                {
                    label: Maximum Tower-Supported Diameter,
                    description: Maximum diameter in the X/Y directions of a small area which is to be supported by a specialized support tower.,
                    unit: mm,
                    type: float,
                    default_value: 3.0,
                    limit_to_extruder: support_infill_extruder_nr,
                    minimum_value: 0,
                    minimum_value_warning: 2 * machine_nozzle_size,
                    maximum_value_warning: 20,
                    maximum_value: support_tower_diameter,
                    enabled: support_enable and support_use_towers,
                    settable_per_mesh: true
                },
                support_tower_roof_angle:
                {
                    label: Tower Roof Angle,
                    description: The angle of a rooftop of a tower. A higher value results in pointed tower roofs, a lower value results in flattened tower roofs.,
                    unit: °,
                    type: int,
                    minimum_value: 0,
                    maximum_value: 90,
                    default_value: 65,
                    limit_to_extruder: support_infill_extruder_nr,
                    enabled: support_enable and support_use_towers,
                    settable_per_mesh: true
                },
                support_mesh_drop_down:
                {
                    label: Drop Down Support Mesh,
                    description: Make support everywhere below the support mesh, so that there's no overhang in the support mesh.,
                    type: bool,
                    default_value: true,
                    enabled: support_mesh,
                    settable_per_mesh: true,
                    settable_per_extruder: false,
                    settable_per_meshgroup: false,
                    settable_globally: false
                }
            }
        },

    ### Build Plate Adhesion

- prime_blob_enable: Whether to prime the filament with a blob before printing. Turning this setting on will ensure that the extruder will have material ready at the nozzle before printing. Printing Brim or Skirt can act like priming too, in which case turning this setting off saves some time.,
- extruder_prime_pos_x: The X coordinate of the position where the nozzle primes at the start of printing.,
- extruder_prime_pos_y: The Y coordinate of the position where the nozzle primes at the start of printing.,
- adhesion_type: Different options that help to improve both priming your extrusion and adhesion to the build plate. Brim adds a single layer flat area around the base of your model to prevent warping. Raft adds a thick grid with a roof below the model. Skirt is a line printed around the model, but not connected to the model.,
                    type: enum,
                    options:
                    {
                        skirt: Skirt,
                        brim: Brim,
                        raft: Raft,
                        none: None
                    },
- adhesion_extruder_nr: The extruder train to use for printing the skirt/brim/raft. This is used in multi-extrusion.,
- skirt_line_count: Multiple skirt lines help to prime your extrusion better for small models. Setting this to 0 will disable the skirt.,
- skirt_gap: The horizontal distance between the skirt and the first layer of the print.\nThis is the minimum distance. Multiple skirt lines will extend outwards from this distance.
- skirt_brim_minimal_length: The minimum length of the skirt or brim. If this length is not reached by all skirt or brim lines together, more skirt or brim lines will be added until the minimum length is reached. Note: If the line count is set to 0 this is ignored.,
- brim_width: The distance from the model to the outermost brim line. A larger brim enhances adhesion to the build plate, but also reduces the effective print area.
- brim_gap: The horizontal distance between the first brim line and the outline of the first layer of the print. A small gap can make the brim easier to remove while still providing the thermal benefits.,
- brim_replaces_support: Enforce brim to be printed around the model even if that space would otherwise be occupied by support. This replaces some regions of the first layer of support by brim regions.,
- brim_outside_only: Only print the brim on the outside of the model. This reduces the amount of brim you need to remove afterwards, while it doesn't reduce the bed adhesion that much.,
- raft_margin: If the raft is enabled, this is the extra raft area around the model which is also given a raft. Increasing this margin will create a stronger raft while using more material and leaving less area for your print.,
- raft_smoothing:  This setting controls how much inner corners in the raft outline are rounded. Inward corners are rounded to a semi circle with a radius equal to the value given here. This setting also removes holes in the raft outline which are smaller than such a circle.,
- raft_airgap:  The gap between the final raft layer and the first layer of the model. Only the first layer is raised by this amount to lower the bonding between the raft layer and the model. Makes it easier to peel off the raft.,
- layer_0_z_overlap: Make the first and second layer of the model overlap in the Z direction to compensate for the filament lost in the airgap. All models above the first model layer will be shifted down by this amount.,
                    unit: mm,
                    type: float,
                    default_value: 0.22,
                    value: raft_airgap / 2,
                    minimum_value: 0,
                    maximum_value_warning: raft_airgap,
                    enabled: resolveOrValue('adhesion_type') == 'raft',
                    settable_per_mesh: false,
                    settable_per_extruder: true,
                    limit_to_extruder: adhesion_extruder_nr
                },
                raft_surface_layers:
                {
                    label: Raft Top Layers,
                    description: The number of top layers on top of the 2nd raft layer. These are fully filled layers that the model sits on. 2 layers result in a smoother top surface than 1.,
                    type: int,
                    default_value: 2,
                    minimum_value: 0,
                    maximum_value_warning: 20,
                    enabled: resolveOrValue('adhesion_type') == 'raft',
                    settable_per_mesh: false,
                    settable_per_extruder: true,
                    limit_to_extruder: adhesion_extruder_nr
                },
                raft_surface_thickness:
                {
                    label: Raft Top Layer Thickness,
                    description: Layer thickness of the top raft layers.,
                    unit: mm,
                    type: float,
                    default_value: 0.1,
                    value: resolveOrValue('layer_height'),
                    minimum_value: 0.001,
                    minimum_value_warning: 0.04,
                    maximum_value_warning: 0.75 * machine_nozzle_size,
                    enabled: resolveOrValue('adhesion_type') == 'raft',
                    settable_per_mesh: false,
                    settable_per_extruder: true,
                    limit_to_extruder: adhesion_extruder_nr
                },
                raft_surface_line_width:
                {
                    label: Raft Top Line Width,
                    description: Width of the lines in the top surface of the raft. These can be thin lines so that the top of the raft becomes smooth.,
                    unit: mm,
                    type: float,
                    default_value: 0.4,
                    value: line_width,
                    minimum_value: 0.001,
                    minimum_value_warning: machine_nozzle_size * 0.1,
                    maximum_value_warning: machine_nozzle_size * 2,
                    enabled: resolveOrValue('adhesion_type') == 'raft',
                    settable_per_mesh: false,
                    settable_per_extruder: true,
                    limit_to_extruder: adhesion_extruder_nr
                },
                raft_surface_line_spacing:
                {
                    label: Raft Top Spacing,
                    description: The distance between the raft lines for the top raft layers. The spacing should be equal to the line width, so that the surface is solid.,
                    unit: mm,
                    type: float,
                    default_value: 0.4,
                    minimum_value: 0,
                    minimum_value_warning: raft_surface_line_width,
                    maximum_value_warning: raft_surface_line_width * 3,
                    enabled: resolveOrValue('adhesion_type') == 'raft',
                    value: raft_surface_line_width,
                    settable_per_mesh: false,
                    settable_per_extruder: true,
                    limit_to_extruder: adhesion_extruder_nr
                },
                raft_interface_thickness:
                {
                    label: Raft Middle Thickness,
                    description: Layer thickness of the middle raft layer.,
                    unit: mm,
                    type: float,
                    default_value: 0.15,
                    value: resolveOrValue('layer_height') * 1.5,
                    minimum_value: 0.001,
                    minimum_value_warning: 0.04,
                    maximum_value_warning: 0.75 * machine_nozzle_size,
                    enabled: resolveOrValue('adhesion_type') == 'raft',
                    settable_per_mesh: false,
                    settable_per_extruder: true,
                    limit_to_extruder: adhesion_extruder_nr
                },
                raft_interface_line_width:
                {
                    label: Raft Middle Line Width,
                    description: Width of the lines in the middle raft layer. Making the second layer extrude more causes the lines to stick to the build plate.,
                    unit: mm,
                    type: float,
                    default_value: 0.7,
                    value: line_width * 2,
                    minimum_value: 0.001,
                    minimum_value_warning: machine_nozzle_size * 0.5,
                    maximum_value_warning: machine_nozzle_size * 3,
                    enabled: resolveOrValue('adhesion_type') == 'raft',
                    settable_per_mesh: false,
                    settable_per_extruder: true,
                    limit_to_extruder: adhesion_extruder_nr
                },
                raft_interface_line_spacing:
                {
                    label: Raft Middle Spacing,
                    description: The distance between the raft lines for the middle raft layer. The spacing of the middle should be quite wide, while being dense enough to support the top raft layers.,
                    unit: mm,
                    type: float,
                    default_value: 0.9,
                    value: raft_interface_line_width + 0.2,
                    minimum_value: 0,
                    minimum_value_warning: raft_interface_line_width,
                    maximum_value_warning: 15.0,
                    enabled: resolveOrValue('adhesion_type') == 'raft',
                    settable_per_mesh: false,
                    settable_per_extruder: true,
                    limit_to_extruder: adhesion_extruder_nr
                },
                raft_base_thickness:
                {
                    label: Raft Base Thickness,
                    description: Layer thickness of the base raft layer. This should be a thick layer which sticks firmly to the printer build plate.,
                    unit: mm,
                    type: float,
                    default_value: 0.3,
                    value: resolveOrValue('layer_height_0') * 1.2,
                    minimum_value: 0.001,
                    minimum_value_warning: 0.04,
                    maximum_value_warning: 0.75 * raft_base_line_width,
                    enabled: resolveOrValue('adhesion_type') == 'raft',
                    settable_per_mesh: false,
                    settable_per_extruder: true,
                    limit_to_extruder: adhesion_extruder_nr
                },
                raft_base_line_width:
                {
                    label: Raft Base Line Width,
                    description: Width of the lines in the base raft layer. These should be thick lines to assist in build plate adhesion.,
                    unit: mm,
                    type: float,
                    default_value: 0.8,
                    minimum_value: 0.001,
                    value: machine_nozzle_size * 2,
                    minimum_value_warning: machine_nozzle_size * 0.5,
                    maximum_value_warning: machine_nozzle_size * 3,
                    enabled: resolveOrValue('adhesion_type') == 'raft',
                    settable_per_mesh: false,
                    settable_per_extruder: true,
                    limit_to_extruder: adhesion_extruder_nr
                },
                raft_base_line_spacing:
                {
                    label: Raft Base Line Spacing,
                    description: The distance between the raft lines for the base raft layer. Wide spacing makes for easy removal of the raft from the build plate.,
                    unit: mm,
                    type: float,
                    default_value: 1.6,
                    value: raft_base_line_width * 2,
                    minimum_value: 0,
                    minimum_value_warning: raft_base_line_width,
                    maximum_value_warning: 100,
                    enabled: resolveOrValue('adhesion_type') == 'raft',
                    settable_per_mesh: false,
                    settable_per_extruder: true,
                    limit_to_extruder: adhesion_extruder_nr
                },
                raft_speed:
                {
                    label: Raft Print Speed,
                    description: The speed at which the raft is printed.,
                    unit: mm/s,
                    type: float,
                    default_value: 20,
                    minimum_value: 0.1,
                    maximum_value: math.sqrt(machine_max_feedrate_x ** 2 + machine_max_feedrate_y ** 2),
                    maximum_value_warning: 200,
                    enabled: resolveOrValue('adhesion_type') == 'raft',
                    value: speed_print / 60 * 30,
                    settable_per_mesh: false,
                    settable_per_extruder: true,
                    limit_to_extruder: adhesion_extruder_nr,
                    children:
                    {
                        raft_surface_speed:
                        {
                            label: Raft Top Print Speed,
                            description: The speed at which the top raft layers are printed. These should be printed a bit slower, so that the nozzle can slowly smooth out adjacent surface lines.,
                            unit: mm/s,
                            type: float,
                            default_value: 20,
                            minimum_value: 0.1,
                            maximum_value: math.sqrt(machine_max_feedrate_x ** 2 + machine_max_feedrate_y ** 2),
                            maximum_value_warning: 100,
                            enabled: resolveOrValue('adhesion_type') == 'raft',
                            value: raft_speed,
                            settable_per_mesh: false,
                            settable_per_extruder: true,
                            limit_to_extruder: adhesion_extruder_nr
                        },
                        raft_interface_speed:
                        {
                            label: Raft Middle Print Speed,
                            description: The speed at which the middle raft layer is printed. This should be printed quite slowly, as the volume of material coming out of the nozzle is quite high.,
                            unit: mm/s,
                            type: float,
                            default_value: 15,
                            value: raft_speed * 0.75,
                            minimum_value: 0.1,
                            maximum_value: math.sqrt(machine_max_feedrate_x ** 2 + machine_max_feedrate_y ** 2),
                            maximum_value_warning: 150,
                            enabled: resolveOrValue('adhesion_type') == 'raft',
                            settable_per_mesh: false,
                            settable_per_extruder: true,
                            limit_to_extruder: adhesion_extruder_nr
                        },
                        raft_base_speed:
                        {
                            label: Raft Base Print Speed,
                            description: The speed at which the base raft layer is printed. This should be printed quite slowly, as the volume of material coming out of the nozzle is quite high.,
                            unit: mm/s,
                            type: float,
                            default_value: 15,
                            minimum_value: 0.1,
                            maximum_value: math.sqrt(machine_max_feedrate_x ** 2 + machine_max_feedrate_y ** 2),
                            maximum_value_warning: 200,
                            enabled: resolveOrValue('adhesion_type') == 'raft',
                            value: 0.75 * raft_speed,
                            settable_per_mesh: false,
                            settable_per_extruder: true,
                            limit_to_extruder: adhesion_extruder_nr
                        }
                    }
                },
                raft_acceleration:
                {
                    label: Raft Print Acceleration,
                    description: The acceleration with which the raft is printed.,
                    unit: mm/s²,
                    type: float,
                    default_value: 3000,
                    minimum_value: 0.1,
                    minimum_value_warning: 100,
                    maximum_value_warning: 10000,
                    value: acceleration_print,
                    enabled: resolveOrValue('adhesion_type') == 'raft' and resolveOrValue('acceleration_enabled'),
                    settable_per_mesh: false,
                    limit_to_extruder: adhesion_extruder_nr,
                    children:
                    {
                        raft_surface_acceleration:
                        {
                            label: Raft Top Print Acceleration,
                            description: The acceleration with which the top raft layers are printed.,
                            unit: mm/s²,
                            type: float,
                            default_value: 3000,
                            value: raft_acceleration,
                            minimum_value: 0.1,
                            minimum_value_warning: 100,
                            maximum_value_warning: 10000,
                            enabled: resolveOrValue('adhesion_type') == 'raft' and resolveOrValue('acceleration_enabled'),
                            settable_per_mesh: false,
                            limit_to_extruder: adhesion_extruder_nr
                        },
                        raft_interface_acceleration:
                        {
                            label: Raft Middle Print Acceleration,
                            description: The acceleration with which the middle raft layer is printed.,
                            unit: mm/s²,
                            type: float,
                            default_value: 3000,
                            value: raft_acceleration,
                            minimum_value: 0.1,
                            minimum_value_warning: 100,
                            maximum_value_warning: 10000,
                            enabled: resolveOrValue('adhesion_type') == 'raft' and resolveOrValue('acceleration_enabled'),
                            settable_per_mesh: false,
                            limit_to_extruder: adhesion_extruder_nr
                        },
                        raft_base_acceleration:
                        {
                            label: Raft Base Print Acceleration,
                            description: The acceleration with which the base raft layer is printed.,
                            unit: mm/s²,
                            type: float,
                            default_value: 3000,
                            value: raft_acceleration,
                            minimum_value: 0.1,
                            minimum_value_warning: 100,
                            maximum_value_warning: 10000,
                            enabled: resolveOrValue('adhesion_type') == 'raft' and resolveOrValue('acceleration_enabled'),
                            settable_per_mesh: false,
                            limit_to_extruder: adhesion_extruder_nr
                        }
                    }
                },
                raft_jerk:
                {
                    label: Raft Print Jerk,
                    description: The jerk with which the raft is printed.,
                    unit: mm/s,
                    type: float,
                    default_value: 20,
                    minimum_value: 0,
                    minimum_value_warning: 5,
                    maximum_value_warning: 50,
                    value: jerk_print,
                    enabled: resolveOrValue('adhesion_type') == 'raft' and resolveOrValue('jerk_enabled'),
                    settable_per_mesh: false,
                    limit_to_extruder: adhesion_extruder_nr,
                    children:
                    {
                        raft_surface_jerk:
                        {
                            label: Raft Top Print Jerk,
                            description: The jerk with which the top raft layers are printed.,
                            unit: mm/s,
                            type: float,
                            default_value: 20,
                            value: raft_jerk,
                            minimum_value: 0,
                            minimum_value_warning: 5,
                            maximum_value_warning: 100,
                            enabled: resolveOrValue('adhesion_type') == 'raft' and resolveOrValue('jerk_enabled'),
                            settable_per_mesh: false,
                            limit_to_extruder: adhesion_extruder_nr
                        },
                        raft_interface_jerk:
                        {
                            label: Raft Middle Print Jerk,
                            description: The jerk with which the middle raft layer is printed.,
                            unit: mm/s,
                            type: float,
                            default_value: 20,
                            value: raft_jerk,
                            minimum_value: 0,
                            minimum_value_warning: 5,
                            maximum_value_warning: 50,
                            enabled: resolveOrValue('adhesion_type') == 'raft' and resolveOrValue('jerk_enabled'),
                            settable_per_mesh: false,
                            limit_to_extruder: adhesion_extruder_nr
                        },
                        raft_base_jerk:
                        {
                            label: Raft Base Print Jerk,
                            description: The jerk with which the base raft layer is printed.,
                            unit: mm/s,
                            type: float,
                            default_value: 20,
                            value: raft_jerk,
                            minimum_value: 0,
                            minimum_value_warning: 5,
                            maximum_value_warning: 50,
                            enabled: resolveOrValue('adhesion_type') == 'raft' and resolveOrValue('jerk_enabled'),
                            settable_per_mesh: false,
                            limit_to_extruder: adhesion_extruder_nr
                        }
                    }
                },
                raft_fan_speed:
                {
                    label: Raft Fan Speed,
                    description: The fan speed for the raft.,
                    unit: %,
                    type: float,
                    minimum_value: 0,
                    maximum_value: 100,
                    default_value: 0,
                    settable_per_mesh: false,
                    settable_per_extruder: true,
                    enabled: resolveOrValue('adhesion_type') == 'raft',
                    limit_to_extruder: adhesion_extruder_nr,
                    children:
                    {
                        raft_surface_fan_speed:
                        {
                            label: Raft Top Fan Speed,
                            description: The fan speed for the top raft layers.,
                            unit: %,
                            type: float,
                            minimum_value: 0,
                            maximum_value: 100,
                            default_value: 0,
                            value: raft_fan_speed,
                            enabled: resolveOrValue('adhesion_type') == 'raft',
                            settable_per_mesh: false,
                            settable_per_extruder: true,
                            limit_to_extruder: adhesion_extruder_nr
                        },
                        raft_interface_fan_speed:
                        {
                            label: Raft Middle Fan Speed,
                            description: The fan speed for the middle raft layer.,
                            unit: %,
                            type: float,
                            minimum_value: 0,
                            maximum_value: 100,
                            default_value: 0,
                            value: raft_fan_speed,
                            enabled: resolveOrValue('adhesion_type') == 'raft',
                            settable_per_mesh: false,
                            settable_per_extruder: true,
                            limit_to_extruder: adhesion_extruder_nr
                        },
                        raft_base_fan_speed:
                        {
                            label: Raft Base Fan Speed,
                            description: The fan speed for the base raft layer.,
                            unit: %,
                            type: float,
                            minimum_value: 0,
                            maximum_value: 100,
                            default_value: 0,
                            value: raft_fan_speed,
                            enabled: resolveOrValue('adhesion_type') == 'raft',
                            settable_per_mesh: false,
                            settable_per_extruder: true,
                            limit_to_extruder: adhesion_extruder_nr
                        }
                    }
                }
            }
        },
### Dual Extrusion

Settings used for printing with multiple extruders.

- prime_tower_enable: Print a tower next to the print which serves to prime the material after each nozzle switch
- prime_tower_size: The width of the prime tower.,
- prime_tower_min_volume: The minimum volume for each layer of the prime tower in order to purge enough material.,
- prime_tower_position_x: The x coordinate of the position of the prime tower.,
- prime_tower_position_y: The y coordinate of the position of the prime tower.,
- prime_tower_wipe_enabled: After printing the prime tower with one nozzle, wipe the oozed material from the other nozzle off on the prime tower.,
- prime_tower_brim_enable: Prime-towers might need the extra adhesion afforded by a brim even if the model doesn't. Presently can't be used with the 'Raft' adhesion-type.,
- ooze_shield_enabled:  Enable exterior ooze shield. This will create a shell around the model which is likely to wipe a second nozzle if it's at the same height as the first nozzle.,
- ooze_shield_angle: The maximum angle a part in the ooze shield will have. With 0 degrees being vertical, and 90 degrees being horizontal. A smaller angle leads to less failed ooze shields, but more material.,
- ooze_shield_dist: Distance of the ooze shield from the print, in the X/Y directions.,
- switch_extruder_retraction_amount: The amount of retraction when switching extruders. Set to 0 for no retraction at all. This should generally be the same as the length of the heat zone.,
- switch_extruder_retraction_speeds:The speed at which the filament is retracted. A higher retraction speed works better, but a very high retraction speed can lead to filament grinding.,
    + switch_extruder_retraction_speed: The speed at which the filament is retracted during a nozzle switch retract.,
    + switch_extruder_prime_speed: The speed at which the filament is pushed back after a nozzle switch retraction.,
    + switch_extruder_extra_prime_amount: Extra material to prime after nozzle switching.,

### Mesh Fixes

- meshfix_union_all: Ignore the internal geometry arising from overlapping volumes within a mesh and print the volumes as one. This may cause unintended internal cavities to disappear.,
- meshfix_union_all_remove_holes: Remove the holes in each layer and keep only the outside shape. This will ignore any invisible internal geometry. However, it also ignores layer holes which can be viewed from above or below.,
- meshfix_extensive_stitching: Extensive stitching tries to stitch up open holes in the mesh by closing the hole with touching polygons. This option can introduce a lot of processing time.,
- meshfix_keep_open_polygons: Normally Cura tries to stitch up small holes in the mesh and remove parts of a layer with big holes. Enabling this option keeps those parts which cannot be stitched. This option should be used as a last resort option when everything else fails to produce proper g-code.,
- multiple_mesh_overlap: Make meshes which are touching each other overlap a bit. This makes them bond together better.,
- carve_multiple_volumes: Remove areas where multiple meshes are overlapping with each other. This may be used if merged dual material objects overlap with each other.,
- alternate_carve_order: Switch to which mesh intersecting volumes will belong with every layer, so that the overlapping meshes become interwoven. Turning this setting off will cause one of the meshes to obtain all of the volume in the overlap, while it is removed from the other meshes.,
- remove_empty_first_layers: Remove empty layers beneath the first printed layer if they are present. Disabling this setting can cause empty first layers if the Slicing Tolerance setting is set to Exclusive or Middle.,
- meshfix_maximum_resolution:  The minimum size of a line segment after slicing. If you increase this, the mesh will have a lower resolution. This may allow the printer to keep up with the speed it has to process g-code and will increase slice speed by removing details of the mesh that it can't process anyway.,
- meshfix_maximum_travel_resolution: The minimum size of a travel line segment after slicing. If you increase this, the travel moves will have less smooth corners. This may allow the printer to keep up with the speed it has to process g-code, but it may cause model avoidance to become less accurate.,
- meshfix_maximum_deviation: The maximum deviation allowed when reducing the resolution for the Maximum Resolution setting. If you increase this, the print will be less accurate, but the g-code will be smaller. Maximum Deviation is a limit for Maximum Resolution, so if the two conflict the Maximum Deviation will always be held true.
- 

###  Special Modes - blackmagic

- print_sequence: Whether to print all models one layer at a time or to wait for one model to finish, before moving on to the next. One at a time mode is possible if a) only one extruder is enabled and b) all models are separated in such a way that the whole print head can move in between and all models are lower than the distance between the nozzle and the X/Y axes. ,
    + options: all_at_once | one_at_a_time
                
- infill_mesh: Use this mesh to modify the infill of other meshes with which it overlaps. Replaces infill regions of other meshes with regions for this mesh. It's suggested to only print one Wall and no Top/Bottom Skin for this mesh.,
- infill_mesh_order: Determines which infill mesh is inside the infill of another infill mesh. An infill mesh with a higher order will modify the infill of infill meshes with lower order and normal meshes.,
- cutting_mesh: Limit the volume of this mesh to within other meshes. You can use this to make certain areas of one mesh print with different settings and with a whole different extruder.,
- mold_enabled: Print models as a mold, which can be cast in order to get a model which resembles the models on the build plate.,
- mold_width: The minimal distance between the ouside of the mold and the outside of the model.,
- mold_roof_height: The height above horizontal parts in your model which to print mold.,
- mold_angle: The angle of overhang of the outer walls created for the mold. 0° will make the outer shell of the mold vertical, while 90° will make the outside of the model follow the contour of the model.- support_mesh: Use this mesh to specify support areas. This can be used to generate support structure.,
- anti_overhang_mesh: Use this mesh to specify where no part of the model should be detected as overhang. This can be used to remove unwanted support structure.,
 - magic_mesh_surface_mode: Treat the model as a surface only, a volume, or volumes with loose surfaces. The normal print mode only prints enclosed volumes. \Surface\ prints a single wall tracing the mesh surface with no infill and no top/bottom skin. \Both\ prints enclosed volumes like normal and any remaining polygons as surfaces.,
- magic_spiralize: Spiralize smooths out the Z move of the outer edge. This will create a steady Z increase over the whole print. This feature turns a solid model into a single walled print with a solid bottom. This feature should only be enabled when each layer only contains a single part.,
- smooth_spiralized_contours: Smooth the spiralized contours to reduce the visibility of the Z seam (the Z seam should be barely visible on the print but will still be visible in the layer view). Note that smoothing will tend to blur fine surface details.,
- relative_extrusion: Use relative extrusion rather than absolute extrusion. Using relative E-steps makes for easier post-processing of the g-code. However, it's not supported by all printers and it may produce very slight deviations in the amount of deposited material compared to absolute E-steps. Irrespective of this setting, the extrusion mode will always be set to absolute before any g-code script is output.,

### experimental:

- support_tree_enable: Generate a tree-like support with branches that support your print. This may reduce material usage and print time, but greatly increases slicing time.,
- support_tree_angle: The angle of the branches. Use a lower angle to make them more vertical and more stable. Use a higher angle to be able to have more reach.,
- support_tree_branch_distance: How far apart the branches need to be when they touch the model. Making this distance small will cause the tree support to touch the model at more points, causing better overhang but making support harder to remove.,
- support_tree_branch_diameter: The diameter of the thinnest branches of tree support. Thicker branches are more sturdy. Branches towards the base will be thicker than this.,
- support_tree_branch_diameter_angle: The angle of the branches' diameter as they gradually become thicker towards the bottom. An angle of 0 will cause the branches to have uniform thickness over their length. A bit of an angle can increase stability of the tree support.,
- support_tree_collision_resolution: Resolution to compute collisions with to avoid hitting the model. Setting this lower will produce more accurate trees that fail less often, but increases slicing time dramatically.,
- slicing_tolerance: How to slice layers with diagonal surfaces. The areas of a layer can be generated based on where the middle of the layer intersects the surface (Middle). Alternatively each layer can have the areas which fall inside of the volume throughout the height of the layer (Exclusive) or a layer has the areas which fall inside anywhere within the layer (Inclusive). Exclusive retains the most details, Inclusive makes for the best fit and Middle takes the least time to process.- roofing_line_width: Width of a single line of the areas at the top of the print.,
- roofing_pattern: The pattern of the top most layers.,
- roofing_angles: A list of integer line directions to use when the top surface skin layers use the lines or zig zag pattern. Elements from the list are used sequentially as the layers progress and when the end of the list is reached, it starts at the beginning again. The list items are separated by commas and the whole list is contained in square brackets. Default is an empty list which means use the traditional default angles (45 and 135 degrees).,
- infill_enable_travel_optimization: When enabled, the order in which the infill lines are printed is optimized to reduce the distance travelled. The reduction in travel time achieved very much depends on the model being sliced, infill pattern, density, etc. Note that, for some models that have many small areas of infill, the time to slice the model may be greatly increased.,
- material_flow_dependent_temperature: Change the temperature for each layer automatically with the average flow speed of that layer.,
- material_flow_temp_graph: Data linking material flow (in mm3 per second) to temperature (degrees Celsius).,
- minimum_polygon_circumference: Polygons in sliced layers that have a circumference smaller than this amount will be filtered out. Lower values lead to higher resolution mesh at the cost of slicing time. It is meant mostly for high resolution SLA printers and very tiny 3D models with a lot of details.,
- support_skip_some_zags: Skip some support line connections to make the support structure easier to break away. This setting is applicable to the Zig Zag support infill pattern.,
- support_skip_zag_per_mm: Leave out a connection between support lines once every N millimeter to make the support structure easier to break away.,
- draft_shield_enabled: This will create a wall around the model, which traps (hot) air and shields against exterior airflow. Especially useful for materials which warp easily.,
- draft_shield_dist: Distance of the draft shield from the print, in the X/Y directions.,
- draft_shield_height_limitation: Set the height of the draft shield. Choose to print the draft shield at the full height of the model or at a limited height.,
- draft_shield_height: Height limitation of the draft shield. Above this height no draft shield will be printed.,
- conical_overhang_enabled: Change the geometry of the printed model such that minimal support is required. Steep overhangs will become shallow overhangs. Overhanging areas will drop down to become more vertical.,
- conical_overhang_angle: The maximum angle of overhangs after the they have been made printable. At a value of 0° all overhangs are replaced by a piece of model connected to the build plate, 90° will not change the model in any way.,
- coasting_enable: Coasting replaces the last part of an extrusion path with a travel path. The oozed material is used to print the last piece of the extrusion path in order to reduce stringing.,
- coasting_volume: The volume otherwise oozed. This value should generally be close to the nozzle diameter cubed.,
- coasting_min_volume: The smallest volume an extrusion path should have before allowing coasting. For smaller extrusion paths, less pressure has been built up in the bowden tube and so the coasted volume is scaled linearly. This value should always be larger than the Coasting Volume.,
- coasting_speed: The speed by which to move during coasting, relative to the speed of the extrusion path. A value slightly under 100% is advised, since during the coasting move the pressure in the bowden tube drops.,
- cross_infill_pocket_size: The size of pockets at four-way crossings in the cross 3D pattern at heights where the pattern is touching itself.,
- cross_infill_density_image: The file location of an image of which the brightness values determine the minimal density at the corresponding location in the infill of the print.,
- cross_support_density_image: The file location of an image of which the brightness values determine the minimal density at the corresponding location in the support.,
- spaghetti_infill_enabled: Print the infill every so often, so that the filament will curl up chaotically inside the object. This reduces print time, but the behaviour is rather unpredictable.,
- spaghetti_infill_stepped: Whether to print spaghetti infill in steps or extrude all the infill filament at the end of the print.,
- spaghetti_max_infill_angle: The maximum angle w.r.t. the Z axis of the inside of the print for areas which are to be filled with spaghetti infill afterwards. Lowering this value causes more angled parts in your model to be filled on each layer.,
- spaghetti_max_height: The maximum height of inside space which can be combined and filled from the top.,
- spaghetti_inset: The offset from the walls from where the spaghetti infill will be printed.,
- spaghetti_flow: Adjusts the density of the spaghetti infill. Note that the Infill Density only controls the line spacing of the filling pattern, not the amount of extrusion for spaghetti infill.,
- spaghetti_infill_extra_volume: A correction term to adjust the total volume being extruded each time when filling spaghetti.,
- support_conical_enabled: Make support areas smaller at the bottom than at the overhang.
- support_conical_angle: The angle of the tilt of conical support. With 0 degrees being vertical, and 90 degrees being horizontal. Smaller angles cause the support to be more sturdy, but consist of more material. Negative angles cause the base of the support to be wider than the top.,
- support_conical_min_width: Minimum width to which the base of the conical support area is reduced. Small widths can lead to unstable support structures.,
- magic_fuzzy_skin_enabled: Randomly jitter while printing the outer wall, so that the surface has a rough and fuzzy look.,
- magic_fuzzy_skin_outside_only: Jitter only the parts' outlines and not the parts' holes.,
- magic_fuzzy_skin_thickness: The width within which to jitter. It's advised to keep this below the outer wall width, since the inner walls are unaltered.,
- magic_fuzzy_skin_point_density:  The average density of points introduced on each polygon in a layer. Note that the original points of the polygon are discarded, so a low density results in a reduction of the resolution.
- flow_rate_max_extrusion_offset: The maximum distance in mm to move the filament to compensate for changes in flow rate.
- flow_rate_extrusion_offset_factor: How far to move the filament in order to compensate for changes in flow rate, as a percentage of how far the filament would move in one second of extrusion.
- wireframe_enabled: Print only the outside surface with a sparse webbed structure, printing 'in thin air'. This is realized by horizontally printing the contours of the model at given Z intervals which are connected via upward and diagonally downward lines.
- wireframe_height: The height of the upward and diagonally downward lines between two horizontal parts. This determines the overall density of the net structure. Only applies to Wire Printing.
- wireframe_roof_inset: The distance covered when making a connection from a roof outline inward. Only applies to Wire Printing.,
- wireframe_printspeed: Speed at which the nozzle moves when extruding material. Only applies to Wire Printing.
- wireframe_flow: Flow compensation: the amount of material extruded is multiplied by this value. Only applies to Wire Printing.                   
- wireframe_top_delay: Delay time after an upward move, so that the upward line can harden. Only applies to Wire Printing.,
- wireframe_bottom_delay: Delay time after a downward move. Only applies to Wire Printing.
- wireframe_flat_delay:Delay time between two horizontal segments. Introducing such a delay can cause better adhesion to previous layers at the connection points, while too long delays cause sagging. Only applies to Wire Printing.
- wireframe_up_half_speed: Distance of an upward move which is extruded with half speed.\nThis can cause better adhesion to previous layers, while not heating the material in those layers too much. Only applies to Wire Printing.,
- wireframe_top_jump: Creates a small knot at the top of an upward line, so that the consecutive horizontal layer has a better chance to connect to it. Only applies to Wire Printing.
- wireframe_fall_down: Distance with which the material falls down after an upward extrusion. This distance is compensated for. Only applies to Wire Printing.,
- wireframe_drag_along: Distance with which the material of an upward extrusion is dragged along with the diagonally downward extrusion. This distance is compensated for. Only applies to Wire Printing.,
- wireframe_strategy: Strategy for making sure two consecutive layers connect at each connection point. Retraction lets the upward lines harden in the right position, but may cause filament grinding. A knot can be made at the end of an upward line to heighten the chance of connecting to it and to let the line cool; however, it may require slow printing speeds. Another strategy is to compensate for the sagging of the top of an upward line; however, the lines won't always fall down as predicted.
- wireframe_straight_before_down: Percentage of a diagonally downward line which is covered by a horizontal line piece. This can prevent sagging of the top most point of upward lines. Only applies to Wire Printing.,
- wireframe_roof_fall_down: The distance which horizontal roof lines printed 'in thin air' fall down when being printed. This distance is compensated for. Only applies to Wire Printing.
- wireframe_roof_drag_along:The distance of the end piece of an inward line which gets dragged along when going back to the outer outline of the roof. This distance is compensated for. Only applies to Wire Printing.,
- wireframe_roof_outer_delay: Time spent at the outer perimeters of hole which is to become a roof. Longer times can ensure a better connection. Only applies to Wire Printing.,
- wireframe_nozzle_clearance: Distance between the nozzle and horizontally downward lines. Larger clearance results in diagonally downward lines with a less steep angle, which in turn results in less upward connections with the next layer. Only applies to Wire Printing.
- adaptive_layer_height_enabled: Adaptive layers computes the layer heights depending on the shape of the model.,
- adaptive_layer_height_variation: The maximum allowed height different from the base layer height.,
- adaptive_layer_height_variation_step: The difference in height of the next layer height compared to the previous one.,
- adaptive_layer_height_threshold: Target horizontal distance between two adjacent layers. Reducing this setting causes thinner layers to be used to bring the edges of the layers closer together.
- wall_overhang_angle: Walls that overhang more than this angle will be printed using overhanging wall settings. When the value is 90, no walls will be treated as overhanging. Overhang that gets supported by support will not be treated as overhang either.,
- wall_overhang_speed_factor: Overhanging walls will be printed at this percentage of their normal print speed.,
- bridge_settings_enabled: Detect bridges and modify print speed, flow and fan settings while bridges are printed.,
- bridge_wall_min_length: Unsupported walls shorter than this will be printed using the normal wall settings. Longer unsupported walls will be printed using the bridge wall settings.,
- bridge_skin_support_threshold: If a skin region is supported for less than this percentage of its area, print it using the bridge settings. Otherwise it is printed using the normal skin settings.,
- bridge_sparse_infill_max_density: Maximum density of infill considered to be sparse. Skin over sparse infill is considered to be unsupported and so may be treated as a bridge skin.,
- bridge_wall_coast: This controls the distance the extruder should coast immediately before a bridge wall begins. Coasting before the bridge starts can reduce the pressure in the nozzle and may produce a flatter bridge.,
- bridge_wall_speed: The speed at which the bridge walls are printed.,
- bridge_wall_material_flow: When printing bridge walls, the amount of material extruded is multiplied by this value.,
- bridge_skin_speed: The speed at which bridge skin regions are printed.,
- bridge_skin_material_flow: When printing bridge skin regions, the amount of material extruded is multiplied by this value.,
- bridge_skin_density: The density of the bridge skin layer. Values less than 100 will increase the gaps between the skin lines.,
- bridge_fan_speed: Percentage fan speed to use when printing bridge walls and skin.,
- bridge_enable_more_layers: If enabled, the second and third layers above the air are printed using the following settings. Otherwise, those layers are printed using the normal settings.,
- bridge_skin_speed_2:: Print speed to use when printing the second bridge skin layer.,
- bridge_skin_material_flow_2: When printing the second bridge skin layer, the amount of material extruded is multiplied by this value.,
- bridge_skin_density_2: The density of the second bridge skin layer. Values less than 100 will increase the gaps between the skin lines.,
- bridge_fan_speed_2: Percentage fan speed to use when printing the second bridge skin layer.,
- bridge_skin_speed_3: Print speed to use when printing the third bridge skin layer.,
- bridge_skin_material_flow_3: When printing the third bridge skin layer, the amount of material extruded is multiplied by this value.,
- bridge_skin_density_3: The density of the third bridge skin layer. Values less than 100 will increase the gaps between the skin lines.,
- bridge_fan_speed_3: Percentage fan speed to use when printing the third bridge skin layer.,
- clean_between_layers: Whether to include nozzle wipe G-Code between layers (maximum 1 per layer). Enabling this setting could influence behavior of retract at layer change. Please use Wipe Retraction settings to control retraction at layers where the wipe script will be working.,
- max_extrusion_before_wipe: Maximum material that can be extruded before another nozzle wipe is initiated. If this value is less than the volume of material required in a layer, the setting has no effect in this layer, i.e. it is limited to one wipe per layer.,
- wipe_retraction_enable: Retract the filament when the nozzle is moving over a non-printed area.,
- wipe_retraction_amount: Amount to retract the filament so it does not ooze during the wipe sequence.,
- wipe_retraction_extra_prime_amount: Some material can ooze away during a wipe travel moves, which can be compensated for here.,
- wipe_retraction_speed: The speed at which the filament is retracted and primed during a wipe retraction move.
- wipe_pause: Pause after the unretract.,
- wipe_hop_enable: When wiping, the build plate is lowered to create clearance between the nozzle and the print. It prevents the nozzle from hitting the print during travel moves, reducing the chance to knock the print from the build plate.,
- wipe_hop_amount: The height difference when performing a Z Hop.,
- wipe_hop_speed: Speed to move the z-axis during the hop.,
- wipe_brush_pos_x: X location where wipe script will start.,
- wipe_repeat_count: Number of times to move the nozzle across the brush.,
- wipe_move_distance: The distance to move the head back and forth across the brush.,
- small_hole_max_size: Holes and part outlines with a diameter smaller than this will be printed using Small Feature Speed.,
- small_feature_speed_factor: Small features will be printed at this percentage of their normal print speed. Slower printing can help with adhesion and accuracy.,
- small_feature_speed_factor_0: Small features on the first layer will be printed at this percentage of their normal print speed. Slower printing can help with adhesion and accuracy.
- command_line_settings: Settings which are only used if CuraEngine isn't called from the Cura frontend.,
    + center_object: Whether to center the object on the middle of the build platform (0,0), instead of using the coordinate system in which the object was saved.,
    + mesh_position_x: Offset applied to the object in the x direction.,
    + mesh_position_y: Offset applied to the object in the y direction.,
    + mesh_position_z: Offset applied to the object in the z direction. With this you can perform what was used to be called 'Object Sink'.,
    + mesh_rotation_matrix: Transformation matrix to be applied to the model when loading it from file.
