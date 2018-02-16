.class Lcom/google/android/gms/internal/zzja$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzqi$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzja;->zzb(Lcom/google/android/gms/internal/zzav;)Lcom/google/android/gms/internal/zzja$zzd;
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
        "Lcom/google/android/gms/internal/zzix;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzJk:Lcom/google/android/gms/internal/zzja;

.field final synthetic zzJr:Lcom/google/android/gms/internal/zzja$zzd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzja;Lcom/google/android/gms/internal/zzja$zzd;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzja$2;->zzJk:Lcom/google/android/gms/internal/zzja;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzja$2;->zzJr:Lcom/google/android/gms/internal/zzja$zzd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzix;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzja$2;->zzJk:Lcom/google/android/gms/internal/zzja;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzja;->zzc(Lcom/google/android/gms/internal/zzja;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzja$2;->zzJk:Lcom/google/android/gms/internal/zzja;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzja;->zza(Lcom/google/android/gms/internal/zzja;I)I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzja$2;->zzJk:Lcom/google/android/gms/internal/zzja;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzja;->zzg(Lcom/google/android/gms/internal/zzja;)Lcom/google/android/gms/internal/zzja$zzd;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzja$2;->zzJr:Lcom/google/android/gms/internal/zzja$zzd;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzja$2;->zzJk:Lcom/google/android/gms/internal/zzja;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzja;->zzg(Lcom/google/android/gms/internal/zzja;)Lcom/google/android/gms/internal/zzja$zzd;

    move-result-object v2

    if-eq v0, v2, :cond_0

    const-string v0, "New JS engine is loaded, marking previous one as destroyable."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpe;->v(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzja$2;->zzJk:Lcom/google/android/gms/internal/zzja;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzja;->zzg(Lcom/google/android/gms/internal/zzja;)Lcom/google/android/gms/internal/zzja$zzd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzja$zzd;->zzgy()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzja$2;->zzJk:Lcom/google/android/gms/internal/zzja;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzja$2;->zzJr:Lcom/google/android/gms/internal/zzja$zzd;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzja;->zza(Lcom/google/android/gms/internal/zzja;Lcom/google/android/gms/internal/zzja$zzd;)Lcom/google/android/gms/internal/zzja$zzd;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public synthetic zzd(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzix;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzja$2;->zza(Lcom/google/android/gms/internal/zzix;)V

    return-void
.end method
