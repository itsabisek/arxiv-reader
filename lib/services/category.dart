class Categories {
  static List<Category> categories = [
    Category(name: "Computer Science", image: "cs.jpg", subcategories: [
      SubCategory(name: "Artificial Intelligence", code: "cs.AI"),
      SubCategory(name: "Hardware Architecture", code: "cs.AR"),
      SubCategory(name: "Computational Complexity", code: "cs.CC"),
      SubCategory(
          name: "Computational Engineering, Finance, and Science",
          code: "cs.CE"),
      SubCategory(name: "Computational Geometry", code: "cs.CG"),
      SubCategory(name: "Computation and Language", code: "cs.CL"),
      SubCategory(name: "Cryptography and Security", code: "cs.CR"),
      SubCategory(
          name: "Computer Vision and Pattern Recognition", code: "cs.CV"),
      SubCategory(name: "Computers and Society", code: "cs.CY"),
      SubCategory(name: "Databases", code: "cs.DB"),
      SubCategory(
          name: "Distributed, Parallel, and Cluster Computing", code: "cs.DC"),
      SubCategory(name: "Digital Libraries", code: "cs.DL"),
      SubCategory(name: "Discrete Mathematics", code: "cs.DM"),
      SubCategory(name: "Data Structures and Algorithms", code: "cs.DS"),
      SubCategory(name: "Emerging Technologies", code: "cs.ET"),
      SubCategory(name: "Formal Languages and Automata Theory", code: "cs.FL"),
      SubCategory(name: "General Literature", code: "cs.GL"),
      SubCategory(name: "Graphics", code: "cs.GR"),
      SubCategory(name: "Computer Science and Game Theory", code: "cs.GT"),
      SubCategory(name: "Human-Computer Interaction", code: "cs.HC"),
      SubCategory(name: "Information Retrieval", code: "cs.IR"),
      SubCategory(name: "Information Theory", code: "cs.IT"),
      SubCategory(name: "Machine Learning", code: "cs.LG"),
      SubCategory(name: "Logic in Computer Science", code: "cs.LO"),
      SubCategory(name: "Multiagent Systems", code: "cs.MA"),
      SubCategory(name: "Multimedia", code: "cs.MM"),
      SubCategory(name: "Mathematical Software", code: "cs.MS"),
      SubCategory(name: "Numerical Analysis", code: "cs.NA"),
      SubCategory(name: "Neural and Evolutionary Computing", code: "cs.NE"),
      SubCategory(name: "Networking and Internet Architecture", code: "cs.NI"),
      SubCategory(name: "Other Computer Science", code: "cs.OH"),
      SubCategory(name: "Operating Systems", code: "cs.OS"),
      SubCategory(name: "Performance", code: "cs.PF"),
      SubCategory(name: "Programming Languages", code: "cs.PL"),
      SubCategory(name: "Robotics", code: "cs.RO"),
      SubCategory(name: "Symbolic Computation", code: "cs.SC"),
      SubCategory(name: "Sound", code: "cs.SD"),
      SubCategory(name: "Software Engineering", code: "cs.SE"),
      SubCategory(name: "Social and Information Networks", code: "cs.SI"),
      SubCategory(name: "Systems and Control", code: "cs.SY"),
    ]),
    Category(name: "Economics", image: "econ.jpg", subcategories: [
      SubCategory(name: "Econometrics", code: "econ.EM"),
      SubCategory(name: "General Economics", code: "econ.GN"),
      SubCategory(name: "Theoretical Economics", code: "econ.TH"),
    ]),
    Category(
        name: "Electrical Engineering and Systems Science",
        image: "eess.jpg",
        subcategories: [
          SubCategory(name: "Audio and Speech Processing", code: "eess.AS"),
          SubCategory(name: "Image and Video Processing", code: "eess.IV"),
          SubCategory(name: "Signal Processing", code: "eess.SP"),
          SubCategory(name: "Systems and Control", code: "eess.SY"),
        ]),
    Category(name: "Mathematics", image: "math.jpg", subcategories: [
      SubCategory(name: "Commutative Algebra", code: "math.AC"),
      SubCategory(name: "Algebraic Geometry", code: "math.AG"),
      SubCategory(name: "Analysis of PDEs", code: "math.AP"),
      SubCategory(name: "Algebraic Topology", code: "math.AT"),
      SubCategory(name: "Classical Analysis and ODEs", code: "math.CA"),
      SubCategory(name: "Combinatorics", code: "math.CO"),
      SubCategory(name: "Category Theory", code: "math.CT"),
      SubCategory(name: "Complex Variables", code: "math.CV"),
      SubCategory(name: "Differential Geometry", code: "math.DG"),
      SubCategory(name: "Dynamical Systems", code: "math.DS"),
      SubCategory(name: "Functional Analysis", code: "math.FA"),
      SubCategory(name: "General Mathematics", code: "math.GM"),
      SubCategory(name: "General Topology", code: "math.GN"),
      SubCategory(name: "Group Theory", code: "math.GR"),
      SubCategory(name: "Geometric Topology", code: "math.GT"),
      SubCategory(name: "History and Overview", code: "math.HO"),
      SubCategory(name: "Information Theory", code: "math.IT"),
      SubCategory(name: "K-Theory and Homology", code: "math.KT"),
      SubCategory(name: "Logic", code: "math.LO"),
      SubCategory(name: "Metric Geometry", code: "math.MG"),
      SubCategory(name: "Mathematical Physics", code: "math.MP"),
      SubCategory(name: "Numerical Analysis", code: "math.NA"),
      SubCategory(name: "Number Theory", code: "math.NT"),
      SubCategory(name: "Operator Algebras", code: "math.OA"),
      SubCategory(name: "Optimization and Control", code: "math.OC"),
      SubCategory(name: "Probability", code: "math.PR"),
      SubCategory(name: "Quantum Algebra", code: "math.QA"),
      SubCategory(name: "Rings and Algebras", code: "math.RA"),
      SubCategory(name: "Representation Theory", code: "math.RT"),
      SubCategory(name: "Symplectic Geometry", code: "math.SG"),
      SubCategory(name: "Spectral Theory", code: "math.SP"),
      SubCategory(name: "Statistics Theory", code: "math.ST"),
    ]),
    Category(name: "Quantitative Biology", image: "bio.jpg", subcategories: [
      SubCategory(name: "Biomolecules", code: "q-bio.BM"),
      SubCategory(name: "Cell Behavior", code: "q-bio.CB"),
      SubCategory(name: "Genomics", code: "q-bio.GN"),
      SubCategory(name: "Molecular Networks", code: "q-bio.MN"),
      SubCategory(name: "Neurons and Cognition", code: "q-bio.NC"),
      SubCategory(name: "Other Quantitative Biology", code: "q-bio.OT"),
      SubCategory(name: "Populations and Evolution", code: "q-bio.PE"),
      SubCategory(name: "Quantitative Methods", code: "q-bio.QM"),
      SubCategory(name: "Subcellular Processes", code: "q-bio.SC"),
      SubCategory(name: "Tissues and Organs", code: "q-bio.TO"),
    ]),
    Category(name: "Quantitative Finance", image: "fin.jpg", subcategories: [
      SubCategory(name: "Computational Finance", code: "q-fin.CP"),
      SubCategory(name: "Economics", code: "q-fin.EC"),
      SubCategory(name: "General Finance", code: "q-fin.GN"),
      SubCategory(name: "Mathematical Finance", code: "q-fin.MF"),
      SubCategory(name: "Portfolio Management", code: "q-fin.PM"),
      SubCategory(name: "Pricing of Securities", code: "q-fin.PR"),
      SubCategory(name: "Risk Management", code: "q-fin.RM"),
      SubCategory(name: "Statistical Finance", code: "q-fin.ST"),
      SubCategory(name: "Trading and Market Microstructure", code: "q-fin.TR"),
    ]),
    Category(name: "Statistics", image: "stat.jpg", subcategories: [
      SubCategory(name: "Applications", code: "stat.AP"),
      SubCategory(name: "Computation", code: "stat.CO"),
      SubCategory(name: "Methodology", code: "stat.ME"),
      SubCategory(name: "Machine Learning", code: "stat.ML"),
      SubCategory(name: "Other Statistics", code: "stat.OT"),
      SubCategory(name: "Statistics Theory", code: "stat.TH"),
    ]),
  ];
}

class Category {
  String name;
  String image;

  List<SubCategory> subcategories;

  Category(
      {required this.name, required this.subcategories, required this.image});
}

class SubCategory {
  String name;
  String code;

  SubCategory({required this.name, required this.code});
}
