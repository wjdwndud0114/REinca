.class public Lcom/google/android/gms/internal/zzff;
.super Lcom/google/android/gms/internal/zzep$zza;


# instance fields
.field private zzti:Lcom/google/android/gms/internal/zzel;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzep$zza;-><init>()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzff;)Lcom/google/android/gms/internal/zzel;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzff;->zzti:Lcom/google/android/gms/internal/zzel;

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 0

    return-void
.end method

.method public getMediationAdapterClassName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isLoading()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isReady()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public pause()V
    .locals 0

    return-void
.end method

.method public resume()V
    .locals 0

    return-void
.end method

.method public setManualImpressionsEnabled(Z)V
    .locals 0

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public showInterstitial()V
    .locals 0

    return-void
.end method

.method public stopLoading()V
    .locals 0

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzec;)V
    .locals 0

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzek;)V
    .locals 0

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzel;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzff;->zzti:Lcom/google/android/gms/internal/zzel;

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzer;)V
    .locals 0

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzet;)V
    .locals 0

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzfn;)V
    .locals 0

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzgj;)V
    .locals 0

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzkz;)V
    .locals 0

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzld;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zznt;)V
    .locals 0

    return-void
.end method

.method public zzb(Lcom/google/android/gms/internal/zzdy;)Z
    .locals 2

    const-string v0, "This app is using a lightweight version of the Google Mobile Ads SDK that requires the latest Google Play services to be installed, but Google Play services is either missing or out of date."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpy;->e(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/internal/zzpx;->zzXU:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/zzff$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzff$1;-><init>(Lcom/google/android/gms/internal/zzff;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    return v0
.end method

.method public zzbC()Lcom/google/android/gms/dynamic/zzd;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public zzbD()Lcom/google/android/gms/internal/zzec;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public zzbF()V
    .locals 0

    return-void
.end method

.method public zzbG()Lcom/google/android/gms/internal/zzew;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
