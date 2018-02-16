.class Lcom/google/android/gms/internal/zzavj$zzd$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzaaz$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzavj$zzd;->zza(Ljava/lang/String;I[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzaaz$zzc",
        "<",
        "Lcom/google/android/gms/nearby/connection/Connections$ConnectionResponseCallback;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzavo:I

.field final synthetic zzbwW:Ljava/lang/String;

.field final synthetic zzbwX:[B


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzavj$zzd;Ljava/lang/String;I[B)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzavj$zzd$1;->zzbwW:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/internal/zzavj$zzd$1;->zzavo:I

    iput-object p4, p0, Lcom/google/android/gms/internal/zzavj$zzd$1;->zzbwX:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/nearby/connection/Connections$ConnectionResponseCallback;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzavj$zzd$1;->zzbwW:Ljava/lang/String;

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    iget v2, p0, Lcom/google/android/gms/internal/zzavj$zzd$1;->zzavo:I

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzavj$zzd$1;->zzbwX:[B

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/nearby/connection/Connections$ConnectionResponseCallback;->onConnectionResponse(Ljava/lang/String;Lcom/google/android/gms/common/api/Status;[B)V

    return-void
.end method

.method public synthetic zzs(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/nearby/connection/Connections$ConnectionResponseCallback;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzavj$zzd$1;->zza(Lcom/google/android/gms/nearby/connection/Connections$ConnectionResponseCallback;)V

    return-void
.end method

.method public zzvy()V
    .locals 0

    return-void
.end method
