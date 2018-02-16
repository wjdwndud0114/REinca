.class final Lcom/google/android/gms/drive/Drive$2;
.super Lcom/google/android/gms/drive/Drive$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/drive/Drive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/drive/Drive$zza",
        "<",
        "Lcom/google/android/gms/drive/Drive$zzb;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/drive/Drive$zza;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$ApiOptions;)Landroid/os/Bundle;
    .locals 1

    check-cast p1, Lcom/google/android/gms/drive/Drive$zzb;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/Drive$2;->zza(Lcom/google/android/gms/drive/Drive$zzb;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected zza(Lcom/google/android/gms/drive/Drive$zzb;)Landroid/os/Bundle;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/drive/Drive$zzb;->zzzA()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method
