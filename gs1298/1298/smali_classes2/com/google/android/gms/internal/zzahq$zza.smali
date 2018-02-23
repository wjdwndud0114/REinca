.class Lcom/google/android/gms/internal/zzahq$zza;
.super Lcom/google/android/gms/internal/zzagh;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzahq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zza"
.end annotation


# instance fields
.field private final zzaFq:Lcom/google/android/gms/internal/zzzv$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzzv$zzb",
            "<",
            "Lcom/google/android/gms/drive/DrivePreferencesApi$FileUploadPreferencesResult;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic zzaMa:Lcom/google/android/gms/internal/zzahq;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzahq;Lcom/google/android/gms/internal/zzzv$zzb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzzv$zzb",
            "<",
            "Lcom/google/android/gms/drive/DrivePreferencesApi$FileUploadPreferencesResult;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/zzahq$zza;->zzaMa:Lcom/google/android/gms/internal/zzahq;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzagh;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzahq$zza;->zzaFq:Lcom/google/android/gms/internal/zzzv$zzb;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzahq;Lcom/google/android/gms/internal/zzzv$zzb;Lcom/google/android/gms/internal/zzahq$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzahq$zza;-><init>(Lcom/google/android/gms/internal/zzahq;Lcom/google/android/gms/internal/zzzv$zzb;)V

    return-void
.end method


# virtual methods
.method public onError(Lcom/google/android/gms/common/api/Status;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzahq$zza;->zzaFq:Lcom/google/android/gms/internal/zzzv$zzb;

    new-instance v1, Lcom/google/android/gms/internal/zzahq$zzb;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzahq$zza;->zzaMa:Lcom/google/android/gms/internal/zzahq;

    invoke-direct {v1, v2, p1, v3, v3}, Lcom/google/android/gms/internal/zzahq$zzb;-><init>(Lcom/google/android/gms/internal/zzahq;Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/FileUploadPreferences;Lcom/google/android/gms/internal/zzahq$1;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzzv$zzb;->setResult(Ljava/lang/Object;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzaiw;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzahq$zza;->zzaFq:Lcom/google/android/gms/internal/zzzv$zzb;

    new-instance v1, Lcom/google/android/gms/internal/zzahq$zzb;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzahq$zza;->zzaMa:Lcom/google/android/gms/internal/zzahq;

    sget-object v3, Lcom/google/android/gms/common/api/Status;->zzayh:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaiw;->zzAq()Lcom/google/android/gms/internal/zzahy;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/zzahq$zzb;-><init>(Lcom/google/android/gms/internal/zzahq;Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/FileUploadPreferences;Lcom/google/android/gms/internal/zzahq$1;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzzv$zzb;->setResult(Ljava/lang/Object;)V

    return-void
.end method
