.class final Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureStreamingMetadataResultImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/video/Videos$CaptureStreamingMetadataResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CaptureStreamingMetadataResultImpl"
.end annotation


# instance fields
.field private final zzacd:Ljava/lang/String;

.field private final zzahq:Lcom/google/android/gms/common/api/Status;

.field private final zzalD:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/Status;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureStreamingMetadataResultImpl;->zzahq:Lcom/google/android/gms/common/api/Status;

    iput-object p2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureStreamingMetadataResultImpl;->zzalD:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureStreamingMetadataResultImpl;->zzacd:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureStreamingMetadataResultImpl;->zzahq:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
