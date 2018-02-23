.class public Lcom/google/android/gms/internal/zzlo;
.super Lcom/google/android/gms/internal/zzlj;

# interfaces
.implements Lcom/google/android/gms/internal/zzqq$zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzmb;
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzov$zza;Lcom/google/android/gms/internal/zzqp;Lcom/google/android/gms/internal/zzln$zza;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzlj;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzov$zza;Lcom/google/android/gms/internal/zzqp;Lcom/google/android/gms/internal/zzln$zza;)V

    return-void
.end method


# virtual methods
.method protected zziB()V
    .locals 0

    return-void
.end method

.method protected zziu()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlo;->zzPp:Lcom/google/android/gms/internal/zzmk;

    iget v0, v0, Lcom/google/android/gms/internal/zzmk;->errorCode:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlo;->zzGt:Lcom/google/android/gms/internal/zzqp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzqp;->zzkV()Lcom/google/android/gms/internal/zzqq;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzqq;->zza(Lcom/google/android/gms/internal/zzqq$zza;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzlo;->zziB()V

    const-string v0, "Loading HTML in WebView."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpe;->zzbc(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlo;->zzGt:Lcom/google/android/gms/internal/zzqp;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlo;->zzPp:Lcom/google/android/gms/internal/zzmk;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzmk;->zzNb:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzlo;->zzPp:Lcom/google/android/gms/internal/zzmk;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzmk;->body:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/zzqp;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
