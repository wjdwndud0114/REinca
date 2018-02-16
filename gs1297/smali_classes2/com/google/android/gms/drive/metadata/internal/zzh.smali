.class public Lcom/google/android/gms/drive/metadata/internal/zzh;
.super Lcom/google/android/gms/drive/metadata/zza;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/drive/metadata/zza",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/drive/metadata/zza;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected zza(Landroid/os/Bundle;Ljava/lang/Long;)V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/drive/metadata/internal/zzh;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method protected bridge synthetic zza(Landroid/os/Bundle;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/drive/metadata/internal/zzh;->zza(Landroid/os/Bundle;Ljava/lang/Long;)V

    return-void
.end method

.method protected synthetic zzc(Lcom/google/android/gms/common/data/DataHolder;II)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/drive/metadata/internal/zzh;->zzh(Lcom/google/android/gms/common/data/DataHolder;II)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected zzh(Lcom/google/android/gms/common/data/DataHolder;II)Ljava/lang/Long;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/drive/metadata/internal/zzh;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2, p3}, Lcom/google/android/gms/common/data/DataHolder;->zzb(Ljava/lang/String;II)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic zzt(Landroid/os/Bundle;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/metadata/internal/zzh;->zzx(Landroid/os/Bundle;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected zzx(Landroid/os/Bundle;)Ljava/lang/Long;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/drive/metadata/internal/zzh;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
