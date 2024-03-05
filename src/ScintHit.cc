#include "ScintHit.hh"

#include "G4Colour.hh"
#include "G4LogicalVolume.hh"
#include "G4VPhysicalVolume.hh"
#include "G4VVisManager.hh"
#include "G4VisAttributes.hh"
#include "G4ios.hh"

G4ThreadLocal G4Allocator<ScintHit> *ScintHitAllocator = nullptr;

//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......

ScintHit::ScintHit()
    : fEdep(0.), fPos(0.), time(0.), fPhysVol(nullptr) {}

//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......

ScintHit::ScintHit(G4VPhysicalVolume *pVol)
    : fPhysVol(pVol) {}

//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......

ScintHit::~ScintHit() {}

//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......

ScintHit::ScintHit(const ScintHit &right)
    : G4VHit() {
    fEdep = right.fEdep;
    fPos = right.fPos;
    fPhysVol = right.fPhysVol;
    time = right.time;
}

//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......

const ScintHit &ScintHit::operator=(const ScintHit &right) {
    fEdep = right.fEdep;
    fPos = right.fPos;
    fPhysVol = right.fPhysVol;
   // time = right.time;
    return *this;
}

//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......

G4bool ScintHit::operator==(const ScintHit &) const {
    return false;
    // returns false because there currently isn't need to check for equality
}
