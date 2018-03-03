.class public Lcom/google/android/gms/internal/zzajn;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzajn;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mVersionCode:I

.field final zzaMU:Lcom/google/android/gms/internal/zzakb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzajo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzajo;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzajn;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/internal/zzakb;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzajn;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzajn;->zzaMU:Lcom/google/android/gms/internal/zzakb;

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzajo;->zza(Lcom/google/android/gms/internal/zzajn;Landroid/os/Parcel;I)V

    return-void
.end method
