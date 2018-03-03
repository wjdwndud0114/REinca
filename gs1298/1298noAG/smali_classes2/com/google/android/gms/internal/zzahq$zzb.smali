.class Lcom/google/android/gms/internal/zzahq$zzb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/drive/DrivePreferencesApi$FileUploadPreferencesResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzahq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zzb"
.end annotation


# instance fields
.field private final zzaMc:Lcom/google/android/gms/drive/FileUploadPreferences;

.field private final zzahq:Lcom/google/android/gms/common/api/Status;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzahq;Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/FileUploadPreferences;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzahq$zzb;->zzahq:Lcom/google/android/gms/common/api/Status;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzahq$zzb;->zzaMc:Lcom/google/android/gms/drive/FileUploadPreferences;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzahq;Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/FileUploadPreferences;Lcom/google/android/gms/internal/zzahq$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzahq$zzb;-><init>(Lcom/google/android/gms/internal/zzahq;Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/FileUploadPreferences;)V

    return-void
.end method


# virtual methods
.method public getFileUploadPreferences()Lcom/google/android/gms/drive/FileUploadPreferences;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzahq$zzb;->zzaMc:Lcom/google/android/gms/drive/FileUploadPreferences;

    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzahq$zzb;->zzahq:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
