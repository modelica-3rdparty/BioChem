within BioChem.Reactions.MassAction.Reversible.TriTri;

model Ttrfi "Tri-tri reversible forward inhibition reaction"
  extends BioChem.Interfaces.Reactions.Ttr;
  extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
  parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
  parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
equation
  rr = k1 / iF1.c * s1.c ^ nS1 * s2.c ^ nS2 * s3.c ^ nS3 * s1.V - k2 * p1.c ^ nP1 * p2.c ^ nP2 * p3.c ^ nP3 * p1.V;
  annotation(
    Documentation,
    Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
    Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
end Ttrfi;
