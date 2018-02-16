.class public Lcom/google/android/gms/internal/zzakj;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzakj;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mVersionCode:I

.field final zzaMG:Lcom/google/android/gms/internal/zzahy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzakk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzakk;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzakj;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/internal/zzahy;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzakj;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzakj;->zzaMG:Lcom/google/android/gms/internal/zzahy;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzahy;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/zzakj;-><init>(ILcom/google/android/gms/internal/zzahy;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzakk;->zza(Lcom/google/android/gms/internal/zzakj;Landroid/os/Parcel;I)V

    return-void
.end method
