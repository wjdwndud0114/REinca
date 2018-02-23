.class final Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureCapabilitiesResultImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/video/Videos$CaptureCapabilitiesResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CaptureCapabilitiesResultImpl"
.end annotation


# instance fields
.field private final zzaZe:Lcom/google/android/gms/games/video/VideoCapabilities;

.field private final zzahq:Lcom/google/android/gms/common/api/Status;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/games/video/VideoCapabilities;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureCapabilitiesResultImpl;->zzahq:Lcom/google/android/gms/common/api/Status;

    iput-object p2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureCapabilitiesResultImpl;->zzaZe:Lcom/google/android/gms/games/video/VideoCapabilities;

    return-void
.end method


# virtual methods
.method public getCapabilities()Lcom/google/android/gms/games/video/VideoCapabilities;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureCapabilitiesResultImpl;->zzaZe:Lcom/google/android/gms/games/video/VideoCapabilities;

    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureCapabilitiesResultImpl;->zzahq:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
