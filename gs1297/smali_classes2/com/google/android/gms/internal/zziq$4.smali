.class Lcom/google/android/gms/internal/zziq$4;
.super Lcom/google/android/gms/internal/zzgj$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zziq;->zzc(Lcom/google/android/gms/ads/internal/zzl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzIl:Lcom/google/android/gms/internal/zziq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zziq;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zziq$4;->zzIl:Lcom/google/android/gms/internal/zziq;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzgj$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzgi;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zziq$4;->zzIl:Lcom/google/android/gms/internal/zziq;

    invoke-static {v0}, Lcom/google/android/gms/internal/zziq;->zza(Lcom/google/android/gms/internal/zziq;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zziq$4$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zziq$4$1;-><init>(Lcom/google/android/gms/internal/zziq$4;Lcom/google/android/gms/internal/zzgi;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
