.class Lcom/google/android/gms/internal/zzja$zzd$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzqi$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzja$zzd;->zzgz()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzqi$zzc",
        "<",
        "Lcom/google/android/gms/internal/zzix;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzJA:Lcom/google/android/gms/internal/zzja$zzd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzja$zzd;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzja$zzd$3;->zzJA:Lcom/google/android/gms/internal/zzja$zzd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzix;)V
    .locals 2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzcJ()Lcom/google/android/gms/internal/zzpi;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzja$zzd$3$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzja$zzd$3$1;-><init>(Lcom/google/android/gms/internal/zzja$zzd$3;Lcom/google/android/gms/internal/zzix;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzpi;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic zzd(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzix;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzja$zzd$3;->zza(Lcom/google/android/gms/internal/zzix;)V

    return-void
.end method
