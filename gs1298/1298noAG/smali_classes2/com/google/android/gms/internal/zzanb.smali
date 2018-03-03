.class public Lcom/google/android/gms/internal/zzanb;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzanb;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mIndex:I

.field final mVersionCode:I

.field final zzaPW:Ljava/lang/String;

.field final zzaPX:I

.field final zzaPv:I

.field final zzaPw:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzanc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzanc;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzanb;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IIIILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzanb;->mVersionCode:I

    iput p2, p0, Lcom/google/android/gms/internal/zzanb;->mIndex:I

    iput p3, p0, Lcom/google/android/gms/internal/zzanb;->zzaPv:I

    iput p4, p0, Lcom/google/android/gms/internal/zzanb;->zzaPw:I

    iput-object p5, p0, Lcom/google/android/gms/internal/zzanb;->zzaPW:Ljava/lang/String;

    iput p6, p0, Lcom/google/android/gms/internal/zzanb;->zzaPX:I

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzanc;->zza(Lcom/google/android/gms/internal/zzanb;Landroid/os/Parcel;I)V

    return-void
.end method
