.class public final Lcom/google/android/gms/games/video/VideoEntity;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;

# interfaces
.implements Lcom/google/android/gms/games/video/Video;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/games/video/VideoEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mVersionCode:I

.field private final zzKH:J

.field private final zzQL:Ljava/lang/String;

.field private final zzaDh:I

.field private final zzbfA:J

.field private final zzbfz:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/games/video/VideoEntityCreator;

    invoke-direct {v0}, Lcom/google/android/gms/games/video/VideoEntityCreator;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/video/VideoEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IILjava/lang/String;JJLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/games/video/VideoEntity;->mVersionCode:I

    iput p2, p0, Lcom/google/android/gms/games/video/VideoEntity;->zzaDh:I

    iput-object p3, p0, Lcom/google/android/gms/games/video/VideoEntity;->zzbfz:Ljava/lang/String;

    iput-wide p4, p0, Lcom/google/android/gms/games/video/VideoEntity;->zzbfA:J

    iput-wide p6, p0, Lcom/google/android/gms/games/video/VideoEntity;->zzKH:J

    iput-object p8, p0, Lcom/google/android/gms/games/video/VideoEntity;->zzQL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/games/video/Video;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/games/video/VideoEntity;->mVersionCode:I

    invoke-interface {p1}, Lcom/google/android/gms/games/video/Video;->getDuration()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/games/video/VideoEntity;->zzaDh:I

    invoke-interface {p1}, Lcom/google/android/gms/games/video/Video;->zzFQ()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/video/VideoEntity;->zzbfz:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/games/video/Video;->getFileSize()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/games/video/VideoEntity;->zzbfA:J

    invoke-interface {p1}, Lcom/google/android/gms/games/video/Video;->getStartTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/games/video/VideoEntity;->zzKH:J

    invoke-interface {p1}, Lcom/google/android/gms/games/video/Video;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/video/VideoEntity;->zzQL:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/games/video/VideoEntity;->zzbfz:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzc;->zzt(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/games/video/VideoEntity;->zzQL:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzc;->zzt(Ljava/lang/Object;)V

    return-void
.end method

.method static zza(Lcom/google/android/gms/games/video/Video;)I
    .locals 4

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-interface {p0}, Lcom/google/android/gms/games/video/Video;->getDuration()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-interface {p0}, Lcom/google/android/gms/games/video/Video;->zzFQ()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-interface {p0}, Lcom/google/android/gms/games/video/Video;->getFileSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-interface {p0}, Lcom/google/android/gms/games/video/Video;->getStartTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    invoke-interface {p0}, Lcom/google/android/gms/games/video/Video;->getPackageName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method static zza(Lcom/google/android/gms/games/video/Video;Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    instance-of v2, p1, Lcom/google/android/gms/games/video/Video;

    if-nez v2, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eq p0, p1, :cond_0

    check-cast p1, Lcom/google/android/gms/games/video/Video;

    invoke-interface {p1}, Lcom/google/android/gms/games/video/Video;->getDuration()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/video/Video;->getDuration()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/video/Video;->zzFQ()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/video/Video;->zzFQ()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/video/Video;->getFileSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/video/Video;->getFileSize()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/video/Video;->getStartTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/video/Video;->getStartTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/video/Video;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/video/Video;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method static zzb(Lcom/google/android/gms/games/video/Video;)Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzaa;->zzv(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "Duration"

    invoke-interface {p0}, Lcom/google/android/gms/games/video/Video;->getDuration()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "File path"

    invoke-interface {p0}, Lcom/google/android/gms/games/video/Video;->zzFQ()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "File size"

    invoke-interface {p0}, Lcom/google/android/gms/games/video/Video;->getFileSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "Start time"

    invoke-interface {p0}, Lcom/google/android/gms/games/video/Video;->getStartTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "Package name"

    invoke-interface {p0}, Lcom/google/android/gms/games/video/Video;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzaa$zza;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/google/android/gms/games/video/VideoEntity;->zza(Lcom/google/android/gms/games/video/Video;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public synthetic freeze()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/games/video/VideoEntity;->zzFV()Lcom/google/android/gms/games/video/Video;

    move-result-object v0

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/games/video/VideoEntity;->zzaDh:I

    return v0
.end method

.method public getFileSize()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/games/video/VideoEntity;->zzbfA:J

    return-wide v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/video/VideoEntity;->zzQL:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTime()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/games/video/VideoEntity;->zzKH:J

    return-wide v0
.end method

.method public getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/games/video/VideoEntity;->mVersionCode:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/games/video/VideoEntity;->zza(Lcom/google/android/gms/games/video/Video;)I

    move-result v0

    return v0
.end method

.method public isDataValid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/games/video/VideoEntity;->zzb(Lcom/google/android/gms/games/video/Video;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/games/video/VideoEntityCreator;->zza(Lcom/google/android/gms/games/video/VideoEntity;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzFQ()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/video/VideoEntity;->zzbfz:Ljava/lang/String;

    return-object v0
.end method

.method public zzFV()Lcom/google/android/gms/games/video/Video;
    .locals 0

    return-object p0
.end method
