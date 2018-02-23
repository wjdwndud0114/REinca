.class final Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureStateResultImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/video/Videos$CaptureStateResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CaptureStateResultImpl"
.end annotation


# instance fields
.field private final zzaZi:Lcom/google/android/gms/games/video/CaptureState;

.field private final zzahq:Lcom/google/android/gms/common/api/Status;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/games/video/CaptureState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureStateResultImpl;->zzahq:Lcom/google/android/gms/common/api/Status;

    iput-object p2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureStateResultImpl;->zzaZi:Lcom/google/android/gms/games/video/CaptureState;

    return-void
.end method


# virtual methods
.method public getCaptureState()Lcom/google/android/gms/games/video/CaptureState;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureStateResultImpl;->zzaZi:Lcom/google/android/gms/games/video/CaptureState;

    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureStateResultImpl;->zzahq:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
