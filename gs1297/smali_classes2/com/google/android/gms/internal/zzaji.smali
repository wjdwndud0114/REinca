.class public Lcom/google/android/gms/internal/zzaji;
.super Lcom/google/android/gms/drive/zzr;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzaji;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mVersionCode:I

.field final zzaMT:Lcom/google/android/gms/common/data/DataHolder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzajj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzajj;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzaji;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/common/data/DataHolder;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/drive/zzr;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzaji;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzaji;->zzaMT:Lcom/google/android/gms/common/data/DataHolder;

    return-void
.end method


# virtual methods
.method public zzAw()Lcom/google/android/gms/common/data/DataHolder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaji;->zzaMT:Lcom/google/android/gms/common/data/DataHolder;

    return-object v0
.end method

.method protected zzK(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzajj;->zza(Lcom/google/android/gms/internal/zzaji;Landroid/os/Parcel;I)V

    return-void
.end method
