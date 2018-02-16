.class public final Lcom/google/android/gms/nearby/messages/internal/zzab;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/nearby/messages/internal/zzab;",
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

.field public final zzbyY:Lcom/google/android/gms/nearby/messages/Strategy;

.field public final zzbyZ:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final zzbyv:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final zzbyz:Lcom/google/android/gms/nearby/messages/internal/zzn;

.field public final zzbza:Lcom/google/android/gms/nearby/messages/internal/zzp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/nearby/messages/internal/zzac;

    invoke-direct {v0}, Lcom/google/android/gms/nearby/messages/internal/zzac;-><init>()V

    sput-object v0, Lcom/google/android/gms/nearby/messages/internal/zzab;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/nearby/messages/internal/zzv;Lcom/google/android/gms/nearby/messages/Strategy;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/IBinder;ZLcom/google/android/gms/nearby/messages/internal/ClientAppContext;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/nearby/messages/internal/zzab;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/nearby/messages/internal/zzab;->zzbyX:Lcom/google/android/gms/nearby/messages/internal/zzv;

    iput-object p3, p0, Lcom/google/android/gms/nearby/messages/internal/zzab;->zzbyY:Lcom/google/android/gms/nearby/messages/Strategy;

    invoke-static {p4}, Lcom/google/android/gms/nearby/messages/internal/zzn$zza;->zzeD(Landroid/os/IBinder;)Lcom/google/android/gms/nearby/messages/internal/zzn;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/zzab;->zzbyz:Lcom/google/android/gms/nearby/messages/internal/zzn;

    iput-object p5, p0, Lcom/google/android/gms/nearby/messages/internal/zzab;->zzbxx:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/nearby/messages/internal/zzab;->zzbyv:Ljava/lang/String;

    iput-boolean p7, p0, Lcom/google/android/gms/nearby/messages/internal/zzab;->zzbyZ:Z

    if-nez p8, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/zzab;->zzbza:Lcom/google/android/gms/nearby/messages/internal/zzp;

    iput-boolean p9, p0, Lcom/google/android/gms/nearby/messages/internal/zzab;->zzbxy:Z

    invoke-static {p10, p6, p5, p9}, Lcom/google/android/gms/nearby/messages/internal/ClientAppContext;->zza(Lcom/google/android/gms/nearby/messages/internal/ClientAppContext;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/gms/nearby/messages/internal/ClientAppContext;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/zzab;->zzbyA:Lcom/google/android/gms/nearby/messages/internal/ClientAppContext;

    return-void

    :cond_0
    invoke-static {p8}, Lcom/google/android/gms/nearby/messages/internal/zzp$zza;->zzeF(Landroid/os/IBinder;)Lcom/google/android/gms/nearby/messages/internal/zzp;

    move-result-object v0

    goto :goto_0
.end method

.method constructor <init>(Lcom/google/android/gms/nearby/messages/internal/zzv;Lcom/google/android/gms/nearby/messages/Strategy;Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 11

    const/4 v7, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x2

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, v5

    move-object v8, p4

    move v9, v7

    move-object v10, v5

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/nearby/messages/internal/zzab;-><init>(ILcom/google/android/gms/nearby/messages/internal/zzv;Lcom/google/android/gms/nearby/messages/Strategy;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/IBinder;ZLcom/google/android/gms/nearby/messages/internal/ClientAppContext;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/nearby/messages/internal/zzac;->zza(Lcom/google/android/gms/nearby/messages/internal/zzab;Landroid/os/Parcel;I)V

    return-void
.end method

.method zzNi()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/zzab;->zzbyz:Lcom/google/android/gms/nearby/messages/internal/zzn;

    invoke-interface {v0}, Lcom/google/android/gms/nearby/messages/internal/zzn;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method zzNm()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/zzab;->zzbza:Lcom/google/android/gms/nearby/messages/internal/zzp;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/zzab;->zzbza:Lcom/google/android/gms/nearby/messages/internal/zzp;

    invoke-interface {v0}, Lcom/google/android/gms/nearby/messages/internal/zzp;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method
