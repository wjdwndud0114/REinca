.class Lcom/google/android/gms/internal/zzmz$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzqi$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzmz$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzqi$zzc",
        "<",
        "Lcom/google/android/gms/internal/zzjb;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzTc:Lcom/google/android/gms/internal/zzgd;

.field final synthetic zzTd:Lcom/google/android/gms/internal/zzmz$2;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzmz$2;Lcom/google/android/gms/internal/zzgd;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzmz$2$1;->zzTd:Lcom/google/android/gms/internal/zzmz$2;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzmz$2$1;->zzTc:Lcom/google/android/gms/internal/zzgd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzb(Lcom/google/android/gms/internal/zzjb;)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmz$2$1;->zzTd:Lcom/google/android/gms/internal/zzmz$2;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzmz$2;->zzsK:Lcom/google/android/gms/internal/zzgf;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmz$2$1;->zzTc:Lcom/google/android/gms/internal/zzgd;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "jsf"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzgf;->zza(Lcom/google/android/gms/internal/zzgd;[Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmz$2$1;->zzTd:Lcom/google/android/gms/internal/zzmz$2;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzmz$2;->zzsK:Lcom/google/android/gms/internal/zzgf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzgf;->zzfx()V

    const-string v0, "/invalidRequest"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmz$2$1;->zzTd:Lcom/google/android/gms/internal/zzmz$2;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzmz$2;->zzSZ:Lcom/google/android/gms/internal/zznb;

    iget-object v1, v1, Lcom/google/android/gms/internal/zznb;->zzTk:Lcom/google/android/gms/internal/zzhx;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzjb;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzhx;)V

    const-string v0, "/loadAdURL"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmz$2$1;->zzTd:Lcom/google/android/gms/internal/zzmz$2;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzmz$2;->zzSZ:Lcom/google/android/gms/internal/zznb;

    iget-object v1, v1, Lcom/google/android/gms/internal/zznb;->zzTl:Lcom/google/android/gms/internal/zzhx;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzjb;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzhx;)V

    const-string v0, "/loadAd"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmz$2$1;->zzTd:Lcom/google/android/gms/internal/zzmz$2;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzmz$2;->zzSZ:Lcom/google/android/gms/internal/zznb;

    iget-object v1, v1, Lcom/google/android/gms/internal/zznb;->zzTm:Lcom/google/android/gms/internal/zzhx;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzjb;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzhx;)V

    :try_start_0
    const-string v0, "AFMA_getAd"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmz$2$1;->zzTd:Lcom/google/android/gms/internal/zzmz$2;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzmz$2;->zzTb:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzjb;->zzi(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Error requesting an ad url"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzpe;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public synthetic zzd(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzjb;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzmz$2$1;->zzb(Lcom/google/android/gms/internal/zzjb;)V

    return-void
.end method
