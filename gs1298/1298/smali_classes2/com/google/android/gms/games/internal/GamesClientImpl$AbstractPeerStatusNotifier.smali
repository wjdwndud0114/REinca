.class abstract Lcom/google/android/gms/games/internal/GamesClientImpl$AbstractPeerStatusNotifier;
.super Lcom/google/android/gms/games/internal/GamesClientImpl$AbstractRoomStatusNotifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "AbstractPeerStatusNotifier"
.end annotation


# instance fields
.field private final zzaYZ:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$AbstractRoomStatusNotifier;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$AbstractPeerStatusNotifier;->zzaYZ:Ljava/util/ArrayList;

    const/4 v0, 0x0

    array-length v1, p2

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$AbstractPeerStatusNotifier;->zzaYZ:Ljava/util/ArrayList;

    aget-object v3, p2, v0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected zza(Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Lcom/google/android/gms/games/multiplayer/realtime/Room;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$AbstractPeerStatusNotifier;->zzaYZ:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl$AbstractPeerStatusNotifier;->zza(Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Lcom/google/android/gms/games/multiplayer/realtime/Room;Ljava/util/ArrayList;)V

    return-void
.end method

.method protected abstract zza(Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Lcom/google/android/gms/games/multiplayer/realtime/Room;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;",
            "Lcom/google/android/gms/games/multiplayer/realtime/Room;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
