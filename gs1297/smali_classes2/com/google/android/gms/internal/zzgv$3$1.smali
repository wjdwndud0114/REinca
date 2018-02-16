.class Lcom/google/android/gms/internal/zzgv$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzhx;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzgv$3;->zze(Lcom/google/android/gms/internal/zzjb;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzGA:Lcom/google/android/gms/internal/zzgv$3;

.field final synthetic zzGz:Lcom/google/android/gms/internal/zzjb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzgv$3;Lcom/google/android/gms/internal/zzjb;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzgv$3$1;->zzGA:Lcom/google/android/gms/internal/zzgv$3;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzgv$3$1;->zzGz:Lcom/google/android/gms/internal/zzjb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzqp;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzqp;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgv$3$1;->zzGA:Lcom/google/android/gms/internal/zzgv$3;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzgv$3;->zzGy:Lcom/google/android/gms/internal/zzgv;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzgv;->zzb(Lcom/google/android/gms/internal/zzgv;)Lcom/google/android/gms/internal/zzqp;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzqp;->zzkV()Lcom/google/android/gms/internal/zzqq;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzgv$3$1$1;

    invoke-direct {v1, p0, p2}, Lcom/google/android/gms/internal/zzgv$3$1$1;-><init>(Lcom/google/android/gms/internal/zzgv$3$1;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzqq;->zza(Lcom/google/android/gms/internal/zzqq$zza;)V

    const-string v0, "overlayHtml"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v0, "baseUrl"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgv$3$1;->zzGA:Lcom/google/android/gms/internal/zzgv$3;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzgv$3;->zzGy:Lcom/google/android/gms/internal/zzgv;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzgv;->zzb(Lcom/google/android/gms/internal/zzgv;)Lcom/google/android/gms/internal/zzqp;

    move-result-object v0

    const-string v1, "text/html"

    const-string v3, "UTF-8"

    invoke-interface {v0, v2, v1, v3}, Lcom/google/android/gms/internal/zzqp;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgv$3$1;->zzGA:Lcom/google/android/gms/internal/zzgv$3;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzgv$3;->zzGy:Lcom/google/android/gms/internal/zzgv;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzgv;->zzb(Lcom/google/android/gms/internal/zzgv;)Lcom/google/android/gms/internal/zzqp;

    move-result-object v0

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/zzqp;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
