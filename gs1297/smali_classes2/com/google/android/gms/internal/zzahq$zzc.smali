.class abstract Lcom/google/android/gms/internal/zzahq$zzc;
.super Lcom/google/android/gms/internal/zzahj;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzahq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "zzc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzahj",
        "<",
        "Lcom/google/android/gms/drive/DrivePreferencesApi$FileUploadPreferencesResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzaMa:Lcom/google/android/gms/internal/zzahq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzahq;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzahq$zzc;->zzaMa:Lcom/google/android/gms/internal/zzahq;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzahj;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected zzR(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/drive/DrivePreferencesApi$FileUploadPreferencesResult;
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/gms/internal/zzahq$zzb;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzahq$zzc;->zzaMa:Lcom/google/android/gms/internal/zzahq;

    invoke-direct {v0, v1, p1, v2, v2}, Lcom/google/android/gms/internal/zzahq$zzb;-><init>(Lcom/google/android/gms/internal/zzahq;Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/FileUploadPreferences;Lcom/google/android/gms/internal/zzahq$1;)V

    return-object v0
.end method

.method protected synthetic zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzahq$zzc;->zzR(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/drive/DrivePreferencesApi$FileUploadPreferencesResult;

    move-result-object v0

    return-object v0
.end method
