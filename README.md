# 3SCover
3SCover is a method to identify safeguard TF from cell type -TF network by an extended mimimum set cover model.

# Description
Transcription factors (TFs) define cellular identity either by activating target cell program or silencing donor program as demonstrated by intensive cell reprogramming studies. Here, we propose an extended minimum set cover model with stable selection (3Scover) to systematically identify silencing TFs, named safeguard TFs from omics data. Firstly, a cell type-TF specificity network is constructed to systematically link cell types with their specifically expressed TFs. Then we search the minimum TF set to cover this network with “many but one specificity” characteristic and integrate many subsampling models for a stable solution. 3Scover identified 30 safeguard TFs in human and mouse respectively. Those safeguard TFs are significantly enriched in the experimentally discovered reprogramming panel with their protein-protein interactors. In addition, they tend to interact closely with chromatin regulators, negatively regulate transcription, and function earlier in development. Collectively, 3Scover allows us to probe master TFs and combinatorial regulation in controlling cell identity.

# Method
Classical set cover model is introduced to find the minimum safeguard TF set to cover the cell type-TF network. To get a robust safeguard TF set, we extend the classical model by introducing the stability selection. This is an ensemble strategy by subsampling the cell type-TF specificity network and aggregating the minimum safeguard TF sets based on each subnetwork.

# Reference
Qiuyue Yuan and Yong Wang. 3Scover: Identifying safeguard TF from cell type-TF specificity network by an extended minimum set cover model, iScience, 2020.
https://www.sciencedirect.com/science/article/pii/S2589004220304120
