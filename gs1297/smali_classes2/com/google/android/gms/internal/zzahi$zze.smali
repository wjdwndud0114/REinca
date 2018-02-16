.class Lcom/google/android/gms/internal/zzahi$zze;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/drive/DriveApi$DriveIdResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzahi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zze"
.end annotation


# instance fields
.field private final zzaJj:Lcom/google/android/gms/drive/DriveId;

.field private final zzahq:Lcom/google/android/gms/common/api/Status;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/DriveId;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzahi$zze;->zzahq:Lcom/google/android/gms/common/api/Status;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzahi$zze;->zzaJj:Lcom/google/android/gms/drive/DriveId;

    return-void
.end method


# virtual methods
.method public getDriveId()Lcom/google/android/gms/drive/DriveId;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzahi$zze;->zzaJj:Lcom/google/android/gms/drive/DriveId;

    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzahi$zze;->zzahq:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
