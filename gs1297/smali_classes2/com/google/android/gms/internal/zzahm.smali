.class public Lcom/google/android/gms/internal/zzahm;
.super Lcom/google/android/gms/internal/zzahr;

# interfaces
.implements Lcom/google/android/gms/drive/DriveFile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzahm$zza;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/gms/drive/DriveId;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzahr;-><init>(Lcom/google/android/gms/drive/DriveId;)V

    return-void
.end method

.method private static zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;)Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzahm$zza;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzr(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzaaz;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzahm$zza;-><init>(Lcom/google/android/gms/internal/zzaaz;)V

    goto :goto_0
.end method


# virtual methods
.method public open(Lcom/google/android/gms/common/api/GoogleApiClient;ILcom/google/android/gms/drive/DriveFile$DownloadProgressListener;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "I",
            "Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/drive/DriveApi$DriveContentsResult;",
            ">;"
        }
    .end annotation

    const/high16 v0, 0x10000000

    if-eq p2, v0, :cond_0

    const/high16 v0, 0x20000000

    if-eq p2, v0, :cond_0

    const/high16 v0, 0x30000000

    if-eq p2, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid mode provided."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p1, p3}, Lcom/google/android/gms/internal/zzahm;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;)Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzahm$1;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/google/android/gms/internal/zzahm$1;-><init>(Lcom/google/android/gms/internal/zzahm;Lcom/google/android/gms/common/api/GoogleApiClient;ILcom/google/android/gms/drive/DriveFile$DownloadProgressListener;)V

    invoke-virtual {p1, v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->zza(Lcom/google/android/gms/internal/zzzv$zza;)Lcom/google/android/gms/internal/zzzv$zza;

    move-result-object v0

    return-object v0
.end method
