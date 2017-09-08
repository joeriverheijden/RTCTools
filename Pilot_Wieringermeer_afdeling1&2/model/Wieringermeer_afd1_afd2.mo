model Wieringermeer_afd1_afd2
  //model
  model LeemansPumpingStation
    extends Deltares.HydraulicStructures.PumpingStation.PumpingStation(
      n_pumps=2
    );

    model LeemansPump
      extends Deltares.HydraulicStructures.PumpingStation.Pump(
        power_coefficients = {{   13236.1004,     -36650.5647,      24535.8583},
                              {    8513.9587,       5303.0883,          0.0000},
                              {    1262.6781,          0.0000,          0.0000}},
        working_area = {{{       2.6847,         -1.9605,          0.0000},
                         {      -1.0000,          0.0000,          0.0000},
                         {       0.0000,          0.0000,          0.0000}},
                        {{       6.3049,          4.7854,         -2.0920},
                         {      -1.0000,          0.0000,          0.0000},
                         {       0.0000,          0.0000,          0.0000}},
                        {{      -4.2439,          9.6213,          0.0000},
                         {      -1.0000,          0.0000,          0.0000},
                         {       0.0000,          0.0000,          0.0000}},
                        {{       0.3765,         -0.3507,          0.0000},
                         {      -1.0000,          0.0000,          0.0000},
                         {       0.0000,          0.0000,          0.0000}}},

       speed_coefficients = {{      57.9771,         58.6969,         13.1813},
                             {      41.1421,         -8.6973,          0.0000},
                             {      -0.6101,          0.0000,          0.0000}},

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

  model SlootvaartPumpingStation
    extends Deltares.HydraulicStructures.PumpingStation.PumpingStation(
      n_pumps=2
    );

    model SlootvaartPump
      extends Deltares.HydraulicStructures.PumpingStation.Pump(
        power_coefficients = {{   13236.1004,     -36650.5647,      24535.8583},
                              {    8513.9587,       5303.0883,          0.0000},
                              {    1262.6781,          0.0000,          0.0000}},
        working_area = {{{       2.6847,         -1.9605,          0.0000},
                         {      -1.0000,          0.0000,          0.0000},
                         {       0.0000,          0.0000,          0.0000}},
                        {{       6.3049,          4.7854,         -2.0920},
                         {      -1.0000,          0.0000,          0.0000},
                         {       0.0000,          0.0000,          0.0000}},
                        {{      -4.2439,          9.6213,          0.0000},
                         {      -1.0000,          0.0000,          0.0000},
                         {       0.0000,          0.0000,          0.0000}},
                        {{       0.3765,         -0.3507,          0.0000},
                         {      -1.0000,          0.0000,          0.0000},
                         {       0.0000,          0.0000,          0.0000}}},

       speed_coefficients = {{      57.9771,         58.6969,         13.1813},
                             {      41.1421,         -8.6973,          0.0000},
                             {      -0.6101,          0.0000,          0.0000}},

        working_area_direction = {-1, 1, 1, -1},

        minimum_on=3.0*3600);
    end SlootvaartPump;

    SlootvaartPump pomp1 annotation(Placement(visible = true, transformation(origin = {28, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    SlootvaartPump pomp2 annotation(Placement(visible = true, transformation(origin = {28, -20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  equation
    connect(HQUp, pomp1.HQUp) annotation(Line(points = {{-80, 0}, {-2, 0}, {-2, 20}, {20, 20}}, color = {0, 0, 255}));
    connect(pomp1.HQDown, HQDown) annotation(Line(points = {{36, 20}, {57, 20}, {57, 0}, {80, 0}}, color = {0, 0, 255}));
    connect(HQUp, pomp2.HQUp) annotation(Line(points = {{-80, 0}, {-2, 0}, {-2, -20}, {20, -20}}, color = {0, 0, 255}));
    connect(pomp2.HQDown, HQDown) annotation(Line(points = {{36, -20}, {57, -20}, {57, 0}, {80, 0}}, color = {0, 0, 255}));
  end SlootvaartPumpingStation;

  Deltares.ChannelFlow.Hydraulic.BoundaryConditions.Level Waddenzee annotation(
    Placement(visible = true, transformation(origin = {92, 30}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Deltares.ChannelFlow.Hydraulic.Storage.Linear Afdeling1(A = 540000, H_b = -4.70, HQ.H(min = -4.7, max = -4.5),V(nominal = 1E5)) annotation(
    Placement(visible = true, transformation(origin = {24, 78}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Deltares.ChannelFlow.Hydraulic.Storage.Linear Afdeling2(A = 1490000, H_b = -5.50, HQ.H(min = -5.5, max = -5.3),V(nominal = 1E5)) annotation(
    Placement(visible = true, transformation(origin = {-102, 54}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
  Deltares.ChannelFlow.Hydraulic.BoundaryConditions.Discharge RR_afdeling1 annotation(
    Placement(visible = true, transformation(origin = {22, 34}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  Deltares.ChannelFlow.Hydraulic.BoundaryConditions.Discharge RR_afdeling2 annotation(
    Placement(visible = true, transformation(origin = {-78, 74}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));

  LeemansPumpingStation leemanspumpingstationafd1 annotation(
    Placement(visible = true, transformation(origin = {60, 56}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SlootvaartPumpingStation slootvaartpumpingstation annotation(
    Placement(visible = true, transformation(origin = {-14, 70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));

  // Input variables

  input Modelica.SIunits.VolumeFlowRate RR_afdeling1_Q(fixed = true);
  input Modelica.SIunits.VolumeFlowRate RR_afdeling2_Q(fixed = true);
  input Modelica.SIunits.Position Waddenzee_H(fixed = true);
  input Real leemanspumpingstationafd1_pomp2_Q;
  input Real leemanspumpingstationafd1_pomp1_Q;
  input Real slootvaartpumpingstation_pomp2_Q;
  input Real slootvaartpumpingstation_pomp1_Q;
  input Real energy_price(fixed=true);

  // Control variables
  //Output Variables
  output Modelica.SIunits.Position Afdeling1_HQ_H;
  output Modelica.SIunits.Position Afdeling2_HQ_H;
  //output Modelica.SIunits.Position IJsselmeer_H_out;
  //output Modelica.SIunits.Position Waddenzee_ H_out;
  //connections
equation
  connect(RR_afdeling1.HQ, Afdeling1.HQ) annotation(
    Line(points = {{22, 42}, {22, 54}, {24, 54}, {24, 70}}, color = {0, 0, 255}));
  connect(Afdeling1.HQ, leemanspumpingstationafd1.HQUp) annotation(
    Line(points = {{24, 70}, {24, 61}, {52, 61}, {52, 56}}, color = {0, 0, 255}));
  connect(leemanspumpingstationafd1.HQDown, Waddenzee.HQ) annotation(
    Line(points = {{68, 56}, {84, 56}, {84, 30}}, color = {0, 0, 255}));
  connect(Afdeling2.HQ, RR_afdeling2.HQ) annotation(
    Line(points = {{-94, 54}, {-85, 54}, {-85, 66}, {-78, 66}}, color = {0, 0, 255}));
  connect(slootvaartpumpingstation.HQUp, Afdeling2.HQ) annotation(
    Line(points = {{-22, 70}, {-50, 70}, {-50, 54}, {-94, 54}}, color = {0, 0, 255}));
  connect(slootvaartpumpingstation.HQDown, Afdeling1.HQ) annotation(
    Line(points = {{-6, 70}, {24, 70}}, color = {0, 0, 255}));

  RR_afdeling1.Q = RR_afdeling1_Q;
  RR_afdeling2.Q = RR_afdeling2_Q;
  Waddenzee.H = Waddenzee_H;
  Afdeling1.HQ.H = Afdeling1_HQ_H;
  Afdeling1.HQ.H = Afdeling2_HQ_H;
  leemanspumpingstationafd1.pomp2.Q = leemanspumpingstationafd1_pomp2_Q;
  leemanspumpingstationafd1.pomp1.Q = leemanspumpingstationafd1_pomp1_Q;
  slootvaartpumpingstation.pomp1.Q = slootvaartpumpingstation_pomp1_Q;
  slootvaartpumpingstation.pomp2.Q = slootvaartpumpingstation_pomp2_Q;

  annotation(
    Diagram(coordinateSystem(extent = {{-160, -100}, {100, 100}})),
    Icon(coordinateSystem(extent = {{-160, -100}, {100, 100}})),
    version = "",
    uses);
end Wieringermeer_afd1_afd2;
