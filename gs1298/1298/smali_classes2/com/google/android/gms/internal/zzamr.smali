.class public Lcom/google/android/gms/internal/zzamr;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzamr;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mVersionCode:I

.field final zzaPP:Ljava/lang/String;

.field final zzaPQ:Ljava/lang/String;

.field final zzaPR:I

.field final zzaPS:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzams;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzams;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzamr;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzamr;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzamr;->zzaPP:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzamr;->zzaPQ:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/gms/internal/zzamr;->zzaPR:I

    iput p5, p0, Lcom/google/android/gms/internal/zzamr;->zzaPS:I

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzams;->zza(Lcom/google/android/gms/internal/zzamr;Landroid/os/Parcel;I)V

    return-void
.end method
