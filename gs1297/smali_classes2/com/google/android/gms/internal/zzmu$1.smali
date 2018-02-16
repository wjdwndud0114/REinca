.class Lcom/google/android/gms/internal/zzmu$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzmu;->zzcm()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzSy:Lcom/google/android/gms/internal/zzmu;

.field final synthetic zzsI:Lcom/google/android/gms/internal/zzov$zza;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzmu;Lcom/google/android/gms/internal/zzov$zza;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzmu$1;->zzSy:Lcom/google/android/gms/internal/zzmu;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzmu$1;->zzsI:Lcom/google/android/gms/internal/zzov$zza;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmu$1;->zzSy:Lcom/google/android/gms/internal/zzmu;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzmu;->zza(Lcom/google/android/gms/internal/zzmu;)Lcom/google/android/gms/internal/zzmc$zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmu$1;->zzsI:Lcom/google/android/gms/internal/zzov$zza;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzmc$zza;->zza(Lcom/google/android/gms/internal/zzov$zza;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmu$1;->zzSy:Lcom/google/android/gms/internal/zzmu;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzmu;->zzb(Lcom/google/android/gms/internal/zzmu;)Lcom/google/android/gms/internal/zzja$zzc;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmu$1;->zzSy:Lcom/google/android/gms/internal/zzmu;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzmu;->zzb(Lcom/google/android/gms/internal/zzmu;)Lcom/google/android/gms/internal/zzja$zzc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzja$zzc;->release()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmu$1;->zzSy:Lcom/google/android/gms/internal/zzmu;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzmu;->zza(Lcom/google/android/gms/internal/zzmu;Lcom/google/android/gms/internal/zzja$zzc;)Lcom/google/android/gms/internal/zzja$zzc;

    :cond_0
    return-void
.end method
