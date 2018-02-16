.class final Lcom/google/android/gms/games/internal/GamesClientImpl$SnapshotDeletedBinderCallbacks;
.super Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SnapshotDeletedBinderCallbacks"
.end annotation


# instance fields
.field private final zzaFq:Lcom/google/android/gms/internal/zzzv$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzzv$zzb",
            "<",
            "Lcom/google/android/gms/games/snapshot/Snapshots$DeleteSnapshotResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzzv$zzb;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzzv$zzb",
            "<",
            "Lcom/google/android/gms/games/snapshot/Snapshots$DeleteSnapshotResult;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;-><init>()V

    const-string v0, "Holder must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzzv$zzb;

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$SnapshotDeletedBinderCallbacks;->zzaFq:Lcom/google/android/gms/internal/zzzv$zzb;

    return-void
.end method


# virtual methods
.method public zzk(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$SnapshotDeletedBinderCallbacks;->zzaFq:Lcom/google/android/gms/internal/zzzv$zzb;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$DeleteSnapshotResultImpl;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/games/internal/GamesClientImpl$DeleteSnapshotResultImpl;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzzv$zzb;->setResult(Ljava/lang/Object;)V

    return-void
.end method
