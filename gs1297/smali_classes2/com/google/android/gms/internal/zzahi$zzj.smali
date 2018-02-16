.class Lcom/google/android/gms/internal/zzahi$zzj;
.super Lcom/google/android/gms/internal/zzahj$zza;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "MissingRemoteException"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzahi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "zzj"
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzahj$zza;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/zzahi$zzj;->zzb(Lcom/google/android/gms/common/api/Result;)V

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

    return-void
.end method
