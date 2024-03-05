#include "ScintSD.hh"
#include "ScintHit.hh"

#include "G4LogicalVolume.hh"
#include "G4ParticleDefinition.hh"
#include "G4SDManager.hh"
#include "G4Step.hh"
#include "G4TouchableHistory.hh"
#include "G4Track.hh"
#include "G4VHitsCollection.hh"
#include "G4VPhysicalVolume.hh"
#include "G4VProcess.hh"
#include "G4VTouchable.hh"
#include "G4ios.hh"

//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......

ScintSD::ScintSD(G4String name)
    : G4VSensitiveDetector(name),
      fHitsCID(-1),
      fScintHitsCollection(nullptr) {

   // collectionName.insert("scintCollection");
}

//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......

ScintSD::~ScintSD() {}

//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......

void ScintSD::Initialize(G4HCofThisEvent *hitsCE) {
    fScintHitsCollection = new G4THitsCollection<ScintHit>(SensitiveDetectorName, collectionName[0]);
    static G4int hitsCollectionID = -1;
    if (hitsCollectionID < 0) {
        hitsCollectionID = GetCollectionID(0);
    }
    hitsCE->AddHitsCollection(hitsCollectionID, fScintHitsCollection);
}
//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......

G4bool ScintSD::ProcessHits(G4Step *aStep, G4TouchableHistory *) {
    G4double edep = aStep->GetTotalEnergyDeposit();
    if (edep == 0.)
        return false; // No edep so don't count as hit

    G4StepPoint *thePrePoint = aStep->GetPreStepPoint();
    G4TouchableHistory *theTouchable =
        (G4TouchableHistory *)(aStep->GetPreStepPoint()->GetTouchable());
    G4VPhysicalVolume *thePrePV = theTouchable->GetVolume();

    G4StepPoint *thePostPoint = aStep->GetPostStepPoint();

    // Get the average position of the hit
    G4ThreeVector pos = thePrePoint->GetPosition() + thePostPoint->GetPosition();
    pos /= 2.;

    ScintHit *scintHit = new ScintHit(thePrePV);

    scintHit->SetEdep(edep);
    // scintHit->SetTime(aStep->GetPreStepPoint()->GetGlobalTime());
    scintHit->SetPos(pos);

    fScintHitsCollection->insert(scintHit);

    return true;
}

void ScintSD::EndOfEvent(G4HCofThisEvent *hitsCE) {
    G4String HCname = collectionName[0];
    static G4int HCID = -1;
    if (HCID < 0)
        HCID = G4SDManager::GetSDMpointer()->GetCollectionID(HCname);
    hitsCE->AddHitsCollection(HCID, fScintHitsCollection);

    G4int nHits = fScintHitsCollection->entries();
    if (verboseLevel >= 1)
        G4cout << "      collection: " << nHits << " hits" << G4endl;
    if (verboseLevel >= 2)
        fScintHitsCollection->PrintAllHits();
}
