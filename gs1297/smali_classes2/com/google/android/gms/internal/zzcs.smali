.class public Lcom/google/android/gms/internal/zzcs;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzcu;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzmb;
.end annotation


# instance fields
.field private final zzwA:Lcom/google/android/gms/internal/zzhx;

.field private final zzwB:Lcom/google/android/gms/internal/zzhx;

.field private final zzwx:Lcom/google/android/gms/internal/zzcq;

.field private final zzwy:Lcom/google/android/gms/internal/zzjb;

.field private final zzwz:Lcom/google/android/gms/internal/zzhx;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzcq;Lcom/google/android/gms/internal/zzjb;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzcs$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzcs$1;-><init>(Lcom/google/android/gms/internal/zzcs;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcs;->zzwz:Lcom/google/android/gms/internal/zzhx;

    new-instance v0, Lcom/google/android/gms/internal/zzcs$2;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzcs$2;-><init>(Lcom/google/android/gms/internal/zzcs;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcs;->zzwA:Lcom/google/android/gms/internal/zzhx;

    new-instance v0, Lcom/google/android/gms/internal/zzcs$3;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzcs$3;-><init>(Lcom/google/android/gms/internal/zzcs;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcs;->zzwB:Lcom/google/android/gms/internal/zzhx;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcs;->zzwx:Lcom/google/android/gms/internal/zzcq;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcs;->zzwy:Lcom/google/android/gms/internal/zzjb;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcs;->zzwy:Lcom/google/android/gms/internal/zzjb;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzcs;->zzc(Lcom/google/android/gms/internal/zzjb;)V

    const-string v1, "Custom JS tracking ad unit: "

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcs;->zzwx:Lcom/google/android/gms/internal/zzcq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcq;->zzdN()Lcom/google/android/gms/internal/zzco;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzco;->zzdy()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/zzpe;->zzbc(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzcs;)Lcom/google/android/gms/internal/zzcq;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcs;->zzwx:Lcom/google/android/gms/internal/zzcq;

    return-object v0
.end method


# virtual methods
.method zzc(Lcom/google/android/gms/internal/zzjb;)V
    .locals 2

    const-string v0, "/updateActiveView"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcs;->zzwz:Lcom/google/android/gms/internal/zzhx;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzjb;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzhx;)V

    const-string v0, "/untrackActiveViewUnit"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcs;->zzwA:Lcom/google/android/gms/internal/zzhx;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzjb;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzhx;)V

    const-string v0, "/visibilityChanged"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcs;->zzwB:Lcom/google/android/gms/internal/zzhx;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzjb;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzhx;)V

    return-void
.end method

.method public zzc(Lorg/json/JSONObject;Z)V
    .locals 2

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcs;->zzwy:Lcom/google/android/gms/internal/zzjb;

    const-string v1, "AFMA_updateActiveView"

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/zzjb;->zza(Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcs;->zzwx:Lcom/google/android/gms/internal/zzcq;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzcq;->zzb(Lcom/google/android/gms/internal/zzcu;)V

    goto :goto_0
.end method

.method zzd(Lcom/google/android/gms/internal/zzjb;)V
    .locals 2

    const-string v0, "/visibilityChanged"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcs;->zzwB:Lcom/google/android/gms/internal/zzhx;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzjb;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzhx;)V

    const-string v0, "/untrackActiveViewUnit"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcs;->zzwA:Lcom/google/android/gms/internal/zzhx;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzjb;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzhx;)V

    const-string v0, "/updateActiveView"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcs;->zzwz:Lcom/google/android/gms/internal/zzhx;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzjb;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzhx;)V

    return-void
.end method

.method public zzdR()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public zzdS()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcs;->zzwy:Lcom/google/android/gms/internal/zzjb;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzcs;->zzd(Lcom/google/android/gms/internal/zzjb;)V

    return-void
.end method
