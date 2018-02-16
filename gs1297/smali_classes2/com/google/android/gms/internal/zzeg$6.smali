.class Lcom/google/android/gms/internal/zzeg$6;
.super Lcom/google/android/gms/internal/zzeg$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzeg;->zza(Landroid/content/Context;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)Lcom/google/android/gms/internal/zzhb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzeg$zza",
        "<",
        "Lcom/google/android/gms/internal/zzhb;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zztd:Landroid/content/Context;

.field final synthetic zzzC:Lcom/google/android/gms/internal/zzeg;

.field final synthetic zzzD:Landroid/widget/FrameLayout;

.field final synthetic zzzE:Landroid/widget/FrameLayout;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzeg;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeg$6;->zzzC:Lcom/google/android/gms/internal/zzeg;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzeg$6;->zzzD:Landroid/widget/FrameLayout;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzeg$6;->zzzE:Landroid/widget/FrameLayout;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzeg$6;->zztd:Landroid/content/Context;

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzeg$6;->zze(Lcom/google/android/gms/internal/zzes;)Lcom/google/android/gms/internal/zzhb;

    move-result-object v0

    return-object v0
.end method

.method public zze(Lcom/google/android/gms/internal/zzes;)Lcom/google/android/gms/internal/zzhb;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeg$6;->zzzD:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zze;->zzA(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeg$6;->zzzE:Landroid/widget/FrameLayout;

    invoke-static {v1}, Lcom/google/android/gms/dynamic/zze;->zzA(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzes;->createNativeAdViewDelegate(Lcom/google/android/gms/dynamic/zzd;Lcom/google/android/gms/dynamic/zzd;)Lcom/google/android/gms/internal/zzhb;

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

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzeg$6;->zzeH()Lcom/google/android/gms/internal/zzhb;

    move-result-object v0

    return-object v0
.end method

.method public zzeH()Lcom/google/android/gms/internal/zzhb;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeg$6;->zzzC:Lcom/google/android/gms/internal/zzeg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzeg;->zze(Lcom/google/android/gms/internal/zzeg;)Lcom/google/android/gms/internal/zzhn;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeg$6;->zztd:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzeg$6;->zzzD:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzeg$6;->zzzE:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzhn;->zzb(Landroid/content/Context;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)Lcom/google/android/gms/internal/zzhb;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeg$6;->zzzC:Lcom/google/android/gms/internal/zzeg;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeg$6;->zztd:Landroid/content/Context;

    const-string v2, "native_ad_view_delegate"

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zzeg;->zza(Lcom/google/android/gms/internal/zzeg;Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/zzfh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzfh;-><init>()V

    goto :goto_0
.end method
