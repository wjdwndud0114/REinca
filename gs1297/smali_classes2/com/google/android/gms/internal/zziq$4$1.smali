.class Lcom/google/android/gms/internal/zziq$4$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zziq$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zziq$4;->zza(Lcom/google/android/gms/internal/zzgi;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzIp:Lcom/google/android/gms/internal/zzgi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zziq$4;Lcom/google/android/gms/internal/zzgi;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zziq$4$1;->zzIp:Lcom/google/android/gms/internal/zzgi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzb(Lcom/google/android/gms/internal/zzir;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p1, Lcom/google/android/gms/internal/zzir;->zzIv:Lcom/google/android/gms/internal/zzgj;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/zzir;->zzIv:Lcom/google/android/gms/internal/zzgj;

    iget-object v1, p0, Lcom/google/android/gms/internal/zziq$4$1;->zzIp:Lcom/google/android/gms/internal/zzgi;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzgj;->zza(Lcom/google/android/gms/internal/zzgi;)V

    :cond_0
    return-void
.end method
