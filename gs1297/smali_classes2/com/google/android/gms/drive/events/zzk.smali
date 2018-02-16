.class public Lcom/google/android/gms/drive/events/zzk;
.super Lcom/google/android/gms/drive/zzr;

# interfaces
.implements Lcom/google/android/gms/drive/events/DriveEvent;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/drive/events/zzk;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mVersionCode:I

.field final zzaKA:I

.field final zzaKz:Z

.field final zzazI:Lcom/google/android/gms/common/data/DataHolder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/events/zzl;

    invoke-direct {v0}, Lcom/google/android/gms/drive/events/zzl;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/events/zzk;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/common/data/DataHolder;ZI)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/drive/zzr;-><init>()V

    iput p1, p0, Lcom/google/android/gms/drive/events/zzk;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/drive/events/zzk;->zzazI:Lcom/google/android/gms/common/data/DataHolder;

    iput-boolean p3, p0, Lcom/google/android/gms/drive/events/zzk;->zzaKz:Z

    iput p4, p0, Lcom/google/android/gms/drive/events/zzk;->zzaKA:I

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public zzAb()Lcom/google/android/gms/common/data/DataHolder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/drive/events/zzk;->zzazI:Lcom/google/android/gms/common/data/DataHolder;

    return-object v0
.end method

.method public zzAc()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/drive/events/zzk;->zzaKz:Z

    return v0
.end method

.method public zzAd()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/drive/events/zzk;->zzaKA:I

    return v0
.end method

.method public zzK(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/events/zzl;->zza(Lcom/google/android/gms/drive/events/zzk;Landroid/os/Parcel;I)V

    return-void
.end method
