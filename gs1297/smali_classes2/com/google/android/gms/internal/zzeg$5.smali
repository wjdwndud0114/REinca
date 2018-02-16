.class Lcom/google/android/gms/internal/zzeg$5;
.super Lcom/google/android/gms/internal/zzeg$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzeg;->zzk(Landroid/content/Context;)Lcom/google/android/gms/internal/zzeu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzeg$zza",
        "<",
        "Lcom/google/android/gms/internal/zzeu;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zztd:Landroid/content/Context;

.field final synthetic zzzC:Lcom/google/android/gms/internal/zzeg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzeg;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeg$5;->zzzC:Lcom/google/android/gms/internal/zzeg;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzeg$5;->zztd:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzeg$zza;-><init>(Lcom/google/android/gms/internal/zzeg;)V

    return-void
.end method


# virtual methods
.method public synthetic zzb(Lcom/google/android/gms/internal/zzes;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzeg$5;->zzd(Lcom/google/android/gms/internal/zzes;)Lcom/google/android/gms/internal/zzeu;

    move-result-object v0

    return-object v0
.end method

.method public zzd(Lcom/google/android/gms/internal/zzes;)Lcom/google/android/gms/internal/zzeu;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeg$5;->zztd:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zze;->zzA(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v0

    const v1, 0x99dea0

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzes;->getMobileAdsSettingsManagerWithClientJarVersion(Lcom/google/android/gms/dynamic/zzd;I)Lcom/google/android/gms/internal/zzeu;

    move-result-object v0

    return-object v0
.end method

.method public synthetic zzeE()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzeg$5;->zzeG()Lcom/google/android/gms/internal/zzeu;

    move-result-object v0

    return-object v0
.end method

.method public zzeG()Lcom/google/android/gms/internal/zzeu;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeg$5;->zzzC:Lcom/google/android/gms/internal/zzeg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzeg;->zzd(Lcom/google/android/gms/internal/zzeg;)Lcom/google/android/gms/internal/zzfd;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeg$5;->zztd:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzfd;->zzl(Landroid/content/Context;)Lcom/google/android/gms/internal/zzeu;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeg$5;->zzzC:Lcom/google/android/gms/internal/zzeg;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeg$5;->zztd:Landroid/content/Context;

    const-string v2, "mobile_ads_settings"

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zzeg;->zza(Lcom/google/android/gms/internal/zzeg;Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/zzfg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzfg;-><init>()V

    goto :goto_0
.end method
