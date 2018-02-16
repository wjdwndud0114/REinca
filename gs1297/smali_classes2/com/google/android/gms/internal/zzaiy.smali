.class public Lcom/google/android/gms/internal/zzaiy;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzaiy;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzaMH:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/drive/zze;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mVersionCode:I

.field final zzJh:I

.field final zzaMI:J

.field final zzaMJ:J

.field final zzaMK:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/drive/zze;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzaiy;->zzaMH:Ljava/util/List;

    new-instance v0, Lcom/google/android/gms/internal/zzaiz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzaiz;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzaiy;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IJJILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJI",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/drive/zze;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzaiy;->mVersionCode:I

    iput-wide p2, p0, Lcom/google/android/gms/internal/zzaiy;->zzaMI:J

    iput-wide p4, p0, Lcom/google/android/gms/internal/zzaiy;->zzaMJ:J

    iput p6, p0, Lcom/google/android/gms/internal/zzaiy;->zzJh:I

    iput-object p7, p0, Lcom/google/android/gms/internal/zzaiy;->zzaMK:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzaiz;->zza(Lcom/google/android/gms/internal/zzaiy;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzAr()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzaiy;->zzaMI:J

    return-wide v0
.end method

.method public zzAs()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzaiy;->zzaMJ:J

    return-wide v0
.end method
