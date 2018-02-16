.class abstract Lcom/google/android/gms/internal/zzaho$zzd;
.super Lcom/google/android/gms/internal/zzahj;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzaho;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "zzd"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzahj",
        "<",
        "Lcom/google/android/gms/drive/DriveFolder$DriveFileResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzahj;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method public zzP(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/drive/DriveFolder$DriveFileResult;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzaho$zzc;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/zzaho$zzc;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/DriveFile;)V

    return-object v0
.end method

.method public synthetic zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzaho$zzd;->zzP(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/drive/DriveFolder$DriveFileResult;

    move-result-object v0

    return-object v0
.end method
