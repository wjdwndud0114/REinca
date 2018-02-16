.class final Lcom/google/android/gms/games/internal/GamesClientImpl$RoomCreatedNotifier;
.super Lcom/google/android/gms/games/internal/GamesClientImpl$AbstractRoomNotifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RoomCreatedNotifier"
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$AbstractRoomNotifier;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;Lcom/google/android/gms/games/multiplayer/realtime/Room;I)V
    .locals 0

    invoke-interface {p1, p3, p2}, Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;->onRoomCreated(ILcom/google/android/gms/games/multiplayer/realtime/Room;)V

    return-void
.end method
