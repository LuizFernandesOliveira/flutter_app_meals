enum CostType {
  Cheap('Barato'),
  Fair('Justo'),
  Expensive('Caro');

  const CostType(this.description);

  final String description;
}