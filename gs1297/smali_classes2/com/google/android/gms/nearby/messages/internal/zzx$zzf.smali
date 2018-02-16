.class Lcom/google/android/gms/nearby/messages/internal/zzx$zzf;
.super Lcom/google/android/gms/nearby/messages/internal/zzq$zza;

# interfaces
.implements Lcom/google/android/gms/nearby/messages/internal/zzx$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/nearby/messages/internal/zzx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zzf"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/nearby/messages/internal/zzq$zza;",
        "Lcom/google/android/gms/nearby/messages/internal/zzx$zza",
        "<",
        "Lcom/google/android/gms/nearby/messages/StatusCallback;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzbyM:Lcom/google/android/gms/internal/zzaaz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzaaz",
            "<",
            "Lcom/google/android/gms/nearby/messages/StatusCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzaaz;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzaaz",
            "<",
            "Lcom/google/android/gms/nearby/messages/StatusCallback;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/nearby/messages/internal/zzq$zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/nearby/messages/internal/zzx$zzf;->zzbyM:Lcom/google/android/gms/internal/zzaaz;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzaaz;Lcom/google/android/gms/nearby/messages/internal/zzx$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/nearby/messages/internal/zzx$zzf;-><init>(Lcom/google/android/gms/internal/zzaaz;)V

    return-void
.end method


# virtual methods
.method public onPermissionChanged(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/zzx$zzf;->zzbyM:Lcom/google/android/gms/internal/zzaaz;

    new-instance v1, Lcom/google/android/gms/nearby/messages/internal/zzx$zzf$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/nearby/messages/internal/zzx$zzf$1;-><init>(Lcom/google/android/gms/nearby/messages/internal/zzx$zzf;Z)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaaz;->zza(Lcom/google/android/gms/internal/zzaaz$zzc;)V

    return-void
.end method

.method public zzNl()Lcom/google/android/gms/internal/zzaaz;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/zzaaz",
            "<",
            "Lcom/google/android/gms/nearby/messages/StatusCallback;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/zzx$zzf;->zzbyM:Lcom/google/android/gms/internal/zzaaz;

    return-object v0
.end method
