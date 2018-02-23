.class public Lcom/google/android/gms/internal/zzmc;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzmb;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzmc$zza;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzmh$zza;Lcom/google/android/gms/internal/zzav;Lcom/google/android/gms/internal/zzmc$zza;)Lcom/google/android/gms/internal/zzpd;
    .locals 2

    iget-object v0, p2, Lcom/google/android/gms/internal/zzmh$zza;->zzRd:Lcom/google/android/gms/internal/zzdy;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzdy;->extras:Landroid/os/Bundle;

    const-string v1, "sdk_less_server_data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzmu;

    invoke-direct {v0, p1, p2, p4}, Lcom/google/android/gms/internal/zzmu;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzmh$zza;Lcom/google/android/gms/internal/zzmc$zza;)V

    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzpd;->zziw()Ljava/lang/Object;

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzmd;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzmd;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzmh$zza;Lcom/google/android/gms/internal/zzav;Lcom/google/android/gms/internal/zzmc$zza;)V

    goto :goto_0
.end method
