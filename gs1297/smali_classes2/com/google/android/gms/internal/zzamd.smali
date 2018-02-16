.class public Lcom/google/android/gms/internal/zzamd;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzamd;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mVersionCode:I

.field final zzavX:J

.field final zztf:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzamn;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzame;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzame;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzamd;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IJLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzamn;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzamd;->mVersionCode:I

    iput-wide p2, p0, Lcom/google/android/gms/internal/zzamd;->zzavX:J

    iput-object p4, p0, Lcom/google/android/gms/internal/zzamd;->zztf:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzame;->zza(Lcom/google/android/gms/internal/zzamd;Landroid/os/Parcel;I)V

    return-void
.end method
