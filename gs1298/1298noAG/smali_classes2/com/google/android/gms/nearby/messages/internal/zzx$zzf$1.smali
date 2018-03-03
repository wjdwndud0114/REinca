.class Lcom/google/android/gms/nearby/messages/internal/zzx$zzf$1;
.super Lcom/google/android/gms/nearby/messages/internal/zzx$zzd;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/nearby/messages/internal/zzx$zzf;->onPermissionChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/nearby/messages/internal/zzx$zzd",
        "<",
        "Lcom/google/android/gms/nearby/messages/StatusCallback;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzbyN:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/nearby/messages/internal/zzx$zzf;Z)V
    .locals 1

    iput-boolean p2, p0, Lcom/google/android/gms/nearby/messages/internal/zzx$zzf$1;->zzbyN:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/nearby/messages/internal/zzx$zzd;-><init>(Lcom/google/android/gms/nearby/messages/internal/zzx$1;)V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/nearby/messages/StatusCallback;)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/nearby/messages/internal/zzx$zzf$1;->zzbyN:Z

    invoke-virtual {p1, v0}, Lcom/google/android/gms/nearby/messages/StatusCallback;->onPermissionChanged(Z)V

    return-void
.end method

.method public synthetic zzs(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/nearby/messages/StatusCallback;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/nearby/messages/internal/zzx$zzf$1;->zza(Lcom/google/android/gms/nearby/messages/StatusCallback;)V

    return-void
.end method
