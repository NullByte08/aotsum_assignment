

double getRelativeDimension(double pixelsInUI, double uiScreenDimension, double actualScreenDimension) {
  return pixelsInUI * (actualScreenDimension / uiScreenDimension);
}
