.class final Lcom/google/android/gms/internal/zzsf$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzsf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/internal/zzsf;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzsf$1;->zzw(Landroid/os/Parcel;)Lcom/google/android/gms/internal/zzsf;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzsf$1;->zzaF(I)[Lcom/google/android/gms/internal/zzsf;

    move-result-object v0

    return-object v0
.end method

.method public zzaF(I)[Lcom/google/android/gms/internal/zzsf;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-array v0, p1, [Lcom/google/android/gms/internal/zzsf;

    return-object v0
.end method

.method public zzw(Landroid/os/Parcel;)Lcom/google/android/gms/internal/zzsf;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzsf;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzsf;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method
