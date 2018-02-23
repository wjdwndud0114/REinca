.class public Lcom/google/android/gms/drive/metadata/internal/zzo;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/drive/metadata/internal/zzo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mVersionCode:I

.field final zzaJv:Ljava/lang/String;

.field final zzaJw:J

.field final zzaJx:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/metadata/internal/zzp;

    invoke-direct {v0}, Lcom/google/android/gms/drive/metadata/internal/zzp;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/metadata/internal/zzo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;JI)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/drive/metadata/internal/zzo;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/drive/metadata/internal/zzo;->zzaJv:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/drive/metadata/internal/zzo;->zzaJw:J

    iput p5, p0, Lcom/google/android/gms/drive/metadata/internal/zzo;->zzaJx:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JI)V
    .locals 8

    const/4 v2, 0x1

    move-object v1, p0

    move-object v3, p1

    move-wide v4, p2

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/drive/metadata/internal/zzo;-><init>(ILjava/lang/String;JI)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/metadata/internal/zzp;->zza(Lcom/google/android/gms/drive/metadata/internal/zzo;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzL(J)Lcom/google/android/gms/drive/DriveId;
    .locals 7

    new-instance v0, Lcom/google/android/gms/drive/DriveId;

    iget-object v1, p0, Lcom/google/android/gms/drive/metadata/internal/zzo;->zzaJv:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/gms/drive/metadata/internal/zzo;->zzaJw:J

    iget v6, p0, Lcom/google/android/gms/drive/metadata/internal/zzo;->zzaJx:I

    move-wide v4, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/drive/DriveId;-><init>(Ljava/lang/String;JJI)V

    return-object v0
.end method
