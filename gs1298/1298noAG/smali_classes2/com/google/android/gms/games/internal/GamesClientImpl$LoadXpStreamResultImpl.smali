.class final Lcom/google/android/gms/games/internal/GamesClientImpl$LoadXpStreamResultImpl;
.super Lcom/google/android/gms/games/internal/GamesClientImpl$GamesDataHolderResult;

# interfaces
.implements Lcom/google/android/gms/games/Players$LoadXpStreamResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LoadXpStreamResultImpl"
.end annotation


# instance fields
.field private final zzaZO:Lcom/google/android/gms/games/internal/experience/ExperienceEventBuffer;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$GamesDataHolderResult;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    new-instance v0, Lcom/google/android/gms/games/internal/experience/ExperienceEventBuffer;

    invoke-direct {v0, p1}, Lcom/google/android/gms/games/internal/experience/ExperienceEventBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadXpStreamResultImpl;->zzaZO:Lcom/google/android/gms/games/internal/experience/ExperienceEventBuffer;

    return-void
.end method
