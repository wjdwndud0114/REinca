.class public Lcom/google/android/gms/internal/zzamp;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzamp;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mVersionCode:I

.field final zzaPL:Lcom/google/android/gms/common/data/DataHolder;

.field final zzaPM:Z

.field final zzaPN:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final zzaPO:Lcom/google/android/gms/internal/zzamd;

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

    new-instance v0, Lcom/google/android/gms/internal/zzamq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzamq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzamp;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/util/List;Lcom/google/android/gms/common/data/DataHolder;ZLjava/util/List;Lcom/google/android/gms/internal/zzamd;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzamn;",
            ">;",
            "Lcom/google/android/gms/common/data/DataHolder;",
            "Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/internal/zzamd;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzamp;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzamp;->zztf:Ljava/util/List;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzamp;->zzaPL:Lcom/google/android/gms/common/data/DataHolder;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/zzamp;->zzaPM:Z

    iput-object p5, p0, Lcom/google/android/gms/internal/zzamp;->zzaPN:Ljava/util/List;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzamp;->zzaPO:Lcom/google/android/gms/internal/zzamd;

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzamq;->zza(Lcom/google/android/gms/internal/zzamp;Landroid/os/Parcel;I)V

    return-void
.end method
