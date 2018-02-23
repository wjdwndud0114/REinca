.class public Lcom/google/android/gms/internal/zzais;
.super Lcom/google/android/gms/drive/zzr;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzais;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mVersionCode:I

.field final zzaMB:Lcom/google/android/gms/common/data/DataHolder;

.field final zzaMC:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/drive/DriveId;",
            ">;"
        }
    .end annotation
.end field

.field final zzaMD:Lcom/google/android/gms/drive/zza;

.field final zzaME:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzait;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzait;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzais;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/common/data/DataHolder;Ljava/util/List;Lcom/google/android/gms/drive/zza;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/gms/common/data/DataHolder;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/drive/DriveId;",
            ">;",
            "Lcom/google/android/gms/drive/zza;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/drive/zzr;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzais;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzais;->zzaMB:Lcom/google/android/gms/common/data/DataHolder;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzais;->zzaMC:Ljava/util/List;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzais;->zzaMD:Lcom/google/android/gms/drive/zza;

    iput-boolean p5, p0, Lcom/google/android/gms/internal/zzais;->zzaME:Z

    return-void
.end method


# virtual methods
.method protected zzK(Landroid/os/Parcel;I)V
    .locals 1

    or-int/lit8 v0, p2, 0x1

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/zzait;->zza(Lcom/google/android/gms/internal/zzais;Landroid/os/Parcel;I)V

    return-void
.end method
