.class Lcom/google/android/gms/analytics/zzh$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/analytics/zzh;->zze(Lcom/google/android/gms/analytics/zze;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzabm:Lcom/google/android/gms/analytics/zze;

.field final synthetic zzabn:Lcom/google/android/gms/analytics/zzh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/zzh;Lcom/google/android/gms/analytics/zze;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/analytics/zzh$1;->zzabn:Lcom/google/android/gms/analytics/zzh;

    iput-object p2, p0, Lcom/google/android/gms/analytics/zzh$1;->zzabm:Lcom/google/android/gms/analytics/zze;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzh$1;->zzabm:Lcom/google/android/gms/analytics/zze;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/zze;->zzmi()Lcom/google/android/gms/analytics/zzg;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/analytics/zzh$1;->zzabm:Lcom/google/android/gms/analytics/zze;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/zzg;->zza(Lcom/google/android/gms/analytics/zze;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzh$1;->zzabn:Lcom/google/android/gms/analytics/zzh;

    invoke-static {v0}, Lcom/google/android/gms/analytics/zzh;->zza(Lcom/google/android/gms/analytics/zzh;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/zzh$1;->zzabn:Lcom/google/android/gms/analytics/zzh;

    iget-object v1, p0, Lcom/google/android/gms/analytics/zzh$1;->zzabm:Lcom/google/android/gms/analytics/zze;

    invoke-static {v0, v1}, Lcom/google/android/gms/analytics/zzh;->zza(Lcom/google/android/gms/analytics/zzh;Lcom/google/android/gms/analytics/zze;)V

    return-void
.end method
