model Wieringermeer_afdeling1
  //model
  model LeemansPumpingStation
    extends Deltares.HydraulicStructures.PumpingStation.PumpingStation(
      n_pumps=2
    );

    model LeemansPump
      extends Deltares.HydraulicStructures.PumpingStation.Pump(
        power_coefficients = {{   16642.8552, -13304.1852, 2705.5534},
                              {   12146.6824,   5630.3662,    0.0000},
                              {    4713.9123,      0.0000,    0.0000}},
        working_area = {{{       0.6906,         -0.1092,          0.0000},
                         {      -1.0000,          0.0000,          0.0000},
                         {       0.0000,          0.0000,          0.0000}},
                        {{       2.9109,          0.2217,         -0.0381},
                         {      -1.0000,          0.0000,          0.0000},
                         {       0.0000,          0.0000,          0.0000}},
                        {{      -1.5031,          1.6491,          0.0000},
                         {      -1.0000,          0.0000,          0.0000},
                         {       0.0000,          0.0000,          0.0000}},
                        {{      -0.0000,          0.0000,          0.0138},
                         {      -1.0000,          0.0000,          0.0000},
                         {       0.0000,          0.0000,          0.0000}}},

        speed_coefficients = {{      71.2379,          8.8264,          1.4439},
                              {     133.3942,         -6.1111,          0.0000},
                              {     -10.3665,          0.0000,          0.0000}},

        working_area_direction = {-1, 1, 1, -1},

        minimum_on=3.0*3600);
    end LeemansPump;

    LeemansPump pomp1 annotation(Placement(visible = true, transformation(origin = {28, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    LeemansPump pomp2 annotation(Placement(visible = true, transformation(origin = {28, -20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  equation
    connect(HQUp, pomp1.HQUp) annotation(Line(points = {{-80, 0}, {-2, 0}, {-2, 20}, {20, 20}}, color = {0, 0, 255}));
    connect(pomp1.HQDown, HQDown) annotation(Line(points = {{36, 20}, {57, 20}, {57, 0}, {80, 0}}, color = {0, 0, 255}));
    connect(HQUp, pomp2.HQUp) annotation(Line(points = {{-80, 0}, {-2, 0}, {-2, -20}, {20, -20}}, color = {0, 0, 255}));
    connect(pomp2.HQDown, HQDown) annotation(Line(points = {{36, -20}, {57, -20}, {57, 0}, {80, 0}}, color = {0, 0, 255}));
  end LeemansPumpingStation;


  Deltares.ChannelFlow.Hydraulic.BoundaryConditions.Level Waddenzee annotation(
    Placement(visible = true, transformation(origin = {92, 30}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Deltares.ChannelFlow.Hydraulic.Storage.Linear Afdeling1(A = 540000, H_b = -4.70, HQ.H(min = -4.7, max = -4.5, V(nominal = 1E5))) annotation(
    Placement(visible = true, transformation(origin = {24, 78}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Deltares.ChannelFlow.Hydraulic.BoundaryConditions.Discharge RR_afdeling1 annotation(
    Placement(visible = true, transformation(origin = {22, 34}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  LeemansPumpingStation leemanspumpingstationafd1 annotation(Placement(visible = true, transformation(origin = {60, 56}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  // Input variables
  input Modelica.SIunits.VolumeFlowRate RR_afdeling1_Q(fixed = true);
  input Modelica.SIunits.Position Waddenzee_H(fixed = true);
  input Real leemanspumpingstationafd1_pomp2_Q;
  input Real leemanspumpingstationafd1_pomp1_Q;
  input Real energy_price(fixed=true);

  // Control variables
  //Output Variables
  output Modelica.SIunits.Position Afdeling1_HQ_H;
  //output Modelica.SIunits.Position IJsselmeer_H_out;
  //output Modelica.SIunits.Position Waddenzee_H_out;
  //connections
equation
  connect(RR_afdeling1.HQ, Afdeling1.HQ) annotation(
    Line(points = {{22, 42}, {22, 54}, {24, 54}, {24, 70}}, color = {0, 0, 255}));
  connect(Afdeling1.HQ, leemanspumpingstationafd1.HQUp) annotation(
    Line(points = {{24, 70}, {24, 61}, {52, 61}, {52, 56}}, color = {0, 0, 255}));
  connect(leemanspumpingstationafd1.HQDown, Waddenzee.HQ) annotation(
    Line(points = {{68, 56}, {84, 56}, {84, 30}}, color = {0, 0, 255}));

  RR_afdeling1.Q = RR_afdeling1_Q;
  Waddenzee.H = Waddenzee_H;
  Afdeling1.HQ.H = Afdeling1_HQ_H;
  leemanspumpingstationafd1.pomp2.Q = leemanspumpingstationafd1_pomp2_Q;
  leemanspumpingstationafd1.pomp1.Q = leemanspumpingstationafd1_pomp1_Q;

  annotation(
    Diagram(coordinateSystem(extent = {{-160, -100}, {100, 100}})),
    Icon(coordinateSystem(extent = {{-160, -100}, {100, 100}})),
    version = "",
    uses);
end Wieringermeer_afdeling1;
