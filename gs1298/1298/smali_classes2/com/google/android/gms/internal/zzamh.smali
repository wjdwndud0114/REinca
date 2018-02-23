.class public Lcom/google/android/gms/internal/zzamh;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzamh;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mIndex:I

.field final mVersionCode:I

.field final zzaPr:Ljava/lang/String;

.field final zzaPs:Z

.field final zzaPt:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzami;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzami;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzamh;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;IZI)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzamh;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzamh;->zzaPr:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/internal/zzamh;->mIndex:I

    iput-boolean p4, p0, Lcom/google/android/gms/internal/zzamh;->zzaPs:Z

    iput p5, p0, Lcom/google/android/gms/internal/zzamh;->zzaPt:I

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzami;->zza(Lcom/google/android/gms/internal/zzamh;Landroid/os/Parcel;I)V

    return-void
.end method
