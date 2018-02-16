.class public Lcom/google/android/gms/drive/metadata/internal/zze;
.super Lcom/google/android/gms/drive/metadata/zzd;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/drive/metadata/zzd",
        "<",
        "Ljava/util/Date;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/drive/metadata/zzd;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Landroid/os/Bundle;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/util/Date;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/drive/metadata/internal/zze;->zza(Landroid/os/Bundle;Ljava/util/Date;)V

    return-void
.end method

.method protected zza(Landroid/os/Bundle;Ljava/util/Date;)V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/drive/metadata/internal/zze;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method protected synthetic zzc(Lcom/google/android/gms/common/data/DataHolder;II)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/drive/metadata/internal/zze;->zzf(Lcom/google/android/gms/common/data/DataHolder;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method protected zzf(Lcom/google/android/gms/common/data/DataHolder;II)Ljava/util/Date;
    .locals 4

    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Lcom/google/android/gms/drive/metadata/internal/zze;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, p2, p3}, Lcom/google/android/gms/common/data/DataHolder;->zzb(Ljava/lang/String;II)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method protected synthetic zzt(Landroid/os/Bundle;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/metadata/internal/zze;->zzv(Landroid/os/Bundle;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method protected zzv(Landroid/os/Bundle;)Ljava/util/Date;
    .locals 4

    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Lcom/google/android/gms/drive/metadata/internal/zze;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method
