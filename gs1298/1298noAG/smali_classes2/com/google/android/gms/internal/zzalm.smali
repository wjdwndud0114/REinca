.class public Lcom/google/android/gms/internal/zzalm;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzalm;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mName:Ljava/lang/String;

.field final mVersionCode:I

.field final zzaPm:Z

.field final zzaPn:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzaln;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzaln;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzalm;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IZLjava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzalm;->mVersionCode:I

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzalm;->zzaPm:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/zzalm;->mName:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/zzalm;->zzaPn:Z

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzaln;->zza(Lcom/google/android/gms/internal/zzalm;Landroid/os/Parcel;I)V

    return-void
.end method
