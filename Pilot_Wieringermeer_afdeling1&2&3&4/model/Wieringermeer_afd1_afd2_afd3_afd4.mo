model Wieringermeer_afd1_afd2_afd3_afd4


  model LeemansPumpingStationAfd1
    extends Deltares.HydraulicStructures.PumpingStation.PumpingStation(n_pumps = 2);

    model LeemansPump
      extends Deltares.HydraulicStructures.PumpingStation.Pump(power_coefficients = {{130541.9770, -35027.8386, 5730.1652}, {915.4174, 4407.3120, 0.0000}, {847.4624, 0.0000, 0.0000}}, working_area = {{{15.5809, -3.9970, 0.0000}, {-1.0000, 0.0000, 0.0000}, {0.0000, 0.0000, 0.0000}}, {{15.5809, -3.9970, 0.0000}, {-1.0000, 0.0000, 0.0000}, {0.0000, 0.0000, 0.0000}}, {{2.1087, 3.5391, 0.0000}, {-1.0000, 0.0000, 0.0000}, {0.0000, 0.0000, 0.0000}}, {{0.1724, 0.5536, 0.0000}, {-1.0000, 0.0000, 0.0000}, {0.0000, 0.0000, 0.0000}}}, speed_coefficients = {{356.0000, 0.0000, -0.0000}, {0.0000, -0.0000, 0.0000}, {-0.0000, 0.0000, 0.0000}}, working_area_direction = {-1, 1, 1, -1}, minimum_on = 0.5 * 3600);
    end LeemansPump;

    LeemansPump pomp1 annotation(
      Placement(visible = true, transformation(origin = {28, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    LeemansPump pomp2 annotation(
      Placement(visible = true, transformation(origin = {28, -20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  equation
    connect(HQUp, pomp1.HQUp) annotation(
      Line(points = {{-80, 0}, {-2, 0}, {-2, 20}, {20, 20}}, color = {0, 0, 255}));
    connect(pomp1.HQDown, HQDown) annotation(
      Line(points = {{36, 20}, {57, 20}, {57, 0}, {80, 0}}, color = {0, 0, 255}));
    connect(HQUp, pomp2.HQUp) annotation(
      Line(points = {{-80, 0}, {-2, 0}, {-2, -20}, {20, -20}}, color = {0, 0, 255}));
    connect(pomp2.HQDown, HQDown) annotation(
      Line(points = {{36, -20}, {57, -20}, {57, 0}, {80, 0}}, color = {0, 0, 255}));
  end LeemansPumpingStationAfd1;

  model LeemansPumpingStationAfd3
    extends Deltares.HydraulicStructures.PumpingStation.PumpingStation(n_pumps = 2);

    model LeemansPump
      extends Deltares.HydraulicStructures.PumpingStation.Pump(power_coefficients = {{117405.8763, 420.3746, 4106.9023}, {26112.6748, -883.3760, 0.0000}, {47.5025, 0.0000, 0.0000}}, working_area = {{{23.1468, -5.4052, 0.0000}, {-1.0000, 0.0000, 0.0000}, {0.0000, 0.0000, 0.0000}}, {{23.1468, -5.4052, 0.0000}, {-1.0000, 0.0000, 0.0000}, {0.0000, 0.0000, 0.0000}}, {{2.4417, 4.7470, 0.0000}, {-1.0000, 0.0000, 0.0000}, {0.0000, 0.0000, 0.0000}}, {{0.3438, 1.1481, 0.0000}, {-1.0000, 0.0000, 0.0000}, {0.0000, 0.0000, 0.0000}}}, speed_coefficients = {{430.4000, 0.0000, -0.0000}, {0.0000, -0.0000, 0.0000}, {-0.0000, 0.0000, 0.0000}}, working_area_direction = {-1, 1, 1, -1}, minimum_on = 0.5 * 3600);
    end LeemansPump;

    LeemansPump pomp1 annotation(
      Placement(visible = true, transformation(origin = {28, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    LeemansPump pomp2 annotation(
      Placement(visible = true, transformation(origin = {28, -20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  equation
    connect(HQUp, pomp1.HQUp) annotation(
      Line(points = {{-80, 0}, {-2, 0}, {-2, 20}, {20, 20}}, color = {0, 0, 255}));
    connect(pomp1.HQDown, HQDown) annotation(
      Line(points = {{36, 20}, {57, 20}, {57, 0}, {80, 0}}, color = {0, 0, 255}));
    connect(HQUp, pomp2.HQUp) annotation(
      Line(points = {{-80, 0}, {-2, 0}, {-2, -20}, {20, -20}}, color = {0, 0, 255}));
    connect(pomp2.HQDown, HQDown) annotation(
      Line(points = {{36, -20}, {57, -20}, {57, 0}, {80, 0}}, color = {0, 0, 255}));
  end LeemansPumpingStationAfd3;

  model LelyPumpingStationAfd2
    extends Deltares.HydraulicStructures.PumpingStation.PumpingStation(n_pumps = 1);

    model LelyPump
      extends Deltares.HydraulicStructures.PumpingStation.Pump(power_coefficients = {{-59665.7838, 49306.6765, 0.0000}, {38407.4379, 0.0000, 0.0000}, {-0.0000, 0.0000, 0.0000}}, working_area = {{{23.7288, -2.3352, 0.0000}, {-1.0000, 0.0000, 0.0000}, {0.0000, 0.0000, 0.0000}}, {{23.7288, -2.3352, 0.0000}, {-1.0000, 0.0000, 0.0000}, {0.0000, 0.0000, 0.0000}}, {{0.1203, 0.8726, 0.0000}, {-1.0000, 0.0000, 0.0000}, {0.0000, 0.0000, 0.0000}}, {{0.0651, 0.5303, 0.0000}, {-1.0000, 0.0000, 0.0000}, {0.0000, 0.0000, 0.0000}}}, speed_coefficients = {{110.0000, -0.0000, 0.0000}, {-0.0000, 0.0000, 0.0000}, {0.0000, 0.0000, 0.0000}}, working_area_direction = {-1, 1, 1, -1}, minimum_on = 0.5 * 3600);
    end LelyPump;

    LelyPump pomp1 annotation(
      Placement(visible = true, transformation(origin = {28, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  equation
    connect(HQUp, pomp1.HQUp) annotation(
      Line(points = {{-80, 0}, {-2, 0}, {-2, 20}, {20, 20}}, color = {0, 0, 255}));
    connect(pomp1.HQDown, HQDown) annotation(
      Line(points = {{36, 20}, {57, 20}, {57, 0}, {80, 0}}, color = {0, 0, 255}));
  end LelyPumpingStationAfd2;

  model LelyPumpingStationAfd3
    extends Deltares.HydraulicStructures.PumpingStation.PumpingStation(n_pumps = 1);

    model LelyPump
      extends Deltares.HydraulicStructures.PumpingStation.Pump(power_coefficients = {{-59665.7838, 49306.6765, 0.0000}, {38407.4379, 0.0000, 0.0000}, {-0.0000, 0.0000, 0.0000}}, working_area = {{{23.7288, -2.3352, 0.0000}, {-1.0000, 0.0000, 0.0000}, {0.0000, 0.0000, 0.0000}}, {{23.7288, -2.3352, 0.0000}, {-1.0000, 0.0000, 0.0000}, {0.0000, 0.0000, 0.0000}}, {{0.1203, 0.8726, 0.0000}, {-1.0000, 0.0000, 0.0000}, {0.0000, 0.0000, 0.0000}}, {{0.0651, 0.5303, 0.0000}, {-1.0000, 0.0000, 0.0000}, {0.0000, 0.0000, 0.0000}}}, speed_coefficients = {{110.0000, -0.0000, 0.0000}, {-0.0000, 0.0000, 0.0000}, {0.0000, 0.0000, 0.0000}}, working_area_direction = {-1, 1, 1, -1}, minimum_on = 0.5 * 3600);
    end LelyPump;

    LelyPump pomp1 annotation(
      Placement(visible = true, transformation(origin = {28, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  equation
    connect(HQUp, pomp1.HQUp) annotation(
      Line(points = {{-80, 0}, {-2, 0}, {-2, 20}, {20, 20}}, color = {0, 0, 255}));
    connect(pomp1.HQDown, HQDown) annotation(
      Line(points = {{36, 20}, {57, 20}, {57, 0}, {80, 0}}, color = {0, 0, 255}));
  end LelyPumpingStationAfd3;

  model LelyPumpingStationAfd4
    extends Deltares.HydraulicStructures.PumpingStation.PumpingStation(n_pumps = 1);

    model LelyPump
      extends Deltares.HydraulicStructures.PumpingStation.Pump(power_coefficients = {{-59665.7838, 49306.6765, 0.0000}, {38407.4379, 0.0000, 0.0000}, {-0.0000, 0.0000, 0.0000}}, working_area = {{{23.7288, -2.3352, 0.0000}, {-1.0000, 0.0000, 0.0000}, {0.0000, 0.0000, 0.0000}}, {{23.7288, -2.3352, 0.0000}, {-1.0000, 0.0000, 0.0000}, {0.0000, 0.0000, 0.0000}}, {{0.1203, 0.8726, 0.0000}, {-1.0000, 0.0000, 0.0000}, {0.0000, 0.0000, 0.0000}}, {{0.0651, 0.5303, 0.0000}, {-1.0000, 0.0000, 0.0000}, {0.0000, 0.0000, 0.0000}}}, speed_coefficients = {{110.0000, -0.0000, 0.0000}, {-0.0000, 0.0000, 0.0000}, {0.0000, 0.0000, 0.0000}}, working_area_direction = {-1, 1, 1, -1}, minimum_on = 0.5 * 3600);
    end LelyPump;

    LelyPump pomp1 annotation(
      Placement(visible = true, transformation(origin = {28, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  equation
    connect(HQUp, pomp1.HQUp) annotation(
      Line(points = {{-80, 0}, {-2, 0}, {-2, 20}, {20, 20}}, color = {0, 0, 255}));
    connect(pomp1.HQDown, HQDown) annotation(
      Line(points = {{36, 20}, {57, 20}, {57, 0}, {80, 0}}, color = {0, 0, 255}));
  end LelyPumpingStationAfd4;

  model SlootvaartPumpingStation
    extends Deltares.HydraulicStructures.PumpingStation.PumpingStation(n_pumps = 2);

    model SlootvaartPump
      extends Deltares.HydraulicStructures.PumpingStation.Pump(power_coefficients = {{126293.3406, -203740.6303, 79127.3106}, {22068.4385, 643.2376, 0.0000}, {1.3649, 0.0000, 0.0000}}, working_area = {{{5.7568, -3.0380, 0.0000}, {-1.0000, 0.0000, 0.0000}, {0.0000, 0.0000, 0.0000}}, {{5.7568, -3.0380, 0.0000}, {-1.0000, 0.0000, 0.0000}, {0.0000, 0.0000, 0.0000}}, {{0.6811, 0.8726, 0.0000}, {-1.0000, 0.0000, 0.0000}, {0.0000, 0.0000, 0.0000}}, {{0.2821, 0.4373, 0.0000}, {-1.0000, 0.0000, 0.0000}, {0.0000, 0.0000, 0.0000}}}, speed_coefficients = {{390.0002, -0.0002, 0.0001}, {-0.0001, 0.0000, 0.0000}, {0.0000, 0.0000, 0.0000}}, working_area_direction = {-1, 1, 1, -1}, minimum_on = 0.5 * 3600);
    end SlootvaartPump;

    SlootvaartPump pomp1 annotation(
      Placement(visible = true, transformation(origin = {28, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    SlootvaartPump pomp2 annotation(
      Placement(visible = true, transformation(origin = {28, -20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  equation
    connect(HQUp, pomp1.HQUp) annotation(
      Line(points = {{-80, 0}, {-2, 0}, {-2, 20}, {20, 20}}, color = {0, 0, 255}));
    connect(pomp1.HQDown, HQDown) annotation(
      Line(points = {{36, 20}, {57, 20}, {57, 0}, {80, 0}}, color = {0, 0, 255}));
    connect(HQUp, pomp2.HQUp) annotation(
      Line(points = {{-80, 0}, {-2, 0}, {-2, -20}, {20, -20}}, color = {0, 0, 255}));
    connect(pomp2.HQDown, HQDown) annotation(
      Line(points = {{36, -20}, {57, -20}, {57, 0}, {80, 0}}, color = {0, 0, 255}));
  end SlootvaartPumpingStation;

  model HoekvaartPumpingStation
    extends Deltares.HydraulicStructures.PumpingStation.PumpingStation(n_pumps = 2);

    model HoekvaartPump
      extends Deltares.HydraulicStructures.PumpingStation.Pump(power_coefficients = {{187102.9625, -270664.4937, 97221.2234}, {7595.9266, 10116.1385, 0.0000}, {276.0178, 0.0000, 0.0000}}, working_area = {{{4.6452, -2.5272, 0.0000}, {-1.0000, 0.0000, 0.0000}, {0.0000, 0.0000, 0.0000}}, {{4.6452, -2.5272, 0.0000}, {-1.0000, 0.0000, 0.0000}, {0.0000, 0.0000, 0.0000}}, {{0.5493, 0.6861, 0.0000}, {-1.0000, 0.0000, 0.0000}, {0.0000, 0.0000, 0.0000}}, {{0.1349, 0.2158, 0.0000}, {-1.0000, 0.0000, 0.0000}, {0.0000, 0.0000, 0.0000}}}, speed_coefficients = {{340.0000, -0.0000, 0.0000}, {-0.0000, 0.0000, 0.0000}, {0.0000, 0.0000, 0.0000}}, working_area_direction = {-1, 1, 1, -1}, minimum_on = 0.5 * 3600);
    end HoekvaartPump;

    HoekvaartPump pomp1 annotation(
      Placement(visible = true, transformation(origin = {28, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    HoekvaartPump pomp2 annotation(
      Placement(visible = true, transformation(origin = {28, -20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  equation
    connect(HQUp, pomp1.HQUp) annotation(
      Line(points = {{-80, 0}, {-2, 0}, {-2, 20}, {20, 20}}, color = {0, 0, 255}));
    connect(pomp1.HQDown, HQDown) annotation(
      Line(points = {{36, 20}, {57, 20}, {57, 0}, {80, 0}}, color = {0, 0, 255}));
    connect(HQUp, pomp2.HQUp) annotation(
      Line(points = {{-80, 0}, {-2, 0}, {-2, -20}, {20, -20}}, color = {0, 0, 255}));
    connect(pomp2.HQDown, HQDown) annotation(
      Line(points = {{36, -20}, {57, -20}, {57, 0}, {80, 0}}, color = {0, 0, 255}));
  end HoekvaartPumpingStation;

  Wieringermeer_afd1_afd2_afd3_afd4.LeemansPumpingStationAfd1 leemanspumpingstationafd1 annotation(
    Placement(visible = true, transformation(origin = {64, 68}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Wieringermeer_afd1_afd2_afd3_afd4.LeemansPumpingStationAfd3 leemanspumpingstationafd3 annotation(
      Placement(visible = true, transformation(origin = {60, 16}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Wieringermeer_afd1_afd2_afd3_afd4.SlootvaartPumpingStation slootvaartpumpingstation annotation(
    Placement(visible = true, transformation(origin = {-16, 84}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Wieringermeer_afd1_afd2_afd3_afd4.LelyPumpingStationAfd2 lelypumpingstationafd2 annotation(
    Placement(visible = true, transformation(origin = {-126, -50}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Wieringermeer_afd1_afd2_afd3_afd4.LelyPumpingStationAfd4 lelypumpingstationafd4 annotation(
    Placement(visible = true, transformation(origin = {-80, -50}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Wieringermeer_afd1_afd2_afd3_afd4.LelyPumpingStationAfd3 lelypumpingstationafd3 annotation(
    Placement(visible = true, transformation(origin = {-24, -52}, extent = {{-10, -10}, {10, 10}}, rotation = 270)));
  Wieringermeer_afd1_afd2_afd3_afd4.HoekvaartPumpingStation hoekvaartpumpingstation annotation(
    Placement(visible = true, transformation(origin = {-40, 16}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Deltares.ChannelFlow.Hydraulic.BoundaryConditions.Level Waddenzee annotation(
    Placement(visible = true, transformation(origin = {92, 34}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Deltares.ChannelFlow.Hydraulic.BoundaryConditions.Level IJsselmeer annotation(
    Placement(visible = true, transformation(origin = {-126, -90}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  Deltares.ChannelFlow.Hydraulic.Storage.Linear Afdeling1(A = 540000, H_b = -4.70, HQ.H(min = -4.7, max = -4.5), V(nominal = 1E5)) annotation(
    Placement(visible = true, transformation(origin = {34, 90}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Deltares.ChannelFlow.Hydraulic.Storage.Linear Afdeling2(A = 1490000, H_b = -5.50, HQ.H(min = -5.5, max = -5.3), V(nominal = 1E5)) annotation(
    Placement(visible = true, transformation(origin = {-134, 44}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
  Deltares.ChannelFlow.Hydraulic.Storage.Linear Afdeling3(A = 1020000, H_b = -6.20, HQ.H(min = -6.20, max = -6.0), V(nominal = 1E5)) annotation(
    Placement(visible = true, transformation(origin = {-8, 24}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Deltares.ChannelFlow.Hydraulic.Storage.Linear Afdeling4(A = 560000, H_b = -6.70, HQ.H(min = -6.70, max = -6.50), V(nominal = 1E5)) annotation(
    Placement(visible = true, transformation(origin = {-88, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
  Deltares.ChannelFlow.Hydraulic.BoundaryConditions.Discharge RR_afdeling1 annotation(
    Placement(visible = true, transformation(origin = {34, 52}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  Deltares.ChannelFlow.Hydraulic.BoundaryConditions.Discharge RR_afdeling2 annotation(
    Placement(visible = true, transformation(origin = {-126, 66}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Deltares.ChannelFlow.Hydraulic.BoundaryConditions.Discharge RR_afdeling3 annotation(
    Placement(visible = true, transformation(origin = {-8, -2}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  Deltares.ChannelFlow.Hydraulic.BoundaryConditions.Discharge RR_afdeling4 annotation(
    Placement(visible = true, transformation(origin = {-78, 28}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  // Input variables
  input Modelica.SIunits.VolumeFlowRate RR_afdeling1_Q(fixed = true);
  input Modelica.SIunits.VolumeFlowRate RR_afdeling2_Q(fixed = true);
  input Modelica.SIunits.VolumeFlowRate RR_afdeling3_Q(fixed = true);
  input Modelica.SIunits.VolumeFlowRate RR_afdeling4_Q(fixed = true);
  input Modelica.SIunits.Position Waddenzee_H(fixed = true);
  input Modelica.SIunits.Position IJsselmeer_H(fixed = true);
  input Real leemanspumpingstationafd1_pomp2_Q;
  input Real leemanspumpingstationafd1_pomp1_Q;
  input Real leemanspumpingstationafd3_pomp2_Q;
  input Real leemanspumpingstationafd3_pomp1_Q;
  input Real hoekvaartpumpingstation_pomp2_Q;
  input Real hoekvaartpumpingstation_pomp1_Q;
  input Real slootvaartpumpingstation_pomp2_Q;
  input Real slootvaartpumpingstation_pomp1_Q;
  input Real lelypumpingstationafd3_pomp1_Q;
  input Real lelypumpingstationafd2_pomp1_Q;
  input Real lelypumpingstationafd4_pomp1_Q;
  input Real energy_price(fixed = true);
  // Control variables
  //Output Variables
  output Modelica.SIunits.Position Afdeling1_HQ_H;
  output Modelica.SIunits.Position Afdeling2_HQ_H;
  output Modelica.SIunits.Position Afdeling3_HQ_H;
  output Modelica.SIunits.Position Afdeling4_HQ_H;
equation
  connect(Afdeling2.HQ, lelypumpingstationafd2.HQUp) annotation(
    Line(points = {{-126, 44}, {-126, -42}}, color = {0, 0, 255}));
  connect(lelypumpingstationafd2.HQDown, IJsselmeer.HQ) annotation(
    Line(points = {{-126, -58}, {-126, -82}}, color = {0, 0, 255}));
  connect(leemanspumpingstationafd1.HQDown, Waddenzee.HQ) annotation(
    Line(points = {{72, 68}, {84, 68}, {84, 34}}, color = {0, 0, 255}));
  connect(leemanspumpingstationafd3.HQDown, Waddenzee.HQ) annotation(
    Line(points = {{68, 16}, {84, 16}, {84, 34}}, color = {0, 0, 255}));
  connect(slootvaartpumpingstation.HQDown, Afdeling1.HQ) annotation(
    Line(points = {{-8, 84}, {12, 84}, {12, 82}, {34, 82}}, color = {0, 0, 255}));
  connect(slootvaartpumpingstation.HQUp, Afdeling2.HQ) annotation(
    Line(points = {{-24, 84}, {-24, 44}, {-126, 44}}, color = {0, 0, 255}));
  connect(Afdeling3.HQ, leemanspumpingstationafd3.HQUp) annotation(
    Line(points = {{-8, 16}, {52, 16}}, color = {0, 0, 255}));
  connect(hoekvaartpumpingstation.HQDown, Afdeling3.HQ) annotation(
    Line(points = {{-32, 16}, {-8, 16}}, color = {0, 0, 255}));
  connect(Afdeling4.HQ, hoekvaartpumpingstation.HQUp) annotation(
    Line(points = {{-80, 0}, {-63, 0}, {-63, 16}, {-48, 16}}, color = {0, 0, 255}));
  connect(lelypumpingstationafd4.HQDown, IJsselmeer.HQ) annotation(
    Line(points = {{-80, -58}, {-80, -82}, {-126, -82}}, color = {0, 0, 255}));
  connect(lelypumpingstationafd3.HQDown, IJsselmeer.HQ) annotation(
    Line(points = {{-24, -60}, {-24, -82}, {-126, -82}}, color = {0, 0, 255}));
  connect(Afdeling3.HQ, lelypumpingstationafd3.HQUp) annotation(
    Line(points = {{-8, 16}, {-24, 16}, {-24, -44}, {-24, -44}}, color = {0, 0, 255}));
  connect(Afdeling3.HQ, RR_afdeling3.HQ) annotation(
    Line(points = {{-8, 16}, {-8, 6}}, color = {0, 0, 255}));
  connect(Afdeling4.HQ, lelypumpingstationafd4.HQUp) annotation(
    Line(points = {{-80, 0}, {-80, -42}}, color = {0, 0, 255}));
  connect(Afdeling2.HQ, RR_afdeling2.HQ) annotation(
    Line(points = {{-126, 44}, {-126, 58}}, color = {0, 0, 255}));
  connect(RR_afdeling4.HQ, Afdeling4.HQ) annotation(
    Line(points = {{-78, 20}, {-80, 20}, {-80, 0}}, color = {0, 0, 255}));
  connect(Afdeling1.HQ, leemanspumpingstationafd1.HQUp) annotation(
    Line(points = {{34, 82}, {34, 67}, {56, 67}, {56, 68}}, color = {0, 0, 255}));
  connect(RR_afdeling1.HQ, Afdeling1.HQ) annotation(
    Line(points = {{34, 60}, {34, 82}}, color = {0, 0, 255}));
  RR_afdeling1.Q = RR_afdeling1_Q;
  RR_afdeling2.Q = RR_afdeling2_Q;
  RR_afdeling3.Q = RR_afdeling3_Q;
  RR_afdeling4.Q = RR_afdeling4_Q;
  Waddenzee.H = Waddenzee_H;
  IJsselmeer.H = IJsselmeer_H;
  Afdeling1.HQ.H = Afdeling1_HQ_H;
  Afdeling2.HQ.H = Afdeling2_HQ_H;
  Afdeling3.HQ.H = Afdeling3_HQ_H;
  Afdeling4.HQ.H = Afdeling4_HQ_H;
  leemanspumpingstationafd1.pomp2.Q = leemanspumpingstationafd1_pomp2_Q;
  leemanspumpingstationafd1.pomp1.Q = leemanspumpingstationafd1_pomp1_Q;
  leemanspumpingstationafd3.pomp2.Q = leemanspumpingstationafd3_pomp2_Q;
  leemanspumpingstationafd3.pomp1.Q = leemanspumpingstationafd3_pomp1_Q;
  lelypumpingstationafd2.pomp1.Q = lelypumpingstationafd2_pomp1_Q;
  lelypumpingstationafd3.pomp1.Q = lelypumpingstationafd3_pomp1_Q;
  lelypumpingstationafd4.pomp1.Q = lelypumpingstationafd4_pomp1_Q;
  slootvaartpumpingstation.pomp1.Q = slootvaartpumpingstation_pomp1_Q;
  slootvaartpumpingstation.pomp2.Q = slootvaartpumpingstation_pomp2_Q;
  hoekvaartpumpingstation.pomp1.Q = hoekvaartpumpingstation_pomp1_Q;
  hoekvaartpumpingstation.pomp2.Q = hoekvaartpumpingstation_pomp2_Q;
  annotation(
    Diagram(coordinateSystem(extent = {{-160, -100}, {100, 100}})),
    Icon(coordinateSystem(extent = {{-160, -100}, {100, 100}})),
    version = "",
    uses);
end Wieringermeer_afd1_afd2_afd3_afd4;
