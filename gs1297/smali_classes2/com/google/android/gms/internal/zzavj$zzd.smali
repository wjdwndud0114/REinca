.class final Lcom/google/android/gms/internal/zzavj$zzd;
.super Lcom/google/android/gms/internal/zzavj$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzavj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "zzd"
.end annotation


# instance fields
.field private final zzaFq:Lcom/google/android/gms/internal/zzzv$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzzv$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation
.end field

.field private final zzbwZ:Lcom/google/android/gms/internal/zzaaz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzaaz",
            "<",
            "Lcom/google/android/gms/nearby/connection/Connections$ConnectionResponseCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzzv$zzb;Lcom/google/android/gms/internal/zzaaz;Lcom/google/android/gms/internal/zzaaz;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzzv$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;",
            "Lcom/google/android/gms/internal/zzaaz",
            "<",
            "Lcom/google/android/gms/nearby/connection/Connections$ConnectionResponseCallback;",
            ">;",
            "Lcom/google/android/gms/internal/zzaaz",
            "<",
            "Lcom/google/android/gms/nearby/connection/Connections$MessageListener;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/zzavj$zzb;-><init>(Lcom/google/android/gms/internal/zzaaz;)V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzzv$zzb;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzavj$zzd;->zzaFq:Lcom/google/android/gms/internal/zzzv$zzb;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaaz;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzavj$zzd;->zzbwZ:Lcom/google/android/gms/internal/zzaaz;

    return-void
.end method


# virtual methods
.method public zza(Ljava/lang/String;I[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzavj$zzd;->zzbwZ:Lcom/google/android/gms/internal/zzaaz;

    new-instance v1, Lcom/google/android/gms/internal/zzavj$zzd$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzavj$zzd$1;-><init>(Lcom/google/android/gms/internal/zzavj$zzd;Ljava/lang/String;I[B)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaaz;->zza(Lcom/google/android/gms/internal/zzaaz$zzc;)V

    return-void
.end method

.method public zzlG(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzavj$zzd;->zzaFq:Lcom/google/android/gms/internal/zzzv$zzb;

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v1, p1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzzv$zzb;->setResult(Ljava/lang/Object;)V

    return-void
.end method
