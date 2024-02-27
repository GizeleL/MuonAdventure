//
// ********************************************************************
// * License and Disclaimer                                           *
// *                                                                  *
// * The  Geant4 software  is  copyright of the Copyright Holders  of *
// * the Geant4 Collaboration.  It is provided  under  the terms  and *
// * conditions of the Geant4 Software License,  included in the file *
// * LICENSE and available at  http://cern.ch/geant4/license .  These *
// * include a list of copyright holders.                             *
// *                                                                  *
// * Neither the authors of this software system, nor their employing *
// * institutes,nor the agencies providing financial support for this *
// * work  make  any representation or  warranty, express or implied, *
// * regarding  this  software system or assume any liability for its *
// * use.  Please see the license in the file  LICENSE  and URL above *
// * for the full disclaimer and the limitation of liability.         *
// *                                                                  *
// * This  code  implementation is the result of  the  scientific and *
// * technical work of the GEANT4 collaboration.                      *
// * By using,  copying,  modifying or  distributing the software (or *
// * any work based  on the software)  you  agree  to acknowledge its *
// * use  in  resulting  scientific  publications,  and indicate your *
// * acceptance of all terms of the Geant4 Software license.          *
// ********************************************************************
//
/// \file electromagnetic/TestEm17/src/SteppingAction.cc
/// \brief Implementation of the SteppingAction class
//
//
//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......
//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......

#include "SteppingAction.hh"
#include "G4EventManager.hh"
#include "G4MuonPlus.hh"
#include "G4ParticleDefinition.hh"
#include "G4ParticleTable.hh"
#include "HistoManager.hh"
#include "RunAction.hh"

#include "G4RunManager.hh"

//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......

SteppingAction::SteppingAction(RunAction *RuAct, HistoManager *Hist)
    : G4UserSteppingAction(), fRunAction(RuAct), fHistoManager(Hist) {}

//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......

SteppingAction::~SteppingAction() {}

//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......

void SteppingAction::UserSteppingAction(const G4Step *aStep) {

    // Protection
    if (!aStep->GetPostStepPoint()) return;
    if (!aStep->GetPostStepPoint()->GetProcessDefinedStep()) return;
    //
    G4StepPoint *endPoint = aStep->GetPostStepPoint();
    G4String procName = endPoint->GetProcessDefinedStep()->GetProcessName();
    // count processes
    //
    fRunAction->CountProcesses(procName);
    // plot energy transfered
    //
    G4StepPoint *startPoint = aStep->GetPreStepPoint();
    G4double E0 = startPoint->GetKineticEnergy();
    G4double edep = aStep->GetTotalEnergyDeposit();
    G4double E1 = E0 - edep;
    G4double E2 = endPoint->GetKineticEnergy();
    G4double etrans = E1 - E2;
    G4double lgepsE = 0.;
    if (etrans > 0.) lgepsE = std::log10(etrans / E1);

    G4int id = 0;
    if (procName == "muIoni")
        id = 1;
    else if (procName == "muPairProd")
        id = 2;
    else if (procName == "muBrems")
        id = 3;
    //  else if (procName == "muNucl")     id = 4;
    else if (procName == "muonNuclear")
        id = 4;
    else if (procName == "hIoni")
        id = 5;
    else if (procName == "hPairProd")
        id = 6;
    else if (procName == "hBrems")
        id = 7;
    else if (procName == "muToMuonPairProd")
        id = 8;
    fHistoManager->FillHisto(id, lgepsE);

    if (procName != "Transportation") {
        G4double flagParticle = 0;
        G4StepPoint *preStep = aStep->GetPreStepPoint();
        G4StepPoint *postStep = aStep->GetPostStepPoint();
        G4int procID = postStep->GetProcessDefinedStep()->GetProcessSubType();

        const G4String &processName = postStep->GetProcessDefinedStep()->GetProcessName();
        G4double x = preStep->GetPosition().x() / CLHEP::nanometer;
        G4double y = preStep->GetPosition().y() / CLHEP::nanometer;
        G4double z = preStep->GetPosition().z() / CLHEP::nanometer;

        G4double xp = postStep->GetPosition().x() / CLHEP::nanometer;
        G4double yp = postStep->GetPosition().y() / CLHEP::nanometer;
        G4double zp = postStep->GetPosition().z() / CLHEP::nanometer;

        // get analysis manager

        G4AnalysisManager *analysisManager = G4AnalysisManager::Instance();

        // fill ntuple
        analysisManager->FillNtupleDColumn(0, flagParticle);
        analysisManager->FillNtupleDColumn(1, id);
        analysisManager->FillNtupleDColumn(2, x);
        analysisManager->FillNtupleDColumn(3, y);
        analysisManager->FillNtupleDColumn(4, z);
        analysisManager->FillNtupleDColumn(5,
                                           aStep->GetTotalEnergyDeposit() / CLHEP::eV);

        analysisManager->FillNtupleDColumn(6,
                                           std::sqrt((x - xp) * (x - xp) +
                                                     (y - yp) * (y - yp) + (z - zp) * (z - zp)));

        analysisManager->FillNtupleDColumn(7,
                                           (preStep->GetKineticEnergy() -
                                            postStep->GetKineticEnergy()) /
                                               CLHEP::eV);

        analysisManager->FillNtupleDColumn(8, preStep->GetKineticEnergy() / CLHEP::eV);

        analysisManager->FillNtupleDColumn(9,
                                           preStep->GetMomentumDirection() * postStep->GetMomentumDirection());

        analysisManager->FillNtupleIColumn(10,
                                           G4EventManager::GetEventManager()->GetConstCurrentEvent()->GetEventID());

        analysisManager->FillNtupleIColumn(11, aStep->GetTrack()->GetTrackID());

        analysisManager->FillNtupleIColumn(12, aStep->GetTrack()->GetParentID());

        analysisManager->FillNtupleIColumn(13,
                                           aStep->GetTrack()->GetCurrentStepNumber());

        analysisManager->AddNtupleRow();
    }
}

//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......
