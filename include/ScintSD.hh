#ifndef ScintSD_h
#define ScintSD_h 1

#include "G4THitsCollection.hh"
#include "G4ThreeVector.hh"
#include "G4UserEventAction.hh"
#include "G4VHitsCollection.hh"
#include "G4VSensitiveDetector.hh"
#include "G4ios.hh"
#include "HistoManager.hh"
#include "ScintHit.hh"
#include "globals.hh"

class G4Step;
class G4HCofThisEvent;

class ScintSD : public G4VSensitiveDetector {
  public:
    ScintSD(const G4String name);
    ~ScintSD();

    void Initialize(G4HCofThisEvent *);                             // override;
    G4bool ProcessHits(G4Step *aStep, G4TouchableHistory *history); // override;
    void EndOfEvent(G4HCofThisEvent *);

  private:
    G4THitsCollection<ScintHit> *fScintHitsCollection;
    G4int fHitsCID;
};
//

#endif
