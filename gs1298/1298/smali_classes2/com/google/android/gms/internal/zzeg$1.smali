.class Lcom/google/android/gms/internal/zzeg$1;
.super Lcom/google/android/gms/internal/zzeg$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzeg;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzec;Ljava/lang/String;Lcom/google/android/gms/internal/zzjs;)Lcom/google/android/gms/internal/zzep;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzeg$zza",
        "<",
        "Lcom/google/android/gms/internal/zzep;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zztb:Ljava/lang/String;

.field final synthetic zztd:Landroid/content/Context;

.field final synthetic zzzA:Lcom/google/android/gms/internal/zzec;

.field final synthetic zzzB:Lcom/google/android/gms/internal/zzjs;

.field final synthetic zzzC:Lcom/google/android/gms/internal/zzeg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzeg;Landroid/content/Context;Lcom/google/android/gms/internal/zzec;Ljava/lang/String;Lcom/google/android/gms/internal/zzjs;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeg$1;->zzzC:Lcom/google/android/gms/internal/zzeg;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzeg$1;->zztd:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzeg$1;->zzzA:Lcom/google/android/gms/internal/zzec;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzeg$1;->zztb:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzeg$1;->zzzB:Lcom/google/android/gms/internal/zzjs;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzeg$zza;-><init>(Lcom/google/android/gms/internal/zzeg;)V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzes;)Lcom/google/android/gms/internal/zzep;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeg$1;->zztd:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zze;->zzA(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzeg$1;->zzzA:Lcom/google/android/gms/internal/zzec;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzeg$1;->zztb:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzeg$1;->zzzB:Lcom/google/android/gms/internal/zzjs;

    const v5, 0x99dea0

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/zzes;->createBannerAdManager(Lcom/google/android/gms/dynamic/zzd;Lcom/google/android/gms/internal/zzec;Ljava/lang/String;Lcom/google/android/gms/internal/zzjs;I)Lcom/google/android/gms/internal/zzep;

    move-result-object v0

    return-object v0
.end method

.method public synthetic zzb(Lcom/google/android/gms/internal/zzes;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzeg$1;->zza(Lcom/google/android/gms/internal/zzes;)Lcom/google/android/gms/internal/zzep;

    move-result-object v0

    return-object v0
.end method

.method public zzeD()Lcom/google/android/gms/internal/zzep;
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeg$1;->zzzC:Lcom/google/android/gms/internal/zzeg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzeg;->zzb(Lcom/google/android/gms/internal/zzeg;)Lcom/google/android/gms/internal/zzdx;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeg$1;->zztd:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzeg$1;->zzzA:Lcom/google/android/gms/internal/zzec;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzeg$1;->zztb:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzeg$1;->zzzB:Lcom/google/android/gms/internal/zzjs;

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/zzdx;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzec;Ljava/lang/String;Lcom/google/android/gms/internal/zzjs;I)Lcom/google/android/gms/internal/zzep;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeg$1;->zzzC:Lcom/google/android/gms/internal/zzeg;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeg$1;->zztd:Landroid/content/Context;

    const-string v2, "banner"

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zzeg;->zza(Lcom/google/android/gms/internal/zzeg;Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/zzff;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzff;-><init>()V

    goto :goto_0
.end method

.method public synthetic zzeE()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzeg$1;->zzeD()Lcom/google/android/gms/internal/zzep;

    move-result-object v0

    return-object v0
.end method
