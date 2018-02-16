.class public final Lcom/google/android/gms/games/video/VideoConfiguration$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/video/VideoConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private zzbfm:I

.field private zzbft:I

.field private zzbfu:Ljava/lang/String;

.field private zzbfv:Ljava/lang/String;

.field private zzbfw:Ljava/lang/String;

.field private zzbfx:Ljava/lang/String;

.field private zzbfy:Z


# direct methods
.method public constructor <init>(II)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/games/video/VideoConfiguration$Builder;->zzbft:I

    iput p2, p0, Lcom/google/android/gms/games/video/VideoConfiguration$Builder;->zzbfm:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/games/video/VideoConfiguration$Builder;->zzbfy:Z

    iput-object v1, p0, Lcom/google/android/gms/games/video/VideoConfiguration$Builder;->zzbfu:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/games/video/VideoConfiguration$Builder;->zzbfv:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/games/video/VideoConfiguration$Builder;->zzbfw:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/games/video/VideoConfiguration$Builder;->zzbfx:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/games/video/VideoConfiguration;
    .locals 9

    const/4 v3, 0x0

    new-instance v0, Lcom/google/android/gms/games/video/VideoConfiguration;

    iget v1, p0, Lcom/google/android/gms/games/video/VideoConfiguration$Builder;->zzbft:I

    iget v2, p0, Lcom/google/android/gms/games/video/VideoConfiguration$Builder;->zzbfm:I

    iget-boolean v7, p0, Lcom/google/android/gms/games/video/VideoConfiguration$Builder;->zzbfy:Z

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v8, v3

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/games/video/VideoConfiguration;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/games/video/VideoConfiguration$1;)V

    return-object v0
.end method

.method public setCaptureMode(I)Lcom/google/android/gms/games/video/VideoConfiguration$Builder;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/games/video/VideoConfiguration$Builder;->zzbfm:I

    return-object p0
.end method

.method public setQualityLevel(I)Lcom/google/android/gms/games/video/VideoConfiguration$Builder;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/games/video/VideoConfiguration$Builder;->zzbft:I

    return-object p0
.end method
