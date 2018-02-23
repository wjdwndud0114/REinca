.class public Lcom/google/android/gms/internal/zzajs;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzajs;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mVersionCode:I

.field final zzaMV:Landroid/os/ParcelFileDescriptor;

.field final zzaMW:Landroid/os/IBinder;

.field final zzxq:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzajt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzajt;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzajs;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILandroid/os/ParcelFileDescriptor;Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzajs;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzajs;->zzaMV:Landroid/os/ParcelFileDescriptor;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzajs;->zzaMW:Landroid/os/IBinder;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzajs;->zzxq:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    or-int/lit8 v0, p2, 0x1

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/zzajt;->zza(Lcom/google/android/gms/internal/zzajs;Landroid/os/Parcel;I)V

    return-void
.end method
