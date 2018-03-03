.class Lcom/google/android/gms/internal/zzavj$zzb;
.super Lcom/google/android/gms/internal/zzavi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzavj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zzb"
.end annotation


# instance fields
.field private final zzbwV:Lcom/google/android/gms/internal/zzaaz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzaaz",
            "<",
            "Lcom/google/android/gms/nearby/connection/Connections$MessageListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaaz;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzaaz",
            "<",
            "Lcom/google/android/gms/nearby/connection/Connections$MessageListener;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzavi;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzavj$zzb;->zzbwV:Lcom/google/android/gms/internal/zzaaz;

    return-void
.end method


# virtual methods
.method public onDisconnected(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzavj$zzb;->zzbwV:Lcom/google/android/gms/internal/zzaaz;

    new-instance v1, Lcom/google/android/gms/internal/zzavj$zzb$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzavj$zzb$2;-><init>(Lcom/google/android/gms/internal/zzavj$zzb;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaaz;->zza(Lcom/google/android/gms/internal/zzaaz$zzc;)V

    return-void
.end method

.method public onMessageReceived(Ljava/lang/String;[BZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzavj$zzb;->zzbwV:Lcom/google/android/gms/internal/zzaaz;

    new-instance v1, Lcom/google/android/gms/internal/zzavj$zzb$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzavj$zzb$1;-><init>(Lcom/google/android/gms/internal/zzavj$zzb;Ljava/lang/String;[BZ)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaaz;->zza(Lcom/google/android/gms/internal/zzaaz$zzc;)V

    return-void
.end method
