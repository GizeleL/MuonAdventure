#include "EventAction.hh"
#include "DetectorConstruction.hh"
#include "HistoManager.hh"
#include "Run.hh"
#include "ScintHit.hh"
#include "SteppingAction.hh"
#include "Trajectory.hh"

#include "G4Event.hh"
#include "G4EventManager.hh"
#include "G4RunManager.hh"
#include "G4SDManager.hh"
#include "G4SystemOfUnits.hh"
#include "G4Trajectory.hh"
#include "G4TrajectoryContainer.hh"
#include "G4UImanager.hh"
#include "G4UnitsTable.hh"
#include "G4VHitsCollection.hh"
#include "G4VVisManager.hh"
#include "G4ios.hh"

//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......

EventAction::EventAction(const DetectorConstruction *det)
    : fDetector(det),fScintCollID(-1) {
    // fEventMessenger = new EventMessenger(this);

    // fHitCount = 0;
    //  fPhotonCount_Scint = 0;
    //  fPhotonCount_Ceren = 0;
    //  fAbsorptionCount = 0;
    //  fBoundaryAbsorptionCount = 0;
    fTotE = 0.0;
    // ftimeScint               = 0.0;
    // ftimePMT                 = 0.0;

    // fConvPosSet = false;
    fEdepMax = 0.0;

    // fPMTsAboveThreshold = 0;
}

//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......

EventAction::~EventAction() {

    // delete fEventMessenger;
}

//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......

void EventAction::BeginOfEventAction(const G4Event *) {
    // fHitCount = 0;
    // fPhotonCount_Scint = 0;
    // fPhotonCount_Ceren = 0;
    ///  fAbsorptionCount = 0;
    //  fBoundaryAbsorptionCount = 0;
    fTotE = 0.0;
    // ftimeScint               = 0.0;
    // ftimePMT                 = 0.0;

    //  fConvPosSet = false;
    fEdepMax = 0.0;

    //  fPMTsAboveThreshold = 0;

    G4SDManager *SDman = G4SDManager::GetSDMpointer();
    if (fScintCollID == -1)
        fScintCollID = SDman->GetCollectionID("scintCollection");
}

//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......

std::ofstream output("./Events.dat");
// std::ofstream output2("./Time.dat");

void EventAction::EndOfEventAction(const G4Event *anEvent) {
    // aveTimePmtHits = 0.;
    // firstHitTime = 0.;

    G4TrajectoryContainer *trajectoryContainer =
        anEvent->GetTrajectoryContainer();

    G4int n_trajectories = 0;
    if (trajectoryContainer)
        n_trajectories = trajectoryContainer->entries();

    // extract the trajectories and draw them
    // if (G4VVisManager::GetConcreteInstance()) {
    //     for (G4int i = 0; i < n_trajectories; ++i) {
    //         Trajectory *trj =
    //             (Trajectory *)((*(anEvent->GetTrajectoryContainer()))[i]);
    //         if (trj->GetParticleName() == "opticalphoton") {
    //             trj->SetForceDrawTrajectory(fForcedrawphotons);
    //             trj->SetForceNoDrawTrajectory(fForcenophotons);
    //         }
    //         trj->DrawTrajectory();
    //     }
    // }

    //ScintHitsCollection *scintHC = NULL;

    ScintHitsCollection *scintHC = NULL;
    // PMTHitsCollection *pmtHC = NULL;
    G4HCofThisEvent *hitsCE = anEvent->GetHCofThisEvent();

    // Get the hit collections

    if (hitsCE) {
        // if(fScintCollID >= 0)
        //{
       scintHC = (ScintHitsCollection *)(hitsCE->GetHC(fScintCollID));
        //}
        // if(fPMTCollID >= 0)
        //{
        //  pmtHC = (PMTHitsCollection *)(hitsCE->GetHC(fPMTCollID));
        //}
    }

    // Hits in scintillator
    if (scintHC) {
        size_t n_hit = scintHC->entries();
        G4ThreeVector eWeightPos(0.);
        G4double edep;
        G4double edepMax = 0;

        for (size_t i = 0; i < n_hit; ++i) { // gather info on hits in scintillator
            edep = (*scintHC)[i]->GetEdep();
            fTotE += edep;
            eWeightPos +=
                (*scintHC)[i]->GetPos() * edep; // calculate energy weighted pos
            // if(i==0) {
            // firstHitTime = (*scintHC)[i]->GetTime();
            //}
            if (edep > edepMax) {
                edepMax = edep; // store max energy deposit
                G4ThreeVector posMax = (*scintHC)[i]->GetPos();
                fPosMax = posMax;
                fEdepMax = edep;
            }
        }

        G4AnalysisManager::Instance()->FillH1(7, fTotE);

        //     if (fTotE == 0.) {
        //         if (fVerbose > 0)
        //             G4cout << "No hits in the scintillator this event." << G4endl;
        //     } else {
        //         // Finish calculation of energy weighted position
        //         eWeightPos /= fTotE;
        //         fEWeightPos = eWeightPos;
        //         if (fVerbose > 0) {
        //             G4cout << "\tEnergy weighted position of hits in  : "
        //                    << eWeightPos / mm << G4endl;
        //         }
        //     }
        //     if (fVerbose > 0) {
        //         G4cout << "\tTotal energy deposition in scintillator : " << fTotE / keV
        //                << " (keV)" << G4endl;
        //     }
        // }

        // if (pmtHC) {
        //     G4ThreeVector reconPos(0., 0., 0.);
        //     pmts = pmtHC->entries();
        //     // Gather info from all PMTs
        //     for (G4int i = 0; i < pmts; ++i) {
        //         fHitCount += (*pmtHC)[i]->GetPhotonCount();
        //         reconPos += (*pmtHC)[i]->GetPMTPos() * (*pmtHC)[i]->GetPhotonCount();
        //         G4double time = ((*pmtHC)[i]->GetTime() - firstHitTime);
        //         aveTimePmtHits += time / (G4double)pmts;
        //         // aveTimePmtHits += time / (G4double)pmts;
        //         // ftimePMT             = aveTimePmtHits;
        //         if ((*pmtHC)[i]->GetPhotonCount() >= fPMTThreshold) {
        //             ++fPMTsAboveThreshold;
        //         } else { // wasn't above the threshold, turn it back off
        //             (*pmtHC)[i]->SetDrawit(false);
        //         }
        //         // output2 << "oieeeeeeeeeeeeeeee" << std::setiosflags(std::ios::fixed) << std::setprecision(14) << aveTimePmtHits/nanosecond << G4endl;
        //     }

        // G4AnalysisManager::Instance()->FillH1(1, fHitCount);
        // G4AnalysisManager::Instance()->FillH1(2, fPMTsAboveThreshold);

        // if (fHitCount > 0) { // don't bother unless there were hits
        //     reconPos /= fHitCount;
        //     if (fVerbose > 0) {
        //         G4cout << "\tReconstructed position of hits in  : " << reconPos / mm
        //                << G4endl;
        //     }
        //     fReconPos = reconPos;
        // }
        // pmtHC->DrawAllHits();
    }

    // G4AnalysisManager::Instance()->FillH1(3, fPhotonCount_Scint);
    // G4AnalysisManager::Instance()->FillH1(4, fPhotonCount_Ceren);
    // 4AnalysisManager::Instance()->FillH1(5, fAbsorptionCount);
    // G4AnalysisManager::Instance()->FillH1(6, fBoundaryAbsorptionCount);

    // if (fVerbose > 0) {
    // End of event output. later to be controlled by a verbose level
    // G4cout << "\tNumber of photons that hit PMTs in this event : " << fHitCount
    //        << G4endl;
    // G4cout << "\tNumber of PMTs above threshold(" << fPMTThreshold
    //        << ") : " << fPMTsAboveThreshold << G4endl;
    // G4cout << "\tNumber of photons produced by scintillation in this event : "
    //        << fPhotonCount_Scint << G4endl;
    // G4cout << "\tNumber of photons produced by cerenkov in this event : "
    //        << fPhotonCount_Ceren << G4endl;
    // G4cout << "\tNumber of photons absorbed (OpAbsorption) in this event : "
    //        << fAbsorptionCount << G4endl;
    // G4cout << "\tNumber of photons absorbed at boundaries (OpBoundary) in "
    //        << "this event : " << fBoundaryAbsorptionCount << G4endl;
    // G4cout << "Unaccounted for photons in this event : "
    //        << (fPhotonCount_Scint + fPhotonCount_Ceren - fAbsorptionCount -
    //            fHitCount - fBoundaryAbsorptionCount)
    //        << G4endl;
    // G4cout << "     Average light collection time: "
    //        << aveTimePmtHits / nanosecond << G4endl;
    // }

    // update the run statistics
    Run *run = static_cast<Run *>(
        G4RunManager::GetRunManager()->GetNonConstCurrentRun());

    // run->IncHitCount(fHitCount);
    // run->IncPhotonCount_Scint(fPhotonCount_Scint);
    // run->IncPhotonCount_Ceren(fPhotonCount_Ceren);
    run->IncEDep(fTotE);
    //  run->IncAbsorption(fAbsorptionCount);
    //  run->IncBoundaryAbsorption(fBoundaryAbsorptionCount);
    // run->IncHitsAboveThreshold(fPMTsAboveThreshold);

    // If we have set the flag to save 'special' events, save here
    // if (fPhotonCount_Scint + fPhotonCount_Ceren < fDetector->GetSaveThreshold()) {
    //     G4RunManager::GetRunManager()->rndmSaveThisEvent();
    // }

    G4double fEnergy;
    fEnergy = anEvent->GetPrimaryVertex()->GetPrimary()->GetKineticEnergy();

    G4ThreeVector fTheta;
    fTheta = anEvent->GetPrimaryVertex()->GetPrimary()->GetMomentumDirection();

    G4double fT0;
    fT0 = anEvent->GetPrimaryVertex()->GetT0();

    // output << fEnergy / GeV << "\t" << fTheta.theta() * 180.0 / CLHEP::pi << "\t" << fHitCount
    //        << "\t" << fPMTsAboveThreshold << "\t" << fPhotonCount_Scint << "\t" << fPhotonCount_Ceren
    //        << "\t" << fAbsorptionCount << "\t" << fBoundaryAbsorptionCount << "\t" << fTotE / GeV << "\t" << std::setiosflags(std::ios::fixed) << std::setprecision(14) << firstHitTime / microsecond << "\t" << std::setiosflags(std::ios::fixed) << std::setprecision(14) << aveTimePmtHits / microsecond << G4endl;

    output << fEnergy / GeV << "\t" << G4endl;
}


//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......
