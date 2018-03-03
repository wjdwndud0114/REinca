.class abstract Lcom/google/android/gms/internal/zzahr$zzd;
.super Lcom/google/android/gms/internal/zzahj;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzahr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "zzd"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzahj",
        "<",
        "Lcom/google/android/gms/drive/DriveResource$MetadataResult;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzahr;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzahj;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzahr;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzahr$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzahr$zzd;-><init>(Lcom/google/android/gms/internal/zzahr;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method public zzS(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/drive/DriveResource$MetadataResult;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzahr$zzc;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/zzahr$zzc;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/Metadata;)V

    return-object v0
.end method

.method public synthetic zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzahr$zzd;->zzS(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/drive/DriveResource$MetadataResult;

    move-result-object v0

    return-object v0
.end method
