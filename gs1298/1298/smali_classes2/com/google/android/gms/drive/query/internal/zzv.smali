.class public Lcom/google/android/gms/drive/query/internal/zzv;
.super Lcom/google/android/gms/drive/query/internal/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/drive/query/internal/zzv;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mVersionCode:I

.field final zzaPc:Lcom/google/android/gms/drive/query/internal/FilterHolder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/query/internal/zzw;

    invoke-direct {v0}, Lcom/google/android/gms/drive/query/internal/zzw;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/query/internal/zzv;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/drive/query/internal/FilterHolder;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/drive/query/internal/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/drive/query/internal/zzv;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/drive/query/internal/zzv;->zzaPc:Lcom/google/android/gms/drive/query/internal/FilterHolder;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/drive/query/Filter;)V
    .locals 2

    const/4 v0, 0x1

    new-instance v1, Lcom/google/android/gms/drive/query/internal/FilterHolder;

    invoke-direct {v1, p1}, Lcom/google/android/gms/drive/query/internal/FilterHolder;-><init>(Lcom/google/android/gms/drive/query/Filter;)V

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/drive/query/internal/zzv;-><init>(ILcom/google/android/gms/drive/query/internal/FilterHolder;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/query/internal/zzw;->zza(Lcom/google/android/gms/drive/query/internal/zzv;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/drive/query/internal/zzj;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/drive/query/internal/zzj",
            "<TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/zzv;->zzaPc:Lcom/google/android/gms/drive/query/internal/FilterHolder;

    invoke-virtual {v0}, Lcom/google/android/gms/drive/query/internal/FilterHolder;->getFilter()Lcom/google/android/gms/drive/query/Filter;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/drive/query/Filter;->zza(Lcom/google/android/gms/drive/query/internal/zzj;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/gms/drive/query/internal/zzj;->zzz(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
