.class public Lcom/google/android/gms/internal/zzava;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzava;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final description:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field final versionCode:I

.field private final zzbwK:B

.field private final zzbwM:Lcom/google/android/gms/internal/zzaun;

.field private final zzbwN:Lcom/google/android/gms/internal/zzauo;

.field private final zzbwO:Lcom/google/android/gms/internal/zzaup;

.field private final zzbwR:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzavb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzavb;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzava;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;BBLandroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzava;->versionCode:I

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzac;->zzdv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzava;->name:Ljava/lang/String;

    invoke-static {p3}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzava;->description:Ljava/lang/String;

    iput-byte p4, p0, Lcom/google/android/gms/internal/zzava;->zzbwK:B

    iput-byte p5, p0, Lcom/google/android/gms/internal/zzava;->zzbwR:B

    invoke-static {p6}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p6}, Lcom/google/android/gms/internal/zzaun$zza;->zzeu(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzaun;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzava;->zzbwM:Lcom/google/android/gms/internal/zzaun;

    invoke-static {p7}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p7}, Lcom/google/android/gms/internal/zzauo$zza;->zzev(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzauo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzava;->zzbwN:Lcom/google/android/gms/internal/zzauo;

    invoke-static {p8}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p8}, Lcom/google/android/gms/internal/zzaup$zza;->zzew(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzaup;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzava;->zzbwO:Lcom/google/android/gms/internal/zzaup;

    return-void
.end method


# virtual methods
.method public getCallbackBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzava;->zzbwO:Lcom/google/android/gms/internal/zzaup;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzava;->zzbwO:Lcom/google/android/gms/internal/zzaup;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzaup;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzava;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzava;->name:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzavb;->zza(Lcom/google/android/gms/internal/zzava;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzMK()B
    .locals 1

    iget-byte v0, p0, Lcom/google/android/gms/internal/zzava;->zzbwK:B

    return v0
.end method

.method public zzMP()B
    .locals 1

    iget-byte v0, p0, Lcom/google/android/gms/internal/zzava;->zzbwR:B

    return v0
.end method

.method public zzMQ()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzava;->zzbwM:Lcom/google/android/gms/internal/zzaun;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzava;->zzbwM:Lcom/google/android/gms/internal/zzaun;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzaun;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method

.method public zzMR()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzava;->zzbwN:Lcom/google/android/gms/internal/zzauo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzava;->zzbwN:Lcom/google/android/gms/internal/zzauo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzauo;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method
