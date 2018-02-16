.class Lcom/google/android/gms/internal/zztc$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zztc$1;->zzf(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzafL:Lcom/google/android/gms/internal/zztc$1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zztc$1;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zztc$1$1;->zzafL:Lcom/google/android/gms/internal/zztc$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zztc$1$1;->zzafL:Lcom/google/android/gms/internal/zztc$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zztc$1;->zzafK:Lcom/google/android/gms/internal/zztc;

    invoke-static {v0}, Lcom/google/android/gms/internal/zztc;->zza(Lcom/google/android/gms/internal/zztc;)Lcom/google/android/gms/internal/zztc$zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zztc$1$1;->zzafL:Lcom/google/android/gms/internal/zztc$1;

    iget v1, v1, Lcom/google/android/gms/internal/zztc$1;->zzaaz:I

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zztc$zza;->callServiceStopSelfResult(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zztc$1$1;->zzafL:Lcom/google/android/gms/internal/zztc$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zztc$1;->zzaay:Lcom/google/android/gms/internal/zzsx;

    const-string v1, "Local AnalyticsService processed last dispatch request"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzsx;->zzbO(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
