.class public Lcom/google/android/gms/internal/zzakb;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzakb;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mVersionCode:I

.field final zzaMm:I

.field final zzaMn:I

.field final zzaNa:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzakc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzakc;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzakb;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IIIZ)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzakb;->mVersionCode:I

    iput p2, p0, Lcom/google/android/gms/internal/zzakb;->zzaMm:I

    iput p3, p0, Lcom/google/android/gms/internal/zzakb;->zzaMn:I

    iput-boolean p4, p0, Lcom/google/android/gms/internal/zzakb;->zzaNa:Z

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzakc;->zza(Lcom/google/android/gms/internal/zzakb;Landroid/os/Parcel;I)V

    return-void
.end method
