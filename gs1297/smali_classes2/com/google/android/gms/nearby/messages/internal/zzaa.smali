.class final Lcom/google/android/gms/nearby/messages/internal/zzaa;
.super Lcom/google/android/gms/nearby/messages/internal/zzn$zza;


# instance fields
.field private final zzbyV:Lcom/google/android/gms/internal/zzzv$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzzv$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation
.end field

.field private zzbyW:Z


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzzv$zzb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzzv$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/nearby/messages/internal/zzn$zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/nearby/messages/internal/zzaa;->zzbyV:Lcom/google/android/gms/internal/zzzv$zzb;

    return-void
.end method

.method static zzu(Lcom/google/android/gms/internal/zzzv$zzb;)Lcom/google/android/gms/nearby/messages/internal/zzaa;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzzv$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)",
            "Lcom/google/android/gms/nearby/messages/internal/zzaa;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/nearby/messages/internal/zzaa;

    invoke-direct {v0, p0}, Lcom/google/android/gms/nearby/messages/internal/zzaa;-><init>(Lcom/google/android/gms/internal/zzzv$zzb;)V

    return-object v0
.end method


# virtual methods
.method public zzbw(Lcom/google/android/gms/common/api/Status;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/nearby/messages/internal/zzaa;->zzbyW:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/zzaa;->zzbyV:Lcom/google/android/gms/internal/zzzv$zzb;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzzv$zzb;->setResult(Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/nearby/messages/internal/zzaa;->zzbyW:Z

    :cond_0
    return-void
.end method
