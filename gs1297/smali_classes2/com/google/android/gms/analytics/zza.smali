.class public Lcom/google/android/gms/analytics/zza;
.super Lcom/google/android/gms/analytics/zzg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/analytics/zzg",
        "<",
        "Lcom/google/android/gms/analytics/zza;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzaam:Lcom/google/android/gms/internal/zzrw;

.field private zzaan:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzrw;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zznt()Lcom/google/android/gms/analytics/zzh;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zznq()Lcom/google/android/gms/common/util/zze;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/analytics/zzg;-><init>(Lcom/google/android/gms/analytics/zzh;Lcom/google/android/gms/common/util/zze;)V

    iput-object p1, p0, Lcom/google/android/gms/analytics/zza;->zzaam:Lcom/google/android/gms/internal/zzrw;

    return-void
.end method


# virtual methods
.method public enableAdvertisingIdCollection(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/analytics/zza;->zzaan:Z

    return-void
.end method

.method protected zza(Lcom/google/android/gms/analytics/zze;)V
    .locals 3

    const-class v0, Lcom/google/android/gms/internal/zzrn;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/analytics/zze;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/analytics/zzf;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzrn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrn;->zzlX()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/analytics/zza;->zzaam:Lcom/google/android/gms/internal/zzrw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzrw;->zznH()Lcom/google/android/gms/internal/zzse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzse;->zzop()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzrn;->setClientId(Ljava/lang/String;)V

    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/analytics/zza;->zzaan:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrn;->zzmU()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/analytics/zza;->zzaam:Lcom/google/android/gms/internal/zzrw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzrw;->zznG()Lcom/google/android/gms/internal/zzrr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzrr;->zznf()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzrn;->zzbE(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzrr;->zzmV()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzrn;->zzR(Z)V

    :cond_1
    return-void
.end method

.method public zzbn(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzdv(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/analytics/zza;->zzbo(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/zza;->zzmn()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/analytics/zzb;

    iget-object v2, p0, Lcom/google/android/gms/analytics/zza;->zzaam:Lcom/google/android/gms/internal/zzrw;

    invoke-direct {v1, v2, p1}, Lcom/google/android/gms/analytics/zzb;-><init>(Lcom/google/android/gms/internal/zzrw;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public zzbo(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Lcom/google/android/gms/analytics/zzb;->zzbp(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/zza;->zzmn()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/analytics/zzi;

    invoke-interface {v0}, Lcom/google/android/gms/analytics/zzi;->zzlQ()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/ListIterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method zzlM()Lcom/google/android/gms/internal/zzrw;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/zza;->zzaam:Lcom/google/android/gms/internal/zzrw;

    return-object v0
.end method

.method public zzlN()Lcom/google/android/gms/analytics/zze;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/zza;->zzmm()Lcom/google/android/gms/analytics/zze;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/zze;->zzmb()Lcom/google/android/gms/analytics/zze;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/analytics/zza;->zzaam:Lcom/google/android/gms/internal/zzrw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzrw;->zzny()Lcom/google/android/gms/internal/zzsb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzsb;->zznX()Lcom/google/android/gms/internal/zzre;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/zze;->zza(Lcom/google/android/gms/analytics/zzf;)V

    iget-object v1, p0, Lcom/google/android/gms/analytics/zza;->zzaam:Lcom/google/android/gms/internal/zzrw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzrw;->zznz()Lcom/google/android/gms/internal/zzsm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzsm;->zzpb()Lcom/google/android/gms/internal/zzrj;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/zze;->zza(Lcom/google/android/gms/analytics/zzf;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/zza;->zzd(Lcom/google/android/gms/analytics/zze;)V

    return-object v0
.end method
