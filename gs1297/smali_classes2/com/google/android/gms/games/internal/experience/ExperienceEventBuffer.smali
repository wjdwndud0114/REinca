.class public final Lcom/google/android/gms/games/internal/experience/ExperienceEventBuffer;
.super Lcom/google/android/gms/common/data/AbstractDataBuffer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/data/AbstractDataBuffer",
        "<",
        "Lcom/google/android/gms/games/internal/experience/ExperienceEvent;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/data/AbstractDataBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    return-void
.end method


# virtual methods
.method public synthetic get(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/experience/ExperienceEventBuffer;->zziD(I)Lcom/google/android/gms/games/internal/experience/ExperienceEvent;

    move-result-object v0

    return-object v0
.end method

.method public zziD(I)Lcom/google/android/gms/games/internal/experience/ExperienceEvent;
    .locals 2

    new-instance v0, Lcom/google/android/gms/games/internal/experience/ExperienceEventRef;

    iget-object v1, p0, Lcom/google/android/gms/games/internal/experience/ExperienceEventBuffer;->zzazI:Lcom/google/android/gms/common/data/DataHolder;

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/games/internal/experience/ExperienceEventRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    return-object v0
.end method
