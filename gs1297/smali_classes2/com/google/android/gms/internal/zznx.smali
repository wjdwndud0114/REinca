.class public final Lcom/google/android/gms/internal/zznx;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzmb;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zznx;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final versionCode:I

.field public final zzRd:Lcom/google/android/gms/internal/zzdy;

.field public final zzvd:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzny;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzny;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zznx;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILcom/google/android/gms/internal/zzdy;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zznx;->versionCode:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zznx;->zzRd:Lcom/google/android/gms/internal/zzdy;

    iput-object p3, p0, Lcom/google/android/gms/internal/zznx;->zzvd:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzdy;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/internal/zznx;-><init>(ILcom/google/android/gms/internal/zzdy;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzny;->zza(Lcom/google/android/gms/internal/zznx;Landroid/os/Parcel;I)V

    return-void
.end method
