.class public Lcom/google/android/gms/internal/zzakf;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzakf;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mVersionCode:I

.field final zzaGv:I

.field final zzaJj:Lcom/google/android/gms/drive/DriveId;

.field final zzaKI:Lcom/google/android/gms/drive/events/zzp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzakg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzakg;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzakf;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/drive/DriveId;ILcom/google/android/gms/drive/events/zzp;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzakf;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzakf;->zzaJj:Lcom/google/android/gms/drive/DriveId;

    iput p3, p0, Lcom/google/android/gms/internal/zzakf;->zzaGv:I

    iput-object p4, p0, Lcom/google/android/gms/internal/zzakf;->zzaKI:Lcom/google/android/gms/drive/events/zzp;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/drive/DriveId;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/zzakf;-><init>(Lcom/google/android/gms/drive/DriveId;ILcom/google/android/gms/drive/events/zzp;)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/drive/DriveId;ILcom/google/android/gms/drive/events/zzp;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/internal/zzakf;-><init>(ILcom/google/android/gms/drive/DriveId;ILcom/google/android/gms/drive/events/zzp;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzakg;->zza(Lcom/google/android/gms/internal/zzakf;Landroid/os/Parcel;I)V

    return-void
.end method
