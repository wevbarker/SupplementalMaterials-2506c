[![arXiv](https://img.shields.io/badge/arXiv-2506.21662-b31b1b.svg)](https://arxiv.org/abs/2506.21662)

# SupplementalMaterials-2506c

Supplemental material for *Infrared foundations for quantum geometry. I. Catalog of totally symmetric rank-three field theories*
(W. Barker, C. Marzo and A. Santoni), https://arxiv.org/abs/2506.21662,
Phys. Rev. D, DOI [10.1103/xwwb-gnf5](https://doi.org/10.1103/xwwb-gnf5).

Every spectrograph in the paper is regenerated from the code here, and the
catalogue table is generated from `AllModelsS123.csv`. The science is a
systematic classification of all linear, parity-conserving models propagating a
totally symmetric rank-three field on Minkowski space; each candidate is analysed with PSALTer to
extract its particle spectrum and judged ghost- and tachyon-free, or not.

### Figure map

| Figure in paper | File | Producer |
|---|---|---|
| 1 | `Propaganda.pdf` | (schematic, drawn in the manuscript source) |
| Table I | `FieldKinematicsS123Field.pdf` | `ParticleSpectroscopy.m` |
| 2 | `ParticleSpectrographS123.pdf` | `system-tests-paper-y/ParticleSpectrographS123.m` |
| 3 | `Algorithm.pdf` | (schematic, drawn in the manuscript source) |
| 4 | `GraphRepresentationS123.pdf` | `ParticleSpectroscopy.m` (survey) |
| 5 | `ParticleSpectrographS123C1E1.pdf` | `system-tests-paper-y/ParticleSpectrographS123C1E1.m` |
| 6 | `ParticleSpectrographS123C1E2.pdf` | `system-tests-paper-y/ParticleSpectrographS123C1E2.m` |
| 7 | `ParticleSpectrographS123C2E2.pdf` | `system-tests-paper-y/ParticleSpectrographS123C2E2.m` |
| 8 | `ParticleSpectrographS123B1C1D1F2.pdf` | `system-tests-paper-y/ParticleSpectrographS123B1C1D1F2.m` |
| 9 | `ParticleSpectrographS123C1D1F2.pdf` | `system-tests-paper-y/ParticleSpectrographS123C1D1F2.m` |

The `_blue` suffix on the figures as they appear in the published article is a
recolouring applied at build time; the files here are the PSALTer originals.

### Requirements

- Wolfram Language (tested on v14.2)
- the xAct suite (v1.2.0 or later)
- PSALTer (v2.0 or later), https://github.com/wevbarker/PSALTer

Every script is a kernel script, not a notebook: run it with

```bash
wolfram -run < <script>.m
```

Each writes a `ParticleSpectrograph<Model>.pdf` alongside itself. A full survey
takes hours; a single model takes minutes.

### Model naming

Model names are paths down a symmetry-restriction tree rooted at `S123`, so
`S123C1E2` is a child of `S123C1`. ``ModelNamesS123.txt`` maps
these path names to the compact display names used in the paper.

### Contents

- ``ParticleSpectroscopy.m`` - the driver: loads PSALTer, then the field kinematics and the
  root Lagrangian, and walks the whole symmetry tree.
- `ParticleSpectroscopy/` - the pieces that driver loads: field definitions and
  coupling constants, the root Lagrangian and the survey, display helpers.
- `system-tests-paper-y/` - one stand-alone script per model (27 of them),
  each reproducing that model's spectrograph on its own.
- ``AllModelsS123.csv`` - the master result table: one row per model, giving
  the imposed equalities, the avoided inequalities and the unitarity verdict.
  A model is consistent iff the unitarity field contains an actual coupling
  condition rather than a prose verdict.
- ``ModelNamesS123.txt`` - long model name to display name.
- `ParticleSpectrograph*.pdf` - the computed spectrograph for every model.
- `DeconflictionRepair.m` and `DeconflictionRepair.py` - an audit and repair of
  the third column of the catalogue. The survey's original pruning discarded a
  condition whenever it implied any other, which is correct when one condition
  is strictly stronger, but destroys BOTH when two are equivalent -- the normal
  case when two special cases share a first branching. The column was therefore
  systematically incomplete. The two scripts are independent implementations of
  the same audit, one in the Wolfram Language and one in Python, and they agree;
  `AllModelsS123.csv` here carries the corrected column, as does the published
  article. Neither script writes anything unless `DECONFLICT_WRITE=1` is set.

### Note

`.mx` files (cached Wolfram expressions) and `.nb` notebooks are deliberately
not included: the former are regenerable caches, the latter are front-end
duplicates of the `.m` scripts that are authoritative here.
