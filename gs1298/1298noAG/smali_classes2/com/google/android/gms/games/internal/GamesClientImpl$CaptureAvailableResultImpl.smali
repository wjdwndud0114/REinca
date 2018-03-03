.class final Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureAvailableResultImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/video/Videos$CaptureAvailableResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CaptureAvailableResultImpl"
.end annotation


# instance fields
.field private final zzaZd:Z

.field private final zzahq:Lcom/google/android/gms/common/api/Status;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/Status;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureAvailableResultImpl;->zzahq:Lcom/google/android/gms/common/api/Status;

    iput-boolean p2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureAvailableResultImpl;->zzaZd:Z

    return-void
.end method


# virtual methods
.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureAvailableResultImpl;->zzahq:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureAvailableResultImpl;->zzaZd:Z

    return v0
.end method
