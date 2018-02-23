.class public Lcom/google/android/gms/internal/zzaiq;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzaiq;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mVersionCode:I

.field final zzaJj:Lcom/google/android/gms/drive/DriveId;

.field final zzaMA:Ljava/lang/String;

.field final zzaMw:Z

.field final zzaMx:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final zzaMy:Z

.field final zzaMz:Lcom/google/android/gms/common/data/DataHolder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzair;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzair;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzaiq;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/drive/DriveId;ZLjava/util/List;ZLcom/google/android/gms/common/data/DataHolder;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/gms/drive/DriveId;",
            "Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/google/android/gms/common/data/DataHolder;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzaiq;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzaiq;->zzaJj:Lcom/google/android/gms/drive/DriveId;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/zzaiq;->zzaMw:Z

    iput-object p4, p0, Lcom/google/android/gms/internal/zzaiq;->zzaMx:Ljava/util/List;

    iput-boolean p5, p0, Lcom/google/android/gms/internal/zzaiq;->zzaMy:Z

    iput-object p6, p0, Lcom/google/android/gms/internal/zzaiq;->zzaMz:Lcom/google/android/gms/common/data/DataHolder;

    iput-object p7, p0, Lcom/google/android/gms/internal/zzaiq;->zzaMA:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzair;->zza(Lcom/google/android/gms/internal/zzaiq;Landroid/os/Parcel;I)V

    return-void
.end method
