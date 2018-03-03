.class Lcom/google/android/gms/internal/zzgv$3;
.super Lcom/google/android/gms/internal/zzlt$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzgv;->zzfU()Lcom/google/android/gms/internal/zzqp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzGy:Lcom/google/android/gms/internal/zzgv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzgv;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzgv$3;->zzGy:Lcom/google/android/gms/internal/zzgv;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzlt$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public zze(Lcom/google/android/gms/internal/zzjb;)V
    .locals 3

    const-string v0, "/loadHtml"

    new-instance v1, Lcom/google/android/gms/internal/zzgv$3$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzgv$3$1;-><init>(Lcom/google/android/gms/internal/zzgv$3;Lcom/google/android/gms/internal/zzjb;)V

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzjb;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzhx;)V

    const-string v0, "/showOverlay"

    new-instance v1, Lcom/google/android/gms/internal/zzgv$3$2;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzgv$3$2;-><init>(Lcom/google/android/gms/internal/zzgv$3;)V

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzjb;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzhx;)V

    const-string v0, "/hideOverlay"

    new-instance v1, Lcom/google/android/gms/internal/zzgv$3$3;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzgv$3$3;-><init>(Lcom/google/android/gms/internal/zzgv$3;)V

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzjb;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzhx;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgv$3;->zzGy:Lcom/google/android/gms/internal/zzgv;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzgv;->zzb(Lcom/google/android/gms/internal/zzgv;)Lcom/google/android/gms/internal/zzqp;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzqp;->zzkV()Lcom/google/android/gms/internal/zzqq;

    move-result-object v0

    const-string v1, "/hideOverlay"

    new-instance v2, Lcom/google/android/gms/internal/zzgv$3$4;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzgv$3$4;-><init>(Lcom/google/android/gms/internal/zzgv$3;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzqq;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzhx;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgv$3;->zzGy:Lcom/google/android/gms/internal/zzgv;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzgv;->zzb(Lcom/google/android/gms/internal/zzgv;)Lcom/google/android/gms/internal/zzqp;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzqp;->zzkV()Lcom/google/android/gms/internal/zzqq;

    move-result-object v0

    const-string v1, "/sendMessageToSdk"

    new-instance v2, Lcom/google/android/gms/internal/zzgv$3$5;

    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/internal/zzgv$3$5;-><init>(Lcom/google/android/gms/internal/zzgv$3;Lcom/google/android/gms/internal/zzjb;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzqq;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzhx;)V

    return-void
.end method
