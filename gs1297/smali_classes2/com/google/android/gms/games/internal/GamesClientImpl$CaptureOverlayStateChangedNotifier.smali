.class final Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureOverlayStateChangedNotifier;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzaaz$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CaptureOverlayStateChangedNotifier"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzaaz$zzc",
        "<",
        "Lcom/google/android/gms/games/video/Videos$CaptureOverlayStateListener;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzaZg:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureOverlayStateChangedNotifier;->zzaZg:I

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/games/video/Videos$CaptureOverlayStateListener;)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureOverlayStateChangedNotifier;->zzaZg:I

    invoke-interface {p1, v0}, Lcom/google/android/gms/games/video/Videos$CaptureOverlayStateListener;->onCaptureOverlayStateChanged(I)V

    return-void
.end method

.method public synthetic zzs(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/games/video/Videos$CaptureOverlayStateListener;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureOverlayStateChangedNotifier;->zza(Lcom/google/android/gms/games/video/Videos$CaptureOverlayStateListener;)V

    return-void
.end method

.method public zzvy()V
    .locals 0

    return-void
.end method
