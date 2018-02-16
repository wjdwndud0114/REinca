.class Lcom/google/android/gms/internal/zzahk$3;
.super Lcom/google/android/gms/internal/zzahj$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzahk;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzagb;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaLB:Lcom/google/android/gms/internal/zzagb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzahk;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzagb;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/zzahk$3;->zzaLB:Lcom/google/android/gms/internal/zzagb;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzahj$zza;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzahk;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzahk$3;->zza(Lcom/google/android/gms/internal/zzahk;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzahk;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzahk;->zzAi()Lcom/google/android/gms/internal/zzaik;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzahk$3;->zzaLB:Lcom/google/android/gms/internal/zzagb;

    new-instance v2, Lcom/google/android/gms/internal/zzakp;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzakp;-><init>(Lcom/google/android/gms/internal/zzzv$zzb;)V

    invoke-interface {v0, v1, v3, v3, v2}, Lcom/google/android/gms/internal/zzaik;->zza(Lcom/google/android/gms/internal/zzagb;Lcom/google/android/gms/internal/zzaim;Ljava/lang/String;Lcom/google/android/gms/internal/zzail;)V

    return-void
.end method
