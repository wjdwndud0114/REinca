.class public Lcom/google/android/gms/drive/zzc;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/drive/zzc;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mVersionCode:I

.field final zzaCS:Landroid/os/ParcelFileDescriptor;

.field final zzaJh:I

.field final zzaJi:I

.field final zzaJj:Lcom/google/android/gms/drive/DriveId;

.field final zzaJk:Z

.field final zzxq:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/zzd;

    invoke-direct {v0}, Lcom/google/android/gms/drive/zzd;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/zzc;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILandroid/os/ParcelFileDescriptor;IILcom/google/android/gms/drive/DriveId;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/drive/zzc;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/drive/zzc;->zzaCS:Landroid/os/ParcelFileDescriptor;

    iput p3, p0, Lcom/google/android/gms/drive/zzc;->zzaJh:I

    iput p4, p0, Lcom/google/android/gms/drive/zzc;->zzaJi:I

    iput-object p5, p0, Lcom/google/android/gms/drive/zzc;->zzaJj:Lcom/google/android/gms/drive/DriveId;

    iput-boolean p6, p0, Lcom/google/android/gms/drive/zzc;->zzaJk:Z

    iput-object p7, p0, Lcom/google/android/gms/drive/zzc;->zzxq:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDriveId()Lcom/google/android/gms/drive/DriveId;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/drive/zzc;->zzaJj:Lcom/google/android/gms/drive/DriveId;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/google/android/gms/drive/zzc;->zzaCS:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    return-object v0
.end method

.method public getMode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/drive/zzc;->zzaJi:I

    return v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 2

    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/google/android/gms/drive/zzc;->zzaCS:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    return-object v0
.end method

.method public getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/drive/zzc;->zzaCS:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method public getRequestId()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/drive/zzc;->zzaJh:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/zzd;->zza(Lcom/google/android/gms/drive/zzc;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzzz()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/drive/zzc;->zzaJk:Z

    return v0
.end method
