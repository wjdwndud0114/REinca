.class public final Lcom/google/android/gms/nearby/messages/internal/zzai;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/nearby/messages/internal/zzai;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mVersionCode:I

.field public final zzaIj:Landroid/app/PendingIntent;

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

.field public final zzbyv:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final zzbyz:Lcom/google/android/gms/nearby/messages/internal/zzn;

.field public final zzbzd:Lcom/google/android/gms/nearby/messages/internal/zzm;

.field public final zzbzf:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/nearby/messages/internal/zzaj;

    invoke-direct {v0}, Lcom/google/android/gms/nearby/messages/internal/zzaj;-><init>()V

    sput-object v0, Lcom/google/android/gms/nearby/messages/internal/zzai;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILandroid/os/IBinder;Landroid/os/IBinder;Landroid/app/PendingIntent;ILjava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/nearby/messages/internal/ClientAppContext;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/nearby/messages/internal/zzai;->mVersionCode:I

    invoke-static {p2}, Lcom/google/android/gms/nearby/messages/internal/zzm$zza;->zzeC(Landroid/os/IBinder;)Lcom/google/android/gms/nearby/messages/internal/zzm;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/zzai;->zzbzd:Lcom/google/android/gms/nearby/messages/internal/zzm;

    invoke-static {p3}, Lcom/google/android/gms/nearby/messages/internal/zzn$zza;->zzeD(Landroid/os/IBinder;)Lcom/google/android/gms/nearby/messages/internal/zzn;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/zzai;->zzbyz:Lcom/google/android/gms/nearby/messages/internal/zzn;

    iput-object p4, p0, Lcom/google/android/gms/nearby/messages/internal/zzai;->zzaIj:Landroid/app/PendingIntent;

    iput p5, p0, Lcom/google/android/gms/nearby/messages/internal/zzai;->zzbzf:I

    iput-object p6, p0, Lcom/google/android/gms/nearby/messages/internal/zzai;->zzbxx:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/nearby/messages/internal/zzai;->zzbyv:Ljava/lang/String;

    iput-boolean p8, p0, Lcom/google/android/gms/nearby/messages/internal/zzai;->zzbxy:Z

    invoke-static {p9, p7, p6, p8}, Lcom/google/android/gms/nearby/messages/internal/ClientAppContext;->zza(Lcom/google/android/gms/nearby/messages/internal/ClientAppContext;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/gms/nearby/messages/internal/ClientAppContext;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/zzai;->zzbyA:Lcom/google/android/gms/nearby/messages/internal/ClientAppContext;

    return-void
.end method

.method public constructor <init>(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/PendingIntent;I)V
    .locals 10
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v8, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v7, v6

    move-object v9, v6

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/nearby/messages/internal/zzai;-><init>(ILandroid/os/IBinder;Landroid/os/IBinder;Landroid/app/PendingIntent;ILjava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/nearby/messages/internal/ClientAppContext;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/nearby/messages/internal/zzaj;->zza(Lcom/google/android/gms/nearby/messages/internal/zzai;Landroid/os/Parcel;I)V

    return-void
.end method

.method zzNi()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/zzai;->zzbyz:Lcom/google/android/gms/nearby/messages/internal/zzn;

    invoke-interface {v0}, Lcom/google/android/gms/nearby/messages/internal/zzn;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method zzNo()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/zzai;->zzbzd:Lcom/google/android/gms/nearby/messages/internal/zzm;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/zzai;->zzbzd:Lcom/google/android/gms/nearby/messages/internal/zzm;

    invoke-interface {v0}, Lcom/google/android/gms/nearby/messages/internal/zzm;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method
