.class Lcom/google/android/gms/tagmanager/zzp$zzd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/zzo$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/tagmanager/zzp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zzd"
.end annotation


# instance fields
.field final synthetic zzbDt:Lcom/google/android/gms/tagmanager/zzp;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/tagmanager/zzp;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzp$zzd;->zzbDt:Lcom/google/android/gms/tagmanager/zzp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/tagmanager/zzp;Lcom/google/android/gms/tagmanager/zzp$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/tagmanager/zzp$zzd;-><init>(Lcom/google/android/gms/tagmanager/zzp;)V

    return-void
.end method


# virtual methods
.method public zzOC()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzp$zzd;->zzbDt:Lcom/google/android/gms/tagmanager/zzp;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzp;->zzOC()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zzOE()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzp$zzd;->zzbDt:Lcom/google/android/gms/tagmanager/zzp;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzp;->zza(Lcom/google/android/gms/tagmanager/zzp;)Lcom/google/android/gms/tagmanager/zzcl;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/tagmanager/zzcl;->zzpv()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzp$zzd;->zzbDt:Lcom/google/android/gms/tagmanager/zzp;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/tagmanager/zzp;->zza(Lcom/google/android/gms/tagmanager/zzp;J)V

    :cond_0
    return-void
.end method

.method public zzgZ(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzp$zzd;->zzbDt:Lcom/google/android/gms/tagmanager/zzp;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tagmanager/zzp;->zzgZ(Ljava/lang/String;)V

    return-void
.end method
