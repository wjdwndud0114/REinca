.class public Lcom/google/android/gms/internal/zzakn;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzakn;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mVersionCode:I

.field final zzaKO:Lcom/google/android/gms/drive/DriveId;

.field final zzaNc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/drive/DriveId;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzako;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzako;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzakn;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/drive/DriveId;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/gms/drive/DriveId;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/drive/DriveId;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzakn;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzakn;->zzaKO:Lcom/google/android/gms/drive/DriveId;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzakn;->zzaNc:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/drive/DriveId;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/drive/DriveId;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/drive/DriveId;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/internal/zzakn;-><init>(ILcom/google/android/gms/drive/DriveId;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzako;->zza(Lcom/google/android/gms/internal/zzakn;Landroid/os/Parcel;I)V

    return-void
.end method
