.class final Lcom/google/android/gms/games/internal/GamesClientImpl$CancelMatchResultImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$CancelMatchResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CancelMatchResultImpl"
.end annotation


# instance fields
.field private final zzaZc:Ljava/lang/String;

.field private final zzahq:Lcom/google/android/gms/common/api/Status;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/Status;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$CancelMatchResultImpl;->zzahq:Lcom/google/android/gms/common/api/Status;

    iput-object p2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$CancelMatchResultImpl;->zzaZc:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMatchId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$CancelMatchResultImpl;->zzaZc:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$CancelMatchResultImpl;->zzahq:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
