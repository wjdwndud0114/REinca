.class public final Lcom/google/android/gms/games/video/VideoRef;
.super Lcom/google/android/gms/common/data/zzc;

# interfaces
.implements Lcom/google/android/gms/games/video/Video;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/zzc;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public synthetic freeze()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/games/video/VideoRef;->zzFV()Lcom/google/android/gms/games/video/Video;

    move-result-object v0

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    const-string v0, "duration"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/video/VideoRef;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getFileSize()J
    .locals 2

    const-string v0, "filesize"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/video/VideoRef;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    const-string v0, "package"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/video/VideoRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStartTime()J
    .locals 2

    const-string v0, "start_time"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/video/VideoRef;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/games/video/VideoEntity;->zzb(Lcom/google/android/gms/games/video/Video;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/games/video/VideoRef;->freeze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/video/Video;

    check-cast v0, Lcom/google/android/gms/games/video/VideoEntity;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/games/video/VideoEntity;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzFQ()Ljava/lang/String;
    .locals 1

    const-string v0, "filepath"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/video/VideoRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zzFV()Lcom/google/android/gms/games/video/Video;
    .locals 1

    new-instance v0, Lcom/google/android/gms/games/video/VideoEntity;

    invoke-direct {v0, p0}, Lcom/google/android/gms/games/video/VideoEntity;-><init>(Lcom/google/android/gms/games/video/Video;)V

    return-object v0
.end method
