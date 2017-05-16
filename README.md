# Mirror of ODP Portal

This repository contains a mirror of the official list of [Content Ontology Design Patterns](http://ontologydesignpatterns.org/wiki/Submissions:ContentOPs) hosted at [OntologyDesignPatterns.org](http://ontologydesignpatterns.org).
The content is intended to be used in case of lack of Internet connectivity at the [Modular Ontology Modeling with Ontology Design Patterns Tutorial](http://ontologydesignpatterns.org/wiki/Training:Tutorial:_Modular_Ontology_Modeling_with_Ontology_Design_Patterns_at_ESWC2017) at [ESWC2017](http://2017.eswc-conferences.org/)

This mirror was generated as follows.

1. From http://ontologydesignpatterns.org/wiki/Submissions:ContentOPs, open each listed ODP in a separate tab.
2. Execute the Chrome-SaveArchive.applescript to save each tab to disk including dependencies
3. Move the ODP files to a subdirectory to clean up the structure somewhat. Keep the main ContentODP listing in the parent directory, renaming it to index.html
4. Run a regex search and replace to fix up links from index.html to the constituent ODPs. Replace `http://ontologydesignpatterns.org/wiki/Submissions:(.[^"]*)` by `odps/Submissions-$1.html`
5. ???
6. Profit!
