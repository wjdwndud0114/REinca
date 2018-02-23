.class public Lcom/google/android/gms/internal/zzajg;
.super Lcom/google/android/gms/drive/zzr;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzajg;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mVersionCode:I

.field final zzaLq:Z

.field final zzaMS:Lcom/google/android/gms/common/data/DataHolder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzajh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzajh;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzajg;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/common/data/DataHolder;Z)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/drive/zzr;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzajg;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzajg;->zzaMS:Lcom/google/android/gms/common/data/DataHolder;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/zzajg;->zzaLq:Z

    return-void
.end method


# virtual methods
.method public zzAu()Lcom/google/android/gms/common/data/DataHolder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzajg;->zzaMS:Lcom/google/android/gms/common/data/DataHolder;

    return-object v0
.end method

.method public zzAv()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzajg;->zzaLq:Z

    return v0
.end method

.method protected zzK(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzajh;->zza(Lcom/google/android/gms/internal/zzajg;Landroid/os/Parcel;I)V

    return-void
.end method
