.class final Lcom/google/android/gms/games/internal/GamesClientImpl$MessageReceivedNotifier;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzaaz$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MessageReceivedNotifier"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzaaz$zzc",
        "<",
        "Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzaZR:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessage;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessage;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$MessageReceivedNotifier;->zzaZR:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessage;

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$MessageReceivedNotifier;->zzaZR:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessage;

    invoke-interface {p1, v0}, Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;->onRealTimeMessageReceived(Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessage;)V

    return-void
.end method

.method public synthetic zzs(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$MessageReceivedNotifier;->zza(Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;)V

    return-void
.end method

.method public zzvy()V
    .locals 0

    return-void
.end method
