.class public Lcom/google/android/gms/internal/zzaus;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzaus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final description:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final timeoutMillis:J

.field final versionCode:I

.field private final zzbwK:B

.field private final zzbwL:Lcom/google/android/gms/internal/zzauj;

.field private final zzbwM:Lcom/google/android/gms/internal/zzaun;

.field private final zzbwN:Lcom/google/android/gms/internal/zzauo;

.field private final zzbwO:Lcom/google/android/gms/internal/zzaup;

.field private final zzbwP:Ljava/lang/String;

.field private final zzbwQ:B

.field private final zzbwR:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzaut;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzaut;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzaus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/internal/zzauj;Ljava/lang/String;Ljava/lang/String;BJLjava/lang/String;BBLandroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzaus;->versionCode:I

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzauj;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaus;->zzbwL:Lcom/google/android/gms/internal/zzauj;

    invoke-static {p3}, Lcom/google/android/gms/common/internal/zzac;->zzdv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaus;->name:Ljava/lang/String;

    invoke-static {p4}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaus;->description:Ljava/lang/String;

    iput-byte p5, p0, Lcom/google/android/gms/internal/zzaus;->zzbwK:B

    iput-wide p6, p0, Lcom/google/android/gms/internal/zzaus;->timeoutMillis:J

    iput-byte p9, p0, Lcom/google/android/gms/internal/zzaus;->zzbwQ:B

    iput-byte p10, p0, Lcom/google/android/gms/internal/zzaus;->zzbwR:B

    iput-object p8, p0, Lcom/google/android/gms/internal/zzaus;->zzbwP:Ljava/lang/String;

    invoke-static {p11}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p11}, Lcom/google/android/gms/internal/zzaun$zza;->zzeu(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzaun;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaus;->zzbwM:Lcom/google/android/gms/internal/zzaun;

    invoke-static {p12}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p12}, Lcom/google/android/gms/internal/zzauo$zza;->zzev(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzauo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaus;->zzbwN:Lcom/google/android/gms/internal/zzauo;

    invoke-static {p13}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p13}, Lcom/google/android/gms/internal/zzaup$zza;->zzew(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzaup;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaus;->zzbwO:Lcom/google/android/gms/internal/zzaup;

    return-void
.end method


# virtual methods
.method public getCallbackBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaus;->zzbwO:Lcom/google/android/gms/internal/zzaup;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaus;->zzbwO:Lcom/google/android/gms/internal/zzaup;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzaup;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaus;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaus;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaus;->zzbwP:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzaut;->zza(Lcom/google/android/gms/internal/zzaus;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzMK()B
    .locals 1

    iget-byte v0, p0, Lcom/google/android/gms/internal/zzaus;->zzbwK:B

    return v0
.end method

.method public zzMM()Lcom/google/android/gms/internal/zzauj;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaus;->zzbwL:Lcom/google/android/gms/internal/zzauj;

    return-object v0
.end method

.method public zzMN()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzaus;->timeoutMillis:J

    return-wide v0
.end method

.method public zzMO()B
    .locals 1

    iget-byte v0, p0, Lcom/google/android/gms/internal/zzaus;->zzbwQ:B

    return v0
.end method

.method public zzMP()B
    .locals 1

    iget-byte v0, p0, Lcom/google/android/gms/internal/zzaus;->zzbwR:B

    return v0
.end method

.method public zzMQ()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaus;->zzbwM:Lcom/google/android/gms/internal/zzaun;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaus;->zzbwM:Lcom/google/android/gms/internal/zzaun;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzaun;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method

.method public zzMR()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaus;->zzbwN:Lcom/google/android/gms/internal/zzauo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaus;->zzbwN:Lcom/google/android/gms/internal/zzauo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzauo;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method
