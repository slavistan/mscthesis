---
title: A High-Performance Matrix Storage Format for Sparse Banded Matrices Derived From Structure Grids
author: Stanislaw Hüll
theme: metropolis
header-includes:
  - \usepackage{enumitem}
  - \setlistdepth{20}
  - \renewlist{itemize}{itemize}{20}
  - \renewlist{enumerate}{enumerate}{20}
  - \setlist[itemize]{label=$\cdot$}
  - \setlist[itemize,1]{label=\textbullet}
  - \setlist[itemize,2]{label=--}
  - \setlist[itemize,3]{label=*}
---

# Problemstellung

## Structured Grids

+ Structured grids & Simulation intro
  + used for simulations
    + Problem is linearized and discretized -> Grid is formed
  + preferred over unstructured meshes
    + more performant algorithms
  + solution procedure involves mvm with system matrix
    + encodes adjacency structure of matrix (acc. to discretization etc)

## SBMs

+ Characterization of SBMs
  + multiple diagonals; density & holes depend on b.c.
  + count and distance of diagonals depends varies
    + discretization scheme
    + dimensionality of target entity
  + values depend on problem
    + constant or varying (--> weights of stencil)
  + diagonal format
    + only for fully structured grids
    + heterogeneous meshes w/ structured segments
    + local perturbations of the structure (e.g. line integral)
    + stencil change for locally increase resolution
    + ==> csr

## CSR -> C3SR

+ csr is commonly used
  + general purpose
  + clearly suboptimal for SBM.
    + repetitiveness not captured

+ Use idea of CSR and specialize / extend it for SBMs.
  + Retain data locality for MVM (row-major)
  + Split representation of values and column indices
