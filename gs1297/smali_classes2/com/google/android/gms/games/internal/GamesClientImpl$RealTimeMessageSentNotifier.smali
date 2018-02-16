.class final Lcom/google/android/gms/games/internal/GamesClientImpl$RealTimeMessageSentNotifier;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzaaz$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RealTimeMessageSentNotifier"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzaaz$zzc",
        "<",
        "Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer$ReliableMessageSentCallback;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzauz:I

.field private final zzbac:Ljava/lang/String;

.field private final zzbad:I


# direct methods
.method constructor <init>(IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RealTimeMessageSentNotifier;->zzauz:I

    iput p2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RealTimeMessageSentNotifier;->zzbad:I

    iput-object p3, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RealTimeMessageSentNotifier;->zzbac:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer$ReliableMessageSentCallback;)V
    .locals 3

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RealTimeMessageSentNotifier;->zzauz:I

    iget v1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RealTimeMessageSentNotifier;->zzbad:I

    iget-object v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RealTimeMessageSentNotifier;->zzbac:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer$ReliableMessageSentCallback;->onRealTimeMessageSent(IILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public synthetic zzs(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer$ReliableMessageSentCallback;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$RealTimeMessageSentNotifier;->zza(Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer$ReliableMessageSentCallback;)V

    return-void
.end method

.method public zzvy()V
    .locals 0

    return-void
.end method
