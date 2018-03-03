.class public final Lcom/google/android/gms/nearby/messages/internal/zzag;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/nearby/messages/internal/zzag;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mVersionCode:I

.field public final zzbxx:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final zzbxy:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final zzbyA:Lcom/google/android/gms/nearby/messages/internal/ClientAppContext;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final zzbyX:Lcom/google/android/gms/nearby/messages/internal/zzv;

.field public final zzbyv:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final zzbyz:Lcom/google/android/gms/nearby/messages/internal/zzn;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/nearby/messages/internal/zzah;

    invoke-direct {v0}, Lcom/google/android/gms/nearby/messages/internal/zzah;-><init>()V

    sput-object v0, Lcom/google/android/gms/nearby/messages/internal/zzag;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/nearby/messages/internal/zzv;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/nearby/messages/internal/ClientAppContext;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/nearby/messages/internal/zzag;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/nearby/messages/internal/zzag;->zzbyX:Lcom/google/android/gms/nearby/messages/internal/zzv;

    invoke-static {p3}, Lcom/google/android/gms/nearby/messages/internal/zzn$zza;->zzeD(Landroid/os/IBinder;)Lcom/google/android/gms/nearby/messages/internal/zzn;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/zzag;->zzbyz:Lcom/google/android/gms/nearby/messages/internal/zzn;

    iput-object p4, p0, Lcom/google/android/gms/nearby/messages/internal/zzag;->zzbxx:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/nearby/messages/internal/zzag;->zzbyv:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/google/android/gms/nearby/messages/internal/zzag;->zzbxy:Z

    invoke-static {p7, p5, p4, p6}, Lcom/google/android/gms/nearby/messages/internal/ClientAppContext;->zza(Lcom/google/android/gms/nearby/messages/internal/ClientAppContext;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/gms/nearby/messages/internal/ClientAppContext;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/zzag;->zzbyA:Lcom/google/android/gms/nearby/messages/internal/ClientAppContext;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/nearby/messages/internal/zzv;Landroid/os/IBinder;Lcom/google/android/gms/nearby/messages/internal/ClientAppContext;)V
    .locals 8

    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, v4

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/nearby/messages/internal/zzag;-><init>(ILcom/google/android/gms/nearby/messages/internal/zzv;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/nearby/messages/internal/ClientAppContext;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/nearby/messages/internal/zzah;->zza(Lcom/google/android/gms/nearby/messages/internal/zzag;Landroid/os/Parcel;I)V

    return-void
.end method

.method zzNi()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/zzag;->zzbyz:Lcom/google/android/gms/nearby/messages/internal/zzn;

    invoke-interface {v0}, Lcom/google/android/gms/nearby/messages/internal/zzn;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method
