
load('../model/iML1515.mat');


% add metadata fields
iML1515.id = 'iML1515';
iML1515.version = '0.0.1';
load('Human-GEM.mat');
iML1515.annotation = structfun(@(x) '',ihuman.annotation,'UniformOutput',0);
iML1515.annotation.defaultLB = -1000;
iML1515.annotation.defaultUB = 1000;


% adapt to RAVEN format
iML1515.subSystems = cellfun(@(s) {{s}}, iML1515.subSystems);
metComps = regexprep(iML1515.mets,'.*\_(.+)$','$1');
iML1515.comps = unique(metComps);
[~, iML1515.metComps]=ismember(metComps,iML1515.comps);
iML1515.compNames = {'Cytosol';'Extracellular';'Periplasm'};
iML1515.metCharges = iML1515.metCharge;
iML1515 = rmfield(iML1515,{'metCharge'});


% update MATLAB file and export to HumanGEM compatible YAML format
save('../model/iML1515.mat','iML1515');
exportYaml(iML1515,'../model/iML1515.yml');

