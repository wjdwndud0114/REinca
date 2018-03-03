.class Lcom/google/android/gms/internal/zzmu$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzmu;->onStop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzSy:Lcom/google/android/gms/internal/zzmu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzmu;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzmu$3;->zzSy:Lcom/google/android/gms/internal/zzmu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmu$3;->zzSy:Lcom/google/android/gms/internal/zzmu;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzmu;->zzb(Lcom/google/android/gms/internal/zzmu;)Lcom/google/android/gms/internal/zzja$zzc;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmu$3;->zzSy:Lcom/google/android/gms/internal/zzmu;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzmu;->zzb(Lcom/google/android/gms/internal/zzmu;)Lcom/google/android/gms/internal/zzja$zzc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzja$zzc;->release()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmu$3;->zzSy:Lcom/google/android/gms/internal/zzmu;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzmu;->zza(Lcom/google/android/gms/internal/zzmu;Lcom/google/android/gms/internal/zzja$zzc;)Lcom/google/android/gms/internal/zzja$zzc;

    :cond_0
    return-void
.end method
