#ifndef ScintHit_h
#define ScintHit_h 1

#include "G4Allocator.hh"
#include "G4THitsCollection.hh"
#include "G4ThreeVector.hh"
#include "G4VHit.hh"
#include "G4VPhysicalVolume.hh"

class ScintHit : public G4VHit {
  public:
    ScintHit();
    ScintHit(G4VPhysicalVolume *pVol);
    ~ScintHit();

    ScintHit(const ScintHit &right);
    const ScintHit &operator=(const ScintHit &right);
    G4bool operator==(const ScintHit &right) const;

    inline void *operator new(size_t);
    inline void operator delete(void *aHit);
    //add a insert 
    inline void SetEdep(G4double de) { fEdep = de; }
    inline void AddEdep(G4double de) { fEdep += de; }
    inline G4double GetEdep() { return fEdep; }

    void SetTime(G4double t2) { time = t2; };
    // inline void SetTime(G4double val) { ftimeScint = val; }
    // inline G4double GetTime() const { return ftimeScint; }
    G4double GetTime() { return time; };

    inline void SetPos(G4ThreeVector xyz) { fPos = xyz; }
    inline G4ThreeVector GetPos() { return fPos; }

    inline const G4VPhysicalVolume *GetPhysV() { return fPhysVol; }

  private:
    G4double fEdep;
    G4double time;
    G4ThreeVector fPos;
    const G4VPhysicalVolume *fPhysVol;
};

typedef G4THitsCollection<ScintHit> ScintHitsCollection;

extern G4ThreadLocal G4Allocator<ScintHit> *ScintHitAllocator;

// Implementação do operador new utilizando G4Allocator
inline void *ScintHit::operator new(size_t) {
    if (!ScintHitAllocator)
        ScintHitAllocator = new G4Allocator<ScintHit>;
    return (void *)ScintHitAllocator->MallocSingle();
}

// Implementação do operador delete utilizando G4Allocator
inline void ScintHit::operator delete(void *aHit) {
    ScintHitAllocator->FreeSingle((ScintHit *)aHit);
}


#endif
